

//-------------Testbench -----------------//




`timescale 1ns / 1ps

`include "parameters.v"


module testbench();
  parameter HalfClkPeriod = 5;
  localparam ClkPeriod = 2*HalfClkPeriod;

  // non-VC routers still reeserve 1 dummy bit for VC.
  localparam vc_bits = (`NUM_VCS > 1) ? $clog2(`NUM_VCS) : 1;
  localparam dest_bits = $clog2(`NUM_USER_RECV_PORTS);
  localparam flit_port_width = 2 /*valid and tail bits*/+ `FLIT_DATA_WIDTH + dest_bits + vc_bits;
  localparam credit_port_width = 1 + vc_bits; // 1 valid bit
  localparam test_cycles = 20;

  reg Clk;
  reg Rst_n;

  // input regs
  reg send_flit [0:`NUM_USER_SEND_PORTS-1]; // enable sending flits
  reg [flit_port_width-1:0] flit_in [0:`NUM_USER_SEND_PORTS-1]; // send port inputs

  reg send_credit [0:`NUM_USER_RECV_PORTS-1]; // enable sending credits
  reg [credit_port_width-1:0] credit_in [0:`NUM_USER_RECV_PORTS-1]; //recv port credits

  // output wires
  wire [credit_port_width-1:0] credit_out [0:`NUM_USER_SEND_PORTS-1];
  wire [flit_port_width-1:0] flit_out [0:`NUM_USER_RECV_PORTS-1];

  reg [31:0] cycle;
  integer i;

  // packet fields
  reg is_valid;
  reg is_tail;
  reg [dest_bits-1:0] dest;
  reg [vc_bits-1:0]   vc;
  reg [`FLIT_DATA_WIDTH-1:0] data;

  // Generate Clock
  initial Clk = 0;
  always #(HalfClkPeriod) Clk = ~Clk;

  // Run simulation 
  initial begin 
    cycle = 0;
    for(i = 0; i < `NUM_USER_SEND_PORTS; i = i + 1) begin flit_in[i] = 0; send_flit[i] = 0; end
    for(i = 0; i < `NUM_USER_RECV_PORTS; i = i + 1) begin credit_in[i] = 0; send_credit[i] = 0; end
    
    $display("---- Performing Reset ----");
    Rst_n = 0; // perform reset (active low) 
    #(5*ClkPeriod+HalfClkPeriod); 
    Rst_n = 1; 


    //sending a single flit packet from router 1 to router 2
    send_flit[1] = 1'b1;
    dest = 2;
    vc = 0;
    data = 'h10;
    flit_in[1] = {1'b1 /*valid*/, 1'b1 /*tail*/, dest, vc, data};
    $display("@%3d: Injecting flit %x into send port %0d", cycle, flit_in[1], 1); 

    // send a 1-flit packet from router 3 to router 2
    send_flit[3] = 1'b1;
    dest = 2;
    vc = 0;
    data = 'hff;
    flit_in[3] = {1'b1 /*valid*/, 1'b1 /*tail*/, dest, vc, data};
    $display("@%3d: Injecting flit %x into send port %0d", cycle, flit_in[3], 3);

    //sending a 2 flits packet from router 0 to router 2
    send_flit[0] = 1'b1;
    dest = 2;
    vc = 0;
    data = 'h11;
    flit_in[0] = {1'b1 /*valid*/, 1'b0 /*tail*/, dest, vc, data};
    $display("@%3d: Injecting flit %x into send port %0d", cycle, flit_in[0], 0); 
    
    #(ClkPeriod);
    
    // sending the 2nd flit of packet
    send_flit[0] = 1'b1;
    data = 'h12;
    flit_in[0] = {1'b1 /*valid*/, 1'b1 /*tail*/, dest, vc, data};
    $display("@%3d: Injecting flit %x into send port %0d", cycle, flit_in[0], 0);
      
    #(ClkPeriod);
    
    // stop sending flits
    send_flit[0] = 1'b0;
    flit_in[0] = 1'b0; // valid bit
    // stop sending flits
    send_flit[3] = 1'b0;
    flit_in[3] = 1'b0; // valid bit
    // stop sending flits
    send_flit[1] = 1'b0;
    flit_in[1] = 1'b0; // valid bit
    
  end


  // Monitor arriving flits
  always @ (posedge Clk) begin
    cycle <= cycle + 1;
    //$display("cycle going on");
    for(i = 0; i < `NUM_USER_RECV_PORTS; i = i + 1) begin
      if(flit_out[i][flit_port_width-1]) begin // valid flit

        $display("@%3d: Ejecting flit %x at receive port %0d", cycle, flit_out[i], i);
      end
     
    end

    // terminate simulation
    if (cycle > test_cycles) begin
      $finish();
    end
  end

  // Add your code to handle flow control here (sending receiving credits)

  // Instantiate  network
  Network dut
  (.CLK(Clk)
   ,.RST_N(Rst_n)

   ,.send_ports_0_putFlit_flit_in(flit_in[0])
   ,.EN_send_ports_0_putFlit(send_flit[0])

   ,.EN_send_ports_0_getCredits(1'b1) // drain credits
   ,.send_ports_0_getCredits(credit_out[0])

   ,.send_ports_1_putFlit_flit_in(flit_in[1])
   ,.EN_send_ports_1_putFlit(send_flit[1])

   ,.EN_send_ports_1_getCredits(1'b1) // drain credits
   ,.send_ports_1_getCredits(credit_out[1])

   ,.send_ports_2_putFlit_flit_in(flit_in[2])
   ,.EN_send_ports_2_putFlit(send_flit[2])

   ,.EN_send_ports_2_getCredits(1'b1) // drain credits
   ,.send_ports_2_getCredits(credit_out[2])

   ,.send_ports_3_putFlit_flit_in(flit_in[3])
   ,.EN_send_ports_3_putFlit(send_flit[3])

   ,.EN_send_ports_3_getCredits(1'b1) // drain credits
   ,.send_ports_3_getCredits(credit_out[3])
   

   // receive ports
   //

   ,.EN_recv_ports_0_getFlit(1'b1) // drain flits
   ,.recv_ports_0_getFlit(flit_out[0])

   ,.recv_ports_0_putCredits_cr_in(credit_in[0])
   ,.EN_recv_ports_0_putCredits(send_credit[0])

   ,.EN_recv_ports_1_getFlit(1'b1) // drain flits
   ,.recv_ports_1_getFlit(flit_out[1])

   ,.recv_ports_1_putCredits_cr_in(credit_in[1])
   ,.EN_recv_ports_1_putCredits(send_credit[1])
   
   ,.EN_recv_ports_2_getFlit(1'b1) // drain flits
   ,.recv_ports_2_getFlit(flit_out[2])

   ,.recv_ports_2_putCredits_cr_in(credit_in[2])
   ,.EN_recv_ports_2_putCredits(send_credit[2])

   ,.EN_recv_ports_3_getFlit(1'b1) // drain flits
   ,.recv_ports_3_getFlit(flit_out[3])

   ,.recv_ports_3_putCredits_cr_in(credit_in[3])
   ,.EN_recv_ports_3_putCredits(send_credit[3])
   

   );


endmodule

