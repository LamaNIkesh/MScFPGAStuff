//------Network.v module
//------This module is the main module which creates instances of router and creates a mesh topology
//------all the other modules are included in this module

`ifdef BSV_ASSIGNMENT_DELAY
`else
`define BSV_ASSIGNMENT_DELAY
`endif

module Network(CLK,
		 RST_N,

		 send_ports_0_putFlit_flit_in,
		 EN_send_ports_0_putFlit,

		 EN_send_ports_0_getCredits,
		 send_ports_0_getCredits,

		 send_ports_1_putFlit_flit_in,
		 EN_send_ports_1_putFlit,

		 EN_send_ports_1_getCredits,
		 send_ports_1_getCredits,

		 send_ports_2_putFlit_flit_in,
		 EN_send_ports_2_putFlit,

		 EN_send_ports_2_getCredits,
		 send_ports_2_getCredits,

		 send_ports_3_putFlit_flit_in,
		 EN_send_ports_3_putFlit,

		 EN_send_ports_3_getCredits,
		 send_ports_3_getCredits,

		 EN_recv_ports_0_getFlit,
		 recv_ports_0_getFlit,

		 recv_ports_0_putCredits_cr_in,
		 EN_recv_ports_0_putCredits,

		 EN_recv_ports_1_getFlit,
		 recv_ports_1_getFlit,

		 recv_ports_1_putCredits_cr_in,
		 EN_recv_ports_1_putCredits,

		 EN_recv_ports_2_getFlit,
		 recv_ports_2_getFlit,

		 recv_ports_2_putCredits_cr_in,
		 EN_recv_ports_2_putCredits,

		 EN_recv_ports_3_getFlit,
		 recv_ports_3_getFlit,

		 recv_ports_3_putCredits_cr_in,
		 EN_recv_ports_3_putCredits,

		 recv_ports_info_0_getRecvPortID,

		 recv_ports_info_1_getRecvPortID,

		 recv_ports_info_2_getRecvPortID,

		 recv_ports_info_3_getRecvPortID);
  input  CLK;
  input  RST_N;

  // action method send_ports_0_putFlit
  input  [12 : 0] send_ports_0_putFlit_flit_in;
  input  EN_send_ports_0_putFlit;

  // actionvalue method send_ports_0_getCredits
  input  EN_send_ports_0_getCredits;
  output [1 : 0] send_ports_0_getCredits;

  // action method send_ports_1_putFlit
  input  [12 : 0] send_ports_1_putFlit_flit_in;
  input  EN_send_ports_1_putFlit;

  // actionvalue method send_ports_1_getCredits
  input  EN_send_ports_1_getCredits;
  output [1 : 0] send_ports_1_getCredits;

  // action method send_ports_2_putFlit
  input  [12 : 0] send_ports_2_putFlit_flit_in;
  input  EN_send_ports_2_putFlit;

  // actionvalue method send_ports_2_getCredits
  input  EN_send_ports_2_getCredits;
  output [1 : 0] send_ports_2_getCredits;

  // action method send_ports_3_putFlit
  input  [12 : 0] send_ports_3_putFlit_flit_in;
  input  EN_send_ports_3_putFlit;

  // actionvalue method send_ports_3_getCredits
  input  EN_send_ports_3_getCredits;
  output [1 : 0] send_ports_3_getCredits;

  // actionvalue method recv_ports_0_getFlit
  input  EN_recv_ports_0_getFlit;
  output [12 : 0] recv_ports_0_getFlit;

  // action method recv_ports_0_putCredits
  input  [1 : 0] recv_ports_0_putCredits_cr_in;
  input  EN_recv_ports_0_putCredits;

  // actionvalue method recv_ports_1_getFlit
  input  EN_recv_ports_1_getFlit;
  output [12 : 0] recv_ports_1_getFlit;

  // action method recv_ports_1_putCredits
  input  [1 : 0] recv_ports_1_putCredits_cr_in;
  input  EN_recv_ports_1_putCredits;

  // actionvalue method recv_ports_2_getFlit
  input  EN_recv_ports_2_getFlit;
  output [12 : 0] recv_ports_2_getFlit;

  // action method recv_ports_2_putCredits
  input  [1 : 0] recv_ports_2_putCredits_cr_in;
  input  EN_recv_ports_2_putCredits;

  // actionvalue method recv_ports_3_getFlit
  input  EN_recv_ports_3_getFlit;
  output [12 : 0] recv_ports_3_getFlit;

  // action method recv_ports_3_putCredits
  input  [1 : 0] recv_ports_3_putCredits_cr_in;
  input  EN_recv_ports_3_putCredits;

  // value method recv_ports_info_0_getRecvPortID
  output [1 : 0] recv_ports_info_0_getRecvPortID;

  // value method recv_ports_info_1_getRecvPortID
  output [1 : 0] recv_ports_info_1_getRecvPortID;

  // value method recv_ports_info_2_getRecvPortID
  output [1 : 0] recv_ports_info_2_getRecvPortID;

  // value method recv_ports_info_3_getRecvPortID
  output [1 : 0] recv_ports_info_3_getRecvPortID;

  // signals for module outputs
  wire [12 : 0] recv_ports_0_getFlit,
		recv_ports_1_getFlit,
		recv_ports_2_getFlit,
		recv_ports_3_getFlit;
  wire [1 : 0] recv_ports_info_0_getRecvPortID,
	       recv_ports_info_1_getRecvPortID,
	       recv_ports_info_2_getRecvPortID,
	       recv_ports_info_3_getRecvPortID,
	       send_ports_0_getCredits,
	       send_ports_1_getCredits,
	       send_ports_2_getCredits,
	       send_ports_3_getCredits;

  // ports of submodule RoutingTable_1_bank
  wire [2 : 0] RoutingTable_1_bank$D_IN,
	       RoutingTable_1_bank$D_OUT_1;
  wire [1 : 0] RoutingTable_1_bank$ADDR_1,
	       RoutingTable_1_bank$ADDR_IN;
  wire RoutingTable_1_bank$WE;

  // ports of submodule RoutingTable_1_bank_1
  wire [2 : 0] RoutingTable_1_bank_1$D_IN;
  wire [1 : 0] RoutingTable_1_bank_1$ADDR_1,
	       RoutingTable_1_bank_1$ADDR_IN;
  wire RoutingTable_1_bank_1$WE;

  // ports of submodule RoutingTable_1_bank_2
  wire [2 : 0] RoutingTable_1_bank_2$D_IN,
	       RoutingTable_1_bank_2$D_OUT_1;
  wire [1 : 0] RoutingTable_1_bank_2$ADDR_1,
	       RoutingTable_1_bank_2$ADDR_IN;
  wire RoutingTable_1_bank_2$WE;

  // ports of submodule RoutingTable_1_bank_3
  wire [2 : 0] RoutingTable_1_bank_3$D_IN,
	       RoutingTable_1_bank_3$D_OUT_1;
  wire [1 : 0] RoutingTable_1_bank_3$ADDR_1,
	       RoutingTable_1_bank_3$ADDR_IN;
  wire RoutingTable_1_bank_3$WE;

  // ports of submodule RoutingTable_1_bank_4
  wire [2 : 0] RoutingTable_1_bank_4$D_IN;
  wire [1 : 0] RoutingTable_1_bank_4$ADDR_1,
	       RoutingTable_1_bank_4$ADDR_IN;
  wire RoutingTable_1_bank_4$WE;

  // ports of submodule RoutingTable_2_bank
  wire [2 : 0] RoutingTable_2_bank$D_IN,
	       RoutingTable_2_bank$D_OUT_1;
  wire [1 : 0] RoutingTable_2_bank$ADDR_1,
	       RoutingTable_2_bank$ADDR_IN;
  wire RoutingTable_2_bank$WE;

  // ports of submodule RoutingTable_2_bank_1
  wire [2 : 0] RoutingTable_2_bank_1$D_IN,
	       RoutingTable_2_bank_1$D_OUT_1;
  wire [1 : 0] RoutingTable_2_bank_1$ADDR_1,
	       RoutingTable_2_bank_1$ADDR_IN;
  wire RoutingTable_2_bank_1$WE;

  // ports of submodule RoutingTable_2_bank_2
  wire [2 : 0] RoutingTable_2_bank_2$D_IN;
  wire [1 : 0] RoutingTable_2_bank_2$ADDR_1,
	       RoutingTable_2_bank_2$ADDR_IN;
  wire RoutingTable_2_bank_2$WE;

  // ports of submodule RoutingTable_2_bank_3
  wire [2 : 0] RoutingTable_2_bank_3$D_IN;
  wire [1 : 0] RoutingTable_2_bank_3$ADDR_1,
	       RoutingTable_2_bank_3$ADDR_IN;
  wire RoutingTable_2_bank_3$WE;

  // ports of submodule RoutingTable_2_bank_4
  wire [2 : 0] RoutingTable_2_bank_4$D_IN,
	       RoutingTable_2_bank_4$D_OUT_1;
  wire [1 : 0] RoutingTable_2_bank_4$ADDR_1,
	       RoutingTable_2_bank_4$ADDR_IN;
  wire RoutingTable_2_bank_4$WE;

  // ports of submodule RoutingTable_3_bank
  wire [2 : 0] RoutingTable_3_bank$D_IN,
	       RoutingTable_3_bank$D_OUT_1;
  wire [1 : 0] RoutingTable_3_bank$ADDR_1,
	       RoutingTable_3_bank$ADDR_IN;
  wire RoutingTable_3_bank$WE;

  // ports of submodule RoutingTable_3_bank_1
  wire [2 : 0] RoutingTable_3_bank_1$D_IN;
  wire [1 : 0] RoutingTable_3_bank_1$ADDR_1,
	       RoutingTable_3_bank_1$ADDR_IN;
  wire RoutingTable_3_bank_1$WE;

  // ports of submodule RoutingTable_3_bank_2
  wire [2 : 0] RoutingTable_3_bank_2$D_IN;
  wire [1 : 0] RoutingTable_3_bank_2$ADDR_1,
	       RoutingTable_3_bank_2$ADDR_IN;
  wire RoutingTable_3_bank_2$WE;

  // ports of submodule RoutingTable_3_bank_3
  wire [2 : 0] RoutingTable_3_bank_3$D_IN,
	       RoutingTable_3_bank_3$D_OUT_1;
  wire [1 : 0] RoutingTable_3_bank_3$ADDR_1,
	       RoutingTable_3_bank_3$ADDR_IN;
  wire RoutingTable_3_bank_3$WE;

  // ports of submodule RoutingTable_3_bank_4
  wire [2 : 0] RoutingTable_3_bank_4$D_IN,
	       RoutingTable_3_bank_4$D_OUT_1;
  wire [1 : 0] RoutingTable_3_bank_4$ADDR_1,
	       RoutingTable_3_bank_4$ADDR_IN;
  wire RoutingTable_3_bank_4$WE;

  // ports of submodule RoutingTable_0_bank
  wire [2 : 0] RoutingTable_0_bank$D_IN,
	       RoutingTable_0_bank$D_OUT_1;
  wire [1 : 0] RoutingTable_0_bank$ADDR_1,
	       RoutingTable_0_bank$ADDR_IN;
  wire RoutingTable_0_bank$WE;

  // ports of submodule RoutingTable_0_bank_1
  wire [2 : 0] RoutingTable_0_bank_1$D_IN,
	       RoutingTable_0_bank_1$D_OUT_1;
  wire [1 : 0] RoutingTable_0_bank_1$ADDR_1,
	       RoutingTable_0_bank_1$ADDR_IN;
  wire RoutingTable_0_bank_1$WE;

  // ports of submodule RoutingTable_0_bank_2
  wire [2 : 0] RoutingTable_0_bank_2$D_IN,
	       RoutingTable_0_bank_2$D_OUT_1;
  wire [1 : 0] RoutingTable_0_bank_2$ADDR_1,
	       RoutingTable_0_bank_2$ADDR_IN;
  wire RoutingTable_0_bank_2$WE;

  // ports of submodule RoutingTable_0_bank_3
  wire [2 : 0] RoutingTable_0_bank_3$D_IN;
  wire [1 : 0] RoutingTable_0_bank_3$ADDR_1,
	       RoutingTable_0_bank_3$ADDR_IN;
  wire RoutingTable_0_bank_3$WE;

  // ports of submodule RoutingTable_0_bank_4
  wire [2 : 0] RoutingTable_0_bank_4$D_IN;
  wire [1 : 0] RoutingTable_0_bank_4$ADDR_1,
	       RoutingTable_0_bank_4$ADDR_IN;
  wire RoutingTable_0_bank_4$WE;

  // ports of submodule Router_0
  wire [15 : 0] Router_0$in_ports_0_putRoutedFlit_flit_in,
		Router_0$in_ports_1_putRoutedFlit_flit_in,
		Router_0$in_ports_2_putRoutedFlit_flit_in,
		Router_0$in_ports_3_putRoutedFlit_flit_in,
		Router_0$in_ports_4_putRoutedFlit_flit_in;
  wire [12 : 0] Router_0$out_ports_0_getFlit,
		Router_0$out_ports_3_getFlit,
		Router_0$out_ports_4_getFlit;
  wire [1 : 0] Router_0$in_ports_0_getCredits,
	       Router_0$in_ports_1_getCredits,
	       Router_0$in_ports_2_getCredits,
	       Router_0$out_ports_0_putCredits_cr_in,
	       Router_0$out_ports_1_putCredits_cr_in,
	       Router_0$out_ports_2_putCredits_cr_in,
	       Router_0$out_ports_3_putCredits_cr_in,
	       Router_0$out_ports_4_putCredits_cr_in;
  wire Router_0$EN_in_ports_0_getCredits,
       Router_0$EN_in_ports_0_putRoutedFlit,
       Router_0$EN_in_ports_1_getCredits,
       Router_0$EN_in_ports_1_putRoutedFlit,
       Router_0$EN_in_ports_2_getCredits,
       Router_0$EN_in_ports_2_putRoutedFlit,
       Router_0$EN_in_ports_3_getCredits,
       Router_0$EN_in_ports_3_putRoutedFlit,
       Router_0$EN_in_ports_4_getCredits,
       Router_0$EN_in_ports_4_putRoutedFlit,
       Router_0$EN_out_ports_0_getFlit,
       Router_0$EN_out_ports_0_putCredits,
       Router_0$EN_out_ports_1_getFlit,
       Router_0$EN_out_ports_1_putCredits,
       Router_0$EN_out_ports_2_getFlit,
       Router_0$EN_out_ports_2_putCredits,
       Router_0$EN_out_ports_3_getFlit,
       Router_0$EN_out_ports_3_putCredits,
       Router_0$EN_out_ports_4_getFlit,
       Router_0$EN_out_ports_4_putCredits;

  // ports of submodule Router_1
  wire [15 : 0] Router_1$in_ports_0_putRoutedFlit_flit_in,
		Router_1$in_ports_1_putRoutedFlit_flit_in,
		Router_1$in_ports_2_putRoutedFlit_flit_in,
		Router_1$in_ports_3_putRoutedFlit_flit_in,
		Router_1$in_ports_4_putRoutedFlit_flit_in;
  wire [12 : 0] Router_1$out_ports_0_getFlit,
		Router_1$out_ports_1_getFlit,
		Router_1$out_ports_4_getFlit;
  wire [1 : 0] Router_1$in_ports_0_getCredits,
	       Router_1$in_ports_2_getCredits,
	       Router_1$in_ports_3_getCredits,
	       Router_1$out_ports_0_putCredits_cr_in,
	       Router_1$out_ports_1_putCredits_cr_in,
	       Router_1$out_ports_2_putCredits_cr_in,
	       Router_1$out_ports_3_putCredits_cr_in,
	       Router_1$out_ports_4_putCredits_cr_in;
  wire Router_1$EN_in_ports_0_getCredits,
       Router_1$EN_in_ports_0_putRoutedFlit,
       Router_1$EN_in_ports_1_getCredits,
       Router_1$EN_in_ports_1_putRoutedFlit,
       Router_1$EN_in_ports_2_getCredits,
       Router_1$EN_in_ports_2_putRoutedFlit,
       Router_1$EN_in_ports_3_getCredits,
       Router_1$EN_in_ports_3_putRoutedFlit,
       Router_1$EN_in_ports_4_getCredits,
       Router_1$EN_in_ports_4_putRoutedFlit,
       Router_1$EN_out_ports_0_getFlit,
       Router_1$EN_out_ports_0_putCredits,
       Router_1$EN_out_ports_1_getFlit,
       Router_1$EN_out_ports_1_putCredits,
       Router_1$EN_out_ports_2_getFlit,
       Router_1$EN_out_ports_2_putCredits,
       Router_1$EN_out_ports_3_getFlit,
       Router_1$EN_out_ports_3_putCredits,
       Router_1$EN_out_ports_4_getFlit,
       Router_1$EN_out_ports_4_putCredits;

  // ports of submodule Router_2
  wire [15 : 0] Router_2$in_ports_0_putRoutedFlit_flit_in,
		Router_2$in_ports_1_putRoutedFlit_flit_in,
		Router_2$in_ports_2_putRoutedFlit_flit_in,
		Router_2$in_ports_3_putRoutedFlit_flit_in,
		Router_2$in_ports_4_putRoutedFlit_flit_in;
  wire [12 : 0] Router_2$out_ports_0_getFlit,
		Router_2$out_ports_2_getFlit,
		Router_2$out_ports_3_getFlit;
  wire [1 : 0] Router_2$in_ports_0_getCredits,
	       Router_2$in_ports_1_getCredits,
	       Router_2$in_ports_4_getCredits,
	       Router_2$out_ports_0_putCredits_cr_in,
	       Router_2$out_ports_1_putCredits_cr_in,
	       Router_2$out_ports_2_putCredits_cr_in,
	       Router_2$out_ports_3_putCredits_cr_in,
	       Router_2$out_ports_4_putCredits_cr_in;
  wire Router_2$EN_in_ports_0_getCredits,
       Router_2$EN_in_ports_0_putRoutedFlit,
       Router_2$EN_in_ports_1_getCredits,
       Router_2$EN_in_ports_1_putRoutedFlit,
       Router_2$EN_in_ports_2_getCredits,
       Router_2$EN_in_ports_2_putRoutedFlit,
       Router_2$EN_in_ports_3_getCredits,
       Router_2$EN_in_ports_3_putRoutedFlit,
       Router_2$EN_in_ports_4_getCredits,
       Router_2$EN_in_ports_4_putRoutedFlit,
       Router_2$EN_out_ports_0_getFlit,
       Router_2$EN_out_ports_0_putCredits,
       Router_2$EN_out_ports_1_getFlit,
       Router_2$EN_out_ports_1_putCredits,
       Router_2$EN_out_ports_2_getFlit,
       Router_2$EN_out_ports_2_putCredits,
       Router_2$EN_out_ports_3_getFlit,
       Router_2$EN_out_ports_3_putCredits,
       Router_2$EN_out_ports_4_getFlit,
       Router_2$EN_out_ports_4_putCredits;

  // ports of submodule Router_3
  wire [15 : 0] Router_3$in_ports_0_putRoutedFlit_flit_in,
		Router_3$in_ports_1_putRoutedFlit_flit_in,
		Router_3$in_ports_2_putRoutedFlit_flit_in,
		Router_3$in_ports_3_putRoutedFlit_flit_in,
		Router_3$in_ports_4_putRoutedFlit_flit_in;
  wire [12 : 0] Router_3$out_ports_0_getFlit,
		Router_3$out_ports_1_getFlit,
		Router_3$out_ports_2_getFlit;
  wire [1 : 0] Router_3$in_ports_0_getCredits,
	       Router_3$in_ports_3_getCredits,
	       Router_3$in_ports_4_getCredits,
	       Router_3$out_ports_0_putCredits_cr_in,
	       Router_3$out_ports_1_putCredits_cr_in,
	       Router_3$out_ports_2_putCredits_cr_in,
	       Router_3$out_ports_3_putCredits_cr_in,
	       Router_3$out_ports_4_putCredits_cr_in;
  wire Router_3$EN_in_ports_0_getCredits,
       Router_3$EN_in_ports_0_putRoutedFlit,
       Router_3$EN_in_ports_1_getCredits,
       Router_3$EN_in_ports_1_putRoutedFlit,
       Router_3$EN_in_ports_2_getCredits,
       Router_3$EN_in_ports_2_putRoutedFlit,
       Router_3$EN_in_ports_3_getCredits,
       Router_3$EN_in_ports_3_putRoutedFlit,
       Router_3$EN_in_ports_4_getCredits,
       Router_3$EN_in_ports_4_putRoutedFlit,
       Router_3$EN_out_ports_0_getFlit,
       Router_3$EN_out_ports_0_putCredits,
       Router_3$EN_out_ports_1_getFlit,
       Router_3$EN_out_ports_1_putCredits,
       Router_3$EN_out_ports_2_getFlit,
       Router_3$EN_out_ports_2_putCredits,
       Router_3$EN_out_ports_3_getFlit,
       Router_3$EN_out_ports_3_putCredits,
       Router_3$EN_out_ports_4_getFlit,
       Router_3$EN_out_ports_4_putCredits;

  // actionvalue method send_ports_0_getCredits
  assign send_ports_0_getCredits =
	     Router_0$in_ports_0_getCredits ;

  // actionvalue method send_ports_1_getCredits
  assign send_ports_1_getCredits =
	     Router_1$in_ports_0_getCredits ;

  // actionvalue method send_ports_2_getCredits
  assign send_ports_2_getCredits =
	     Router_2$in_ports_0_getCredits ;

  // actionvalue method send_ports_3_getCredits
  assign send_ports_3_getCredits =
	     Router_3$in_ports_0_getCredits ;

  // actionvalue method recv_ports_0_getFlit
  assign recv_ports_0_getFlit = Router_0$out_ports_0_getFlit ;

  // actionvalue method recv_ports_1_getFlit
  assign recv_ports_1_getFlit =
	     Router_1$out_ports_0_getFlit ;

  // actionvalue method recv_ports_2_getFlit
  assign recv_ports_2_getFlit =
	     Router_2$out_ports_0_getFlit ;

  // actionvalue method recv_ports_3_getFlit
  assign recv_ports_3_getFlit =
	     Router_3$out_ports_0_getFlit ;

  // value method recv_ports_info_0_getRecvPortID
  assign recv_ports_info_0_getRecvPortID = 2'd0 ;

  // value method recv_ports_info_1_getRecvPortID
  assign recv_ports_info_1_getRecvPortID = 2'd1 ;

  // value method recv_ports_info_2_getRecvPortID
  assign recv_ports_info_2_getRecvPortID = 2'd2 ;

  // value method recv_ports_info_3_getRecvPortID
  assign recv_ports_info_3_getRecvPortID = 2'd3 ;

  // submodule RoutingTable_1_bank
  File_load #( /*file*/ "RoutingTable_1.hex",
		    /*addr_width*/ 32'd2,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd3,
		    /*binary*/ 32'd0) RoutingTable_1_bank(.CLK(CLK),
										     .RST_N(RST_N),
										     .ADDR_1(RoutingTable_1_bank$ADDR_1),
										     .ADDR_IN(RoutingTable_1_bank$ADDR_IN),
										     .D_IN(RoutingTable_1_bank$D_IN),
										     .WE(RoutingTable_1_bank$WE),
										     .D_OUT_1(RoutingTable_1_bank$D_OUT_1));

  // submodule RoutingTable_1_bank_1
  File_load #( /*file*/ "RoutingTable_1.hex",
		    /*addr_width*/ 32'd2,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd3,
		    /*binary*/ 32'd0) RoutingTable_1_bank_1(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(RoutingTable_1_bank_1$ADDR_1),
										       .ADDR_IN(RoutingTable_1_bank_1$ADDR_IN),
										       .D_IN(RoutingTable_1_bank_1$D_IN),
										       .WE(RoutingTable_1_bank_1$WE),
										       .D_OUT_1());

  // submodule RoutingTable_1_bank_2
  File_load #( /*file*/ "RoutingTable_1.hex",
		    /*addr_width*/ 32'd2,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd3,
		    /*binary*/ 32'd0) RoutingTable_1_bank_2(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(RoutingTable_1_bank_2$ADDR_1),
										       .ADDR_IN(RoutingTable_1_bank_2$ADDR_IN),
										       .D_IN(RoutingTable_1_bank_2$D_IN),
										       .WE(RoutingTable_1_bank_2$WE),
										       .D_OUT_1(RoutingTable_1_bank_2$D_OUT_1));

  // submodule RoutingTable_1_bank_3
  File_load #( /*file*/ "RoutingTable_1.hex",
		    /*addr_width*/ 32'd2,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd3,
		    /*binary*/ 32'd0) RoutingTable_1_bank_3(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(RoutingTable_1_bank_3$ADDR_1),
										       .ADDR_IN(RoutingTable_1_bank_3$ADDR_IN),
										       .D_IN(RoutingTable_1_bank_3$D_IN),
										       .WE(RoutingTable_1_bank_3$WE),
										       .D_OUT_1(RoutingTable_1_bank_3$D_OUT_1));

  // submodule RoutingTable_1_bank_4
  File_load #( /*file*/ "RoutingTable_1.hex",
		    /*addr_width*/ 32'd2,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd3,
		    /*binary*/ 32'd0) RoutingTable_1_bank_4(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(RoutingTable_1_bank_4$ADDR_1),
										       .ADDR_IN(RoutingTable_1_bank_4$ADDR_IN),
										       .D_IN(RoutingTable_1_bank_4$D_IN),
										       .WE(RoutingTable_1_bank_4$WE),
										       .D_OUT_1());

  // submodule RoutingTable_2_bank
  File_load #( /*file*/ "RoutingTable_2.hex",
		    /*addr_width*/ 32'd2,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd3,
		    /*binary*/ 32'd0) RoutingTable_2_bank(.CLK(CLK),
										     .RST_N(RST_N),
										     .ADDR_1(RoutingTable_2_bank$ADDR_1),
										     .ADDR_IN(RoutingTable_2_bank$ADDR_IN),
										     .D_IN(RoutingTable_2_bank$D_IN),
										     .WE(RoutingTable_2_bank$WE),
										     .D_OUT_1(RoutingTable_2_bank$D_OUT_1));

  // submodule RoutingTable_2_bank_1
  File_load #( /*file*/ "RoutingTable_2.hex",
		    /*addr_width*/ 32'd2,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd3,
		    /*binary*/ 32'd0) RoutingTable_2_bank_1(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(RoutingTable_2_bank_1$ADDR_1),
										       .ADDR_IN(RoutingTable_2_bank_1$ADDR_IN),
										       .D_IN(RoutingTable_2_bank_1$D_IN),
										       .WE(RoutingTable_2_bank_1$WE),
										       .D_OUT_1(RoutingTable_2_bank_1$D_OUT_1));

  // submodule RoutingTable_2_bank_2
  File_load #( /*file*/ "RoutingTable_2.hex",
		    /*addr_width*/ 32'd2,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd3,
		    /*binary*/ 32'd0) RoutingTable_2_bank_2(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(RoutingTable_2_bank_2$ADDR_1),
										       .ADDR_IN(RoutingTable_2_bank_2$ADDR_IN),
										       .D_IN(RoutingTable_2_bank_2$D_IN),
										       .WE(RoutingTable_2_bank_2$WE),
										       .D_OUT_1());

  // submodule RoutingTable_2_bank_3
  File_load #( /*file*/ "RoutingTable_2.hex",
		    /*addr_width*/ 32'd2,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd3,
		    /*binary*/ 32'd0) RoutingTable_2_bank_3(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(RoutingTable_2_bank_3$ADDR_1),
										       .ADDR_IN(RoutingTable_2_bank_3$ADDR_IN),
										       .D_IN(RoutingTable_2_bank_3$D_IN),
										       .WE(RoutingTable_2_bank_3$WE),
										       .D_OUT_1());

  // submodule RoutingTable_2_bank_4
  File_load #( /*file*/ "RoutingTable_2.hex",
		    /*addr_width*/ 32'd2,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd3,
		    /*binary*/ 32'd0) RoutingTable_2_bank_4(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(RoutingTable_2_bank_4$ADDR_1),
										       .ADDR_IN(RoutingTable_2_bank_4$ADDR_IN),
										       .D_IN(RoutingTable_2_bank_4$D_IN),
										       .WE(RoutingTable_2_bank_4$WE),
										       .D_OUT_1(RoutingTable_2_bank_4$D_OUT_1));

  // submodule RoutingTable_3_bank
  File_load #( /*file*/ "RoutingTable_3.hex",
		    /*addr_width*/ 32'd2,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd3,
		    /*binary*/ 32'd0) RoutingTable_3_bank(.CLK(CLK),
										     .RST_N(RST_N),
										     .ADDR_1(RoutingTable_3_bank$ADDR_1),
										     .ADDR_IN(RoutingTable_3_bank$ADDR_IN),
										     .D_IN(RoutingTable_3_bank$D_IN),
										     .WE(RoutingTable_3_bank$WE),
										     .D_OUT_1(RoutingTable_3_bank$D_OUT_1));

  // submodule RoutingTable_3_bank_1
  File_load #( /*file*/ "RoutingTable_3.hex",
		    /*addr_width*/ 32'd2,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd3,
		    /*binary*/ 32'd0) RoutingTable_3_bank_1(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(RoutingTable_3_bank_1$ADDR_1),
										       .ADDR_IN(RoutingTable_3_bank_1$ADDR_IN),
										       .D_IN(RoutingTable_3_bank_1$D_IN),
										       .WE(RoutingTable_3_bank_1$WE),
										       .D_OUT_1());

  // submodule RoutingTable_3_bank_2
  File_load #( /*file*/ "RoutingTable_3.hex",
		    /*addr_width*/ 32'd2,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd3,
		    /*binary*/ 32'd0) RoutingTable_3_bank_2(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(RoutingTable_3_bank_2$ADDR_1),
										       .ADDR_IN(RoutingTable_3_bank_2$ADDR_IN),
										       .D_IN(RoutingTable_3_bank_2$D_IN),
										       .WE(RoutingTable_3_bank_2$WE),
										       .D_OUT_1());

  // submodule RoutingTable_3_bank_3
  File_load #( /*file*/ "RoutingTable_3.hex",
		    /*addr_width*/ 32'd2,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd3,
		    /*binary*/ 32'd0) RoutingTable_3_bank_3(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(RoutingTable_3_bank_3$ADDR_1),
										       .ADDR_IN(RoutingTable_3_bank_3$ADDR_IN),
										       .D_IN(RoutingTable_3_bank_3$D_IN),
										       .WE(RoutingTable_3_bank_3$WE),
										       .D_OUT_1(RoutingTable_3_bank_3$D_OUT_1));

  // submodule RoutingTable_3_bank_4
  File_load #( /*file*/ "RoutingTable_3.hex",
		    /*addr_width*/ 32'd2,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd3,
		    /*binary*/ 32'd0) RoutingTable_3_bank_4(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(RoutingTable_3_bank_4$ADDR_1),
										       .ADDR_IN(RoutingTable_3_bank_4$ADDR_IN),
										       .D_IN(RoutingTable_3_bank_4$D_IN),
										       .WE(RoutingTable_3_bank_4$WE),
										       .D_OUT_1(RoutingTable_3_bank_4$D_OUT_1));

  // submodule RoutingTable_0_bank
  File_load #( /*file*/ "RoutingTable_0.hex",
		    /*addr_width*/ 32'd2,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd3,
		    /*binary*/ 32'd0) RoutingTable_0_bank(.CLK(CLK),
										   .RST_N(RST_N),
										   .ADDR_1(RoutingTable_0_bank$ADDR_1),
										   .ADDR_IN(RoutingTable_0_bank$ADDR_IN),
										   .D_IN(RoutingTable_0_bank$D_IN),
										   .WE(RoutingTable_0_bank$WE),
										   .D_OUT_1(RoutingTable_0_bank$D_OUT_1));

  // submodule RoutingTable_0_bank_1
  File_load #( /*file*/ "RoutingTable_0.hex",
		    /*addr_width*/ 32'd2,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd3,
		    /*binary*/ 32'd0) RoutingTable_0_bank_1(.CLK(CLK),
										     .RST_N(RST_N),
										     .ADDR_1(RoutingTable_0_bank_1$ADDR_1),
										     .ADDR_IN(RoutingTable_0_bank_1$ADDR_IN),
										     .D_IN(RoutingTable_0_bank_1$D_IN),
										     .WE(RoutingTable_0_bank_1$WE),
										     .D_OUT_1(RoutingTable_0_bank_1$D_OUT_1));

  // submodule RoutingTable_0_bank_2
  File_load #( /*file*/ "RoutingTable_0.hex",
		    /*addr_width*/ 32'd2,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd3,
		    /*binary*/ 32'd0) RoutingTable_0_bank_2(.CLK(CLK),
										     .RST_N(RST_N),
										     .ADDR_1(RoutingTable_0_bank_2$ADDR_1),
										     .ADDR_IN(RoutingTable_0_bank_2$ADDR_IN),
										     .D_IN(RoutingTable_0_bank_2$D_IN),
										     .WE(RoutingTable_0_bank_2$WE),
										     .D_OUT_1(RoutingTable_0_bank_2$D_OUT_1));

  // submodule RoutingTable_0_bank_3
  File_load #( /*file*/ "RoutingTable_0.hex",
		    /*addr_width*/ 32'd2,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd3,
		    /*binary*/ 32'd0) RoutingTable_0_bank_3(.CLK(CLK),
										     .RST_N(RST_N),
										     .ADDR_1(RoutingTable_0_bank_3$ADDR_1),
										     .ADDR_IN(RoutingTable_0_bank_3$ADDR_IN),
										     .D_IN(RoutingTable_0_bank_3$D_IN),
										     .WE(RoutingTable_0_bank_3$WE),
										     .D_OUT_1());

  // submodule RoutingTable_0_bank_4
  File_load #( /*file*/ "RoutingTable_0.hex",
		    /*addr_width*/ 32'd2,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd3,
		    /*binary*/ 32'd0) RoutingTable_0_bank_4(.CLK(CLK),
										     .RST_N(RST_N),
										     .ADDR_1(RoutingTable_0_bank_4$ADDR_1),
										     .ADDR_IN(RoutingTable_0_bank_4$ADDR_IN),
										     .D_IN(RoutingTable_0_bank_4$D_IN),
										     .WE(RoutingTable_0_bank_4$WE),
										     .D_OUT_1());

  // submodule Router_0
  RouterCore Router_0(.CLK(CLK),
					 .RST_N(RST_N),
					 .in_ports_0_putRoutedFlit_flit_in(Router_0$in_ports_0_putRoutedFlit_flit_in),
					 .in_ports_1_putRoutedFlit_flit_in(Router_0$in_ports_1_putRoutedFlit_flit_in),
					 .in_ports_2_putRoutedFlit_flit_in(Router_0$in_ports_2_putRoutedFlit_flit_in),
					 .in_ports_3_putRoutedFlit_flit_in(Router_0$in_ports_3_putRoutedFlit_flit_in),
					 .in_ports_4_putRoutedFlit_flit_in(Router_0$in_ports_4_putRoutedFlit_flit_in),
					 .out_ports_0_putCredits_cr_in(Router_0$out_ports_0_putCredits_cr_in),
					 .out_ports_1_putCredits_cr_in(Router_0$out_ports_1_putCredits_cr_in),
					 .out_ports_2_putCredits_cr_in(Router_0$out_ports_2_putCredits_cr_in),
					 .out_ports_3_putCredits_cr_in(Router_0$out_ports_3_putCredits_cr_in),
					 .out_ports_4_putCredits_cr_in(Router_0$out_ports_4_putCredits_cr_in),
					 .EN_in_ports_0_putRoutedFlit(Router_0$EN_in_ports_0_putRoutedFlit),
					 .EN_in_ports_0_getCredits(Router_0$EN_in_ports_0_getCredits),
					 .EN_in_ports_1_putRoutedFlit(Router_0$EN_in_ports_1_putRoutedFlit),
					 .EN_in_ports_1_getCredits(Router_0$EN_in_ports_1_getCredits),
					 .EN_in_ports_2_putRoutedFlit(Router_0$EN_in_ports_2_putRoutedFlit),
					 .EN_in_ports_2_getCredits(Router_0$EN_in_ports_2_getCredits),
					 .EN_in_ports_3_putRoutedFlit(Router_0$EN_in_ports_3_putRoutedFlit),
					 .EN_in_ports_3_getCredits(Router_0$EN_in_ports_3_getCredits),
					 .EN_in_ports_4_putRoutedFlit(Router_0$EN_in_ports_4_putRoutedFlit),
					 .EN_in_ports_4_getCredits(Router_0$EN_in_ports_4_getCredits),
					 .EN_out_ports_0_getFlit(Router_0$EN_out_ports_0_getFlit),
					 .EN_out_ports_0_putCredits(Router_0$EN_out_ports_0_putCredits),
					 .EN_out_ports_1_getFlit(Router_0$EN_out_ports_1_getFlit),
					 .EN_out_ports_1_putCredits(Router_0$EN_out_ports_1_putCredits),
					 .EN_out_ports_2_getFlit(Router_0$EN_out_ports_2_getFlit),
					 .EN_out_ports_2_putCredits(Router_0$EN_out_ports_2_putCredits),
					 .EN_out_ports_3_getFlit(Router_0$EN_out_ports_3_getFlit),
					 .EN_out_ports_3_putCredits(Router_0$EN_out_ports_3_putCredits),
					 .EN_out_ports_4_getFlit(Router_0$EN_out_ports_4_getFlit),
					 .EN_out_ports_4_putCredits(Router_0$EN_out_ports_4_putCredits),
					 .in_ports_0_getCredits(Router_0$in_ports_0_getCredits),
					 .in_ports_1_getCredits(Router_0$in_ports_1_getCredits),
					 .in_ports_2_getCredits(Router_0$in_ports_2_getCredits),
					 .in_ports_3_getCredits(),
					 .in_ports_4_getCredits(),
					 .out_ports_0_getFlit(Router_0$out_ports_0_getFlit),
					 .out_ports_1_getFlit(),
					 .out_ports_2_getFlit(),
					 .out_ports_3_getFlit(Router_0$out_ports_3_getFlit),
					 .out_ports_4_getFlit(Router_0$out_ports_4_getFlit));

  // submodule Router_1
  RouterCore Router_1(.CLK(CLK),
					   .RST_N(RST_N),
					   .in_ports_0_putRoutedFlit_flit_in(Router_1$in_ports_0_putRoutedFlit_flit_in),
					   .in_ports_1_putRoutedFlit_flit_in(Router_1$in_ports_1_putRoutedFlit_flit_in),
					   .in_ports_2_putRoutedFlit_flit_in(Router_1$in_ports_2_putRoutedFlit_flit_in),
					   .in_ports_3_putRoutedFlit_flit_in(Router_1$in_ports_3_putRoutedFlit_flit_in),
					   .in_ports_4_putRoutedFlit_flit_in(Router_1$in_ports_4_putRoutedFlit_flit_in),
					   .out_ports_0_putCredits_cr_in(Router_1$out_ports_0_putCredits_cr_in),
					   .out_ports_1_putCredits_cr_in(Router_1$out_ports_1_putCredits_cr_in),
					   .out_ports_2_putCredits_cr_in(Router_1$out_ports_2_putCredits_cr_in),
					   .out_ports_3_putCredits_cr_in(Router_1$out_ports_3_putCredits_cr_in),
					   .out_ports_4_putCredits_cr_in(Router_1$out_ports_4_putCredits_cr_in),
					   .EN_in_ports_0_putRoutedFlit(Router_1$EN_in_ports_0_putRoutedFlit),
					   .EN_in_ports_0_getCredits(Router_1$EN_in_ports_0_getCredits),
					   .EN_in_ports_1_putRoutedFlit(Router_1$EN_in_ports_1_putRoutedFlit),
					   .EN_in_ports_1_getCredits(Router_1$EN_in_ports_1_getCredits),
					   .EN_in_ports_2_putRoutedFlit(Router_1$EN_in_ports_2_putRoutedFlit),
					   .EN_in_ports_2_getCredits(Router_1$EN_in_ports_2_getCredits),
					   .EN_in_ports_3_putRoutedFlit(Router_1$EN_in_ports_3_putRoutedFlit),
					   .EN_in_ports_3_getCredits(Router_1$EN_in_ports_3_getCredits),
					   .EN_in_ports_4_putRoutedFlit(Router_1$EN_in_ports_4_putRoutedFlit),
					   .EN_in_ports_4_getCredits(Router_1$EN_in_ports_4_getCredits),
					   .EN_out_ports_0_getFlit(Router_1$EN_out_ports_0_getFlit),
					   .EN_out_ports_0_putCredits(Router_1$EN_out_ports_0_putCredits),
					   .EN_out_ports_1_getFlit(Router_1$EN_out_ports_1_getFlit),
					   .EN_out_ports_1_putCredits(Router_1$EN_out_ports_1_putCredits),
					   .EN_out_ports_2_getFlit(Router_1$EN_out_ports_2_getFlit),
					   .EN_out_ports_2_putCredits(Router_1$EN_out_ports_2_putCredits),
					   .EN_out_ports_3_getFlit(Router_1$EN_out_ports_3_getFlit),
					   .EN_out_ports_3_putCredits(Router_1$EN_out_ports_3_putCredits),
					   .EN_out_ports_4_getFlit(Router_1$EN_out_ports_4_getFlit),
					   .EN_out_ports_4_putCredits(Router_1$EN_out_ports_4_putCredits),
					   .in_ports_0_getCredits(Router_1$in_ports_0_getCredits),
					   .in_ports_1_getCredits(),
					   .in_ports_2_getCredits(Router_1$in_ports_2_getCredits),
					   .in_ports_3_getCredits(Router_1$in_ports_3_getCredits),
					   .in_ports_4_getCredits(),
					   .out_ports_0_getFlit(Router_1$out_ports_0_getFlit),
					   .out_ports_1_getFlit(Router_1$out_ports_1_getFlit),
					   .out_ports_2_getFlit(),
					   .out_ports_3_getFlit(),
					   .out_ports_4_getFlit(Router_1$out_ports_4_getFlit));

  // submodule Router_2
  RouterCore Router_2(.CLK(CLK),
					   .RST_N(RST_N),
					   .in_ports_0_putRoutedFlit_flit_in(Router_2$in_ports_0_putRoutedFlit_flit_in),
					   .in_ports_1_putRoutedFlit_flit_in(Router_2$in_ports_1_putRoutedFlit_flit_in),
					   .in_ports_2_putRoutedFlit_flit_in(Router_2$in_ports_2_putRoutedFlit_flit_in),
					   .in_ports_3_putRoutedFlit_flit_in(Router_2$in_ports_3_putRoutedFlit_flit_in),
					   .in_ports_4_putRoutedFlit_flit_in(Router_2$in_ports_4_putRoutedFlit_flit_in),
					   .out_ports_0_putCredits_cr_in(Router_2$out_ports_0_putCredits_cr_in),
					   .out_ports_1_putCredits_cr_in(Router_2$out_ports_1_putCredits_cr_in),
					   .out_ports_2_putCredits_cr_in(Router_2$out_ports_2_putCredits_cr_in),
					   .out_ports_3_putCredits_cr_in(Router_2$out_ports_3_putCredits_cr_in),
					   .out_ports_4_putCredits_cr_in(Router_2$out_ports_4_putCredits_cr_in),
					   .EN_in_ports_0_putRoutedFlit(Router_2$EN_in_ports_0_putRoutedFlit),
					   .EN_in_ports_0_getCredits(Router_2$EN_in_ports_0_getCredits),
					   .EN_in_ports_1_putRoutedFlit(Router_2$EN_in_ports_1_putRoutedFlit),
					   .EN_in_ports_1_getCredits(Router_2$EN_in_ports_1_getCredits),
					   .EN_in_ports_2_putRoutedFlit(Router_2$EN_in_ports_2_putRoutedFlit),
					   .EN_in_ports_2_getCredits(Router_2$EN_in_ports_2_getCredits),
					   .EN_in_ports_3_putRoutedFlit(Router_2$EN_in_ports_3_putRoutedFlit),
					   .EN_in_ports_3_getCredits(Router_2$EN_in_ports_3_getCredits),
					   .EN_in_ports_4_putRoutedFlit(Router_2$EN_in_ports_4_putRoutedFlit),
					   .EN_in_ports_4_getCredits(Router_2$EN_in_ports_4_getCredits),
					   .EN_out_ports_0_getFlit(Router_2$EN_out_ports_0_getFlit),
					   .EN_out_ports_0_putCredits(Router_2$EN_out_ports_0_putCredits),
					   .EN_out_ports_1_getFlit(Router_2$EN_out_ports_1_getFlit),
					   .EN_out_ports_1_putCredits(Router_2$EN_out_ports_1_putCredits),
					   .EN_out_ports_2_getFlit(Router_2$EN_out_ports_2_getFlit),
					   .EN_out_ports_2_putCredits(Router_2$EN_out_ports_2_putCredits),
					   .EN_out_ports_3_getFlit(Router_2$EN_out_ports_3_getFlit),
					   .EN_out_ports_3_putCredits(Router_2$EN_out_ports_3_putCredits),
					   .EN_out_ports_4_getFlit(Router_2$EN_out_ports_4_getFlit),
					   .EN_out_ports_4_putCredits(Router_2$EN_out_ports_4_putCredits),
					   .in_ports_0_getCredits(Router_2$in_ports_0_getCredits),
					   .in_ports_1_getCredits(Router_2$in_ports_1_getCredits),
					   .in_ports_2_getCredits(),
					   .in_ports_3_getCredits(),
					   .in_ports_4_getCredits(Router_2$in_ports_4_getCredits),
					   .out_ports_0_getFlit(Router_2$out_ports_0_getFlit),
					   .out_ports_1_getFlit(),
					   .out_ports_2_getFlit(Router_2$out_ports_2_getFlit),
					   .out_ports_3_getFlit(Router_2$out_ports_3_getFlit),
					   .out_ports_4_getFlit());

  // submodule Router_3
  RouterCore Router_3(.CLK(CLK),
					   .RST_N(RST_N),
					   .in_ports_0_putRoutedFlit_flit_in(Router_3$in_ports_0_putRoutedFlit_flit_in),
					   .in_ports_1_putRoutedFlit_flit_in(Router_3$in_ports_1_putRoutedFlit_flit_in),
					   .in_ports_2_putRoutedFlit_flit_in(Router_3$in_ports_2_putRoutedFlit_flit_in),
					   .in_ports_3_putRoutedFlit_flit_in(Router_3$in_ports_3_putRoutedFlit_flit_in),
					   .in_ports_4_putRoutedFlit_flit_in(Router_3$in_ports_4_putRoutedFlit_flit_in),
					   .out_ports_0_putCredits_cr_in(Router_3$out_ports_0_putCredits_cr_in),
					   .out_ports_1_putCredits_cr_in(Router_3$out_ports_1_putCredits_cr_in),
					   .out_ports_2_putCredits_cr_in(Router_3$out_ports_2_putCredits_cr_in),
					   .out_ports_3_putCredits_cr_in(Router_3$out_ports_3_putCredits_cr_in),
					   .out_ports_4_putCredits_cr_in(Router_3$out_ports_4_putCredits_cr_in),
					   .EN_in_ports_0_putRoutedFlit(Router_3$EN_in_ports_0_putRoutedFlit),
					   .EN_in_ports_0_getCredits(Router_3$EN_in_ports_0_getCredits),
					   .EN_in_ports_1_putRoutedFlit(Router_3$EN_in_ports_1_putRoutedFlit),
					   .EN_in_ports_1_getCredits(Router_3$EN_in_ports_1_getCredits),
					   .EN_in_ports_2_putRoutedFlit(Router_3$EN_in_ports_2_putRoutedFlit),
					   .EN_in_ports_2_getCredits(Router_3$EN_in_ports_2_getCredits),
					   .EN_in_ports_3_putRoutedFlit(Router_3$EN_in_ports_3_putRoutedFlit),
					   .EN_in_ports_3_getCredits(Router_3$EN_in_ports_3_getCredits),
					   .EN_in_ports_4_putRoutedFlit(Router_3$EN_in_ports_4_putRoutedFlit),
					   .EN_in_ports_4_getCredits(Router_3$EN_in_ports_4_getCredits),
					   .EN_out_ports_0_getFlit(Router_3$EN_out_ports_0_getFlit),
					   .EN_out_ports_0_putCredits(Router_3$EN_out_ports_0_putCredits),
					   .EN_out_ports_1_getFlit(Router_3$EN_out_ports_1_getFlit),
					   .EN_out_ports_1_putCredits(Router_3$EN_out_ports_1_putCredits),
					   .EN_out_ports_2_getFlit(Router_3$EN_out_ports_2_getFlit),
					   .EN_out_ports_2_putCredits(Router_3$EN_out_ports_2_putCredits),
					   .EN_out_ports_3_getFlit(Router_3$EN_out_ports_3_getFlit),
					   .EN_out_ports_3_putCredits(Router_3$EN_out_ports_3_putCredits),
					   .EN_out_ports_4_getFlit(Router_3$EN_out_ports_4_getFlit),
					   .EN_out_ports_4_putCredits(Router_3$EN_out_ports_4_putCredits),
					   .in_ports_0_getCredits(Router_3$in_ports_0_getCredits),
					   .in_ports_1_getCredits(),
					   .in_ports_2_getCredits(),
					   .in_ports_3_getCredits(Router_3$in_ports_3_getCredits),
					   .in_ports_4_getCredits(Router_3$in_ports_4_getCredits),
					   .out_ports_0_getFlit(Router_3$out_ports_0_getFlit),
					   .out_ports_1_getFlit(Router_3$out_ports_1_getFlit),
					   .out_ports_2_getFlit(Router_3$out_ports_2_getFlit),
					   .out_ports_3_getFlit(),
					   .out_ports_4_getFlit());

  // submodule RoutingTable_1_bank
  assign RoutingTable_1_bank$ADDR_1 =
	     send_ports_1_putFlit_flit_in[10:9] ;
  assign RoutingTable_1_bank$ADDR_IN = 2'h0 ;
  assign RoutingTable_1_bank$D_IN = 3'h0 ;
  assign RoutingTable_1_bank$WE = 1'b0 ;

  // submodule RoutingTable_1_bank_1
  assign RoutingTable_1_bank_1$ADDR_1 = 2'h0 ;
  assign RoutingTable_1_bank_1$ADDR_IN = 2'h0 ;
  assign RoutingTable_1_bank_1$D_IN = 3'h0 ;
  assign RoutingTable_1_bank_1$WE = 1'b0 ;

  // submodule RoutingTable_1_bank_2
  assign RoutingTable_1_bank_2$ADDR_1 =
	     Router_3$out_ports_2_getFlit[10:9] ;
  assign RoutingTable_1_bank_2$ADDR_IN = 2'h0 ;
  assign RoutingTable_1_bank_2$D_IN = 3'h0 ;
  assign RoutingTable_1_bank_2$WE = 1'b0 ;

  // submodule RoutingTable_1_bank_3
  assign RoutingTable_1_bank_3$ADDR_1 =
	     Router_0$out_ports_3_getFlit[10:9] ;
  assign RoutingTable_1_bank_3$ADDR_IN = 2'h0 ;
  assign RoutingTable_1_bank_3$D_IN = 3'h0 ;
  assign RoutingTable_1_bank_3$WE = 1'b0 ;

  // submodule RoutingTable_1_bank_4
  assign RoutingTable_1_bank_4$ADDR_1 = 2'h0 ;
  assign RoutingTable_1_bank_4$ADDR_IN = 2'h0 ;
  assign RoutingTable_1_bank_4$D_IN = 3'h0 ;
  assign RoutingTable_1_bank_4$WE = 1'b0 ;

  // submodule RoutingTable_2_bank
  assign RoutingTable_2_bank$ADDR_1 =
	     send_ports_2_putFlit_flit_in[10:9] ;
  assign RoutingTable_2_bank$ADDR_IN = 2'h0 ;
  assign RoutingTable_2_bank$D_IN = 3'h0 ;
  assign RoutingTable_2_bank$WE = 1'b0 ;

  // submodule RoutingTable_2_bank_1
  assign RoutingTable_2_bank_1$ADDR_1 =
	     Router_3$out_ports_1_getFlit[10:9] ;
  assign RoutingTable_2_bank_1$ADDR_IN = 2'h0 ;
  assign RoutingTable_2_bank_1$D_IN = 3'h0 ;
  assign RoutingTable_2_bank_1$WE = 1'b0 ;

  // submodule RoutingTable_2_bank_2
  assign RoutingTable_2_bank_2$ADDR_1 = 2'h0 ;
  assign RoutingTable_2_bank_2$ADDR_IN = 2'h0 ;
  assign RoutingTable_2_bank_2$D_IN = 3'h0 ;
  assign RoutingTable_2_bank_2$WE = 1'b0 ;

  // submodule RoutingTable_2_bank_3
  assign RoutingTable_2_bank_3$ADDR_1 = 2'h0 ;
  assign RoutingTable_2_bank_3$ADDR_IN = 2'h0 ;
  assign RoutingTable_2_bank_3$D_IN = 3'h0 ;
  assign RoutingTable_2_bank_3$WE = 1'b0 ;

  // submodule RoutingTable_2_bank_4
  assign RoutingTable_2_bank_4$ADDR_1 =
	     Router_0$out_ports_4_getFlit[10:9] ;
  assign RoutingTable_2_bank_4$ADDR_IN = 2'h0 ;
  assign RoutingTable_2_bank_4$D_IN = 3'h0 ;
  assign RoutingTable_2_bank_4$WE = 1'b0 ;

  // submodule RoutingTable_3_bank
  assign RoutingTable_3_bank$ADDR_1 =
	     send_ports_3_putFlit_flit_in[10:9] ;
  assign RoutingTable_3_bank$ADDR_IN = 2'h0 ;
  assign RoutingTable_3_bank$D_IN = 3'h0 ;
  assign RoutingTable_3_bank$WE = 1'b0 ;

  // submodule RoutingTable_3_bank_1
  assign RoutingTable_3_bank_1$ADDR_1 = 2'h0 ;
  assign RoutingTable_3_bank_1$ADDR_IN = 2'h0 ;
  assign RoutingTable_3_bank_1$D_IN = 3'h0 ;
  assign RoutingTable_3_bank_1$WE = 1'b0 ;

  // submodule RoutingTable_3_bank_2
  assign RoutingTable_3_bank_2$ADDR_1 = 2'h0 ;
  assign RoutingTable_3_bank_2$ADDR_IN = 2'h0 ;
  assign RoutingTable_3_bank_2$D_IN = 3'h0 ;
  assign RoutingTable_3_bank_2$WE = 1'b0 ;

  // submodule RoutingTable_3_bank_3
  assign RoutingTable_3_bank_3$ADDR_1 =
	     Router_2$out_ports_3_getFlit[10:9] ;
  assign RoutingTable_3_bank_3$ADDR_IN = 2'h0 ;
  assign RoutingTable_3_bank_3$D_IN = 3'h0 ;
  assign RoutingTable_3_bank_3$WE = 1'b0 ;

  // submodule RoutingTable_3_bank_4
  assign RoutingTable_3_bank_4$ADDR_1 =
	     Router_1$out_ports_4_getFlit[10:9] ;
  assign RoutingTable_3_bank_4$ADDR_IN = 2'h0 ;
  assign RoutingTable_3_bank_4$D_IN = 3'h0 ;
  assign RoutingTable_3_bank_4$WE = 1'b0 ;

  // submodule RoutingTable_0_bank
  assign RoutingTable_0_bank$ADDR_1 =
	     send_ports_0_putFlit_flit_in[10:9] ;
  assign RoutingTable_0_bank$ADDR_IN = 2'h0 ;
  assign RoutingTable_0_bank$D_IN = 3'h0 ;
  assign RoutingTable_0_bank$WE = 1'b0 ;

  // submodule RoutingTable_0_bank_1
  assign RoutingTable_0_bank_1$ADDR_1 =
	     Router_1$out_ports_1_getFlit[10:9] ;
  assign RoutingTable_0_bank_1$ADDR_IN = 2'h0 ;
  assign RoutingTable_0_bank_1$D_IN = 3'h0 ;
  assign RoutingTable_0_bank_1$WE = 1'b0 ;

  // submodule RoutingTable_0_bank_2
  assign RoutingTable_0_bank_2$ADDR_1 =
	     Router_2$out_ports_2_getFlit[10:9] ;
  assign RoutingTable_0_bank_2$ADDR_IN = 2'h0 ;
  assign RoutingTable_0_bank_2$D_IN = 3'h0 ;
  assign RoutingTable_0_bank_2$WE = 1'b0 ;

  // submodule RoutingTable_0_bank_3
  assign RoutingTable_0_bank_3$ADDR_1 = 2'h0 ;
  assign RoutingTable_0_bank_3$ADDR_IN = 2'h0 ;
  assign RoutingTable_0_bank_3$D_IN = 3'h0 ;
  assign RoutingTable_0_bank_3$WE = 1'b0 ;

  // submodule RoutingTable_0_bank_4
  assign RoutingTable_0_bank_4$ADDR_1 = 2'h0 ;
  assign RoutingTable_0_bank_4$ADDR_IN = 2'h0 ;
  assign RoutingTable_0_bank_4$D_IN = 3'h0 ;
  assign RoutingTable_0_bank_4$WE = 1'b0 ;

  // submodule Router_0
  assign Router_0$in_ports_0_putRoutedFlit_flit_in =
	     { send_ports_0_putFlit_flit_in,
	       RoutingTable_0_bank$D_OUT_1 } ;
  assign Router_0$in_ports_1_putRoutedFlit_flit_in =
	     { Router_1$out_ports_1_getFlit,
	       RoutingTable_0_bank_1$D_OUT_1 } ;
  assign Router_0$in_ports_2_putRoutedFlit_flit_in =
	     { Router_2$out_ports_2_getFlit,
	       RoutingTable_0_bank_2$D_OUT_1 } ;
  assign Router_0$in_ports_3_putRoutedFlit_flit_in = 16'h0 ;
  assign Router_0$in_ports_4_putRoutedFlit_flit_in = 16'h0 ;
  assign Router_0$out_ports_0_putCredits_cr_in =
	     recv_ports_0_putCredits_cr_in ;
  assign Router_0$out_ports_1_putCredits_cr_in = 2'h0 ;
  assign Router_0$out_ports_2_putCredits_cr_in = 2'h0 ;
  assign Router_0$out_ports_3_putCredits_cr_in =
	     Router_1$in_ports_3_getCredits ;
  assign Router_0$out_ports_4_putCredits_cr_in =
	     Router_2$in_ports_4_getCredits ;
  assign Router_0$EN_in_ports_0_putRoutedFlit =
	     EN_send_ports_0_putFlit ;
  assign Router_0$EN_in_ports_0_getCredits =
	     EN_send_ports_0_getCredits ;
  assign Router_0$EN_in_ports_1_putRoutedFlit = 1'd1 ;
  assign Router_0$EN_in_ports_1_getCredits = 1'd1 ;
  assign Router_0$EN_in_ports_2_putRoutedFlit = 1'd1 ;
  assign Router_0$EN_in_ports_2_getCredits = 1'd1 ;
  assign Router_0$EN_in_ports_3_putRoutedFlit = 1'b0 ;
  assign Router_0$EN_in_ports_3_getCredits = 1'b0 ;
  assign Router_0$EN_in_ports_4_putRoutedFlit = 1'b0 ;
  assign Router_0$EN_in_ports_4_getCredits = 1'b0 ;
  assign Router_0$EN_out_ports_0_getFlit =
	     EN_recv_ports_0_getFlit ;
  assign Router_0$EN_out_ports_0_putCredits =
	     EN_recv_ports_0_putCredits ;
  assign Router_0$EN_out_ports_1_getFlit = 1'b0 ;
  assign Router_0$EN_out_ports_1_putCredits = 1'b0 ;
  assign Router_0$EN_out_ports_2_getFlit = 1'b0 ;
  assign Router_0$EN_out_ports_2_putCredits = 1'b0 ;
  assign Router_0$EN_out_ports_3_getFlit = 1'd1 ;
  assign Router_0$EN_out_ports_3_putCredits = 1'd1 ;
  assign Router_0$EN_out_ports_4_getFlit = 1'd1 ;
  assign Router_0$EN_out_ports_4_putCredits = 1'd1 ;

  // submodule Router_1
  assign Router_1$in_ports_0_putRoutedFlit_flit_in =
	     { send_ports_1_putFlit_flit_in,
	       RoutingTable_1_bank$D_OUT_1 } ;
  assign Router_1$in_ports_1_putRoutedFlit_flit_in = 16'h0 ;
  assign Router_1$in_ports_2_putRoutedFlit_flit_in =
	     { Router_3$out_ports_2_getFlit,
	       RoutingTable_1_bank_2$D_OUT_1 } ;
  assign Router_1$in_ports_3_putRoutedFlit_flit_in =
	     { Router_0$out_ports_3_getFlit,
	       RoutingTable_1_bank_3$D_OUT_1 } ;
  assign Router_1$in_ports_4_putRoutedFlit_flit_in = 16'h0 ;
  assign Router_1$out_ports_0_putCredits_cr_in =
	     recv_ports_1_putCredits_cr_in ;
  assign Router_1$out_ports_1_putCredits_cr_in =
	     Router_0$in_ports_1_getCredits ;
  assign Router_1$out_ports_2_putCredits_cr_in = 2'h0 ;
  assign Router_1$out_ports_3_putCredits_cr_in = 2'h0 ;
  assign Router_1$out_ports_4_putCredits_cr_in =
	     Router_3$in_ports_4_getCredits ;
  assign Router_1$EN_in_ports_0_putRoutedFlit =
	     EN_send_ports_1_putFlit ;
  assign Router_1$EN_in_ports_0_getCredits =
	     EN_send_ports_1_getCredits ;
  assign Router_1$EN_in_ports_1_putRoutedFlit = 1'b0 ;
  assign Router_1$EN_in_ports_1_getCredits = 1'b0 ;
  assign Router_1$EN_in_ports_2_putRoutedFlit = 1'd1 ;
  assign Router_1$EN_in_ports_2_getCredits = 1'd1 ;
  assign Router_1$EN_in_ports_3_putRoutedFlit = 1'd1 ;
  assign Router_1$EN_in_ports_3_getCredits = 1'd1 ;
  assign Router_1$EN_in_ports_4_putRoutedFlit = 1'b0 ;
  assign Router_1$EN_in_ports_4_getCredits = 1'b0 ;
  assign Router_1$EN_out_ports_0_getFlit =
	     EN_recv_ports_1_getFlit ;
  assign Router_1$EN_out_ports_0_putCredits =
	     EN_recv_ports_1_putCredits ;
  assign Router_1$EN_out_ports_1_getFlit = 1'd1 ;
  assign Router_1$EN_out_ports_1_putCredits = 1'd1 ;
  assign Router_1$EN_out_ports_2_getFlit = 1'b0 ;
  assign Router_1$EN_out_ports_2_putCredits = 1'b0 ;
  assign Router_1$EN_out_ports_3_getFlit = 1'b0 ;
  assign Router_1$EN_out_ports_3_putCredits = 1'b0 ;
  assign Router_1$EN_out_ports_4_getFlit = 1'd1 ;
  assign Router_1$EN_out_ports_4_putCredits = 1'd1 ;

  // submodule Router_2
  assign Router_2$in_ports_0_putRoutedFlit_flit_in =
	     { send_ports_2_putFlit_flit_in,
	       RoutingTable_2_bank$D_OUT_1 } ;
  assign Router_2$in_ports_1_putRoutedFlit_flit_in =
	     { Router_3$out_ports_1_getFlit,
	       RoutingTable_2_bank_1$D_OUT_1 } ;
  assign Router_2$in_ports_2_putRoutedFlit_flit_in = 16'h0 ;
  assign Router_2$in_ports_3_putRoutedFlit_flit_in = 16'h0 ;
  assign Router_2$in_ports_4_putRoutedFlit_flit_in =
	     { Router_0$out_ports_4_getFlit,
	       RoutingTable_2_bank_4$D_OUT_1 } ;
  assign Router_2$out_ports_0_putCredits_cr_in =
	     recv_ports_2_putCredits_cr_in ;
  assign Router_2$out_ports_1_putCredits_cr_in = 2'h0 ;
  assign Router_2$out_ports_2_putCredits_cr_in =
	     Router_0$in_ports_2_getCredits ;
  assign Router_2$out_ports_3_putCredits_cr_in =
	     Router_3$in_ports_3_getCredits ;
  assign Router_2$out_ports_4_putCredits_cr_in = 2'h0 ;
  assign Router_2$EN_in_ports_0_putRoutedFlit =
	     EN_send_ports_2_putFlit ;
  assign Router_2$EN_in_ports_0_getCredits =
	     EN_send_ports_2_getCredits ;
  assign Router_2$EN_in_ports_1_putRoutedFlit = 1'd1 ;
  assign Router_2$EN_in_ports_1_getCredits = 1'd1 ;
  assign Router_2$EN_in_ports_2_putRoutedFlit = 1'b0 ;
  assign Router_2$EN_in_ports_2_getCredits = 1'b0 ;
  assign Router_2$EN_in_ports_3_putRoutedFlit = 1'b0 ;
  assign Router_2$EN_in_ports_3_getCredits = 1'b0 ;
  assign Router_2$EN_in_ports_4_putRoutedFlit = 1'd1 ;
  assign Router_2$EN_in_ports_4_getCredits = 1'd1 ;
  assign Router_2$EN_out_ports_0_getFlit =
	     EN_recv_ports_2_getFlit ;
  assign Router_2$EN_out_ports_0_putCredits =
	     EN_recv_ports_2_putCredits ;
  assign Router_2$EN_out_ports_1_getFlit = 1'b0 ;
  assign Router_2$EN_out_ports_1_putCredits = 1'b0 ;
  assign Router_2$EN_out_ports_2_getFlit = 1'd1 ;
  assign Router_2$EN_out_ports_2_putCredits = 1'd1 ;
  assign Router_2$EN_out_ports_3_getFlit = 1'd1 ;
  assign Router_2$EN_out_ports_3_putCredits = 1'd1 ;
  assign Router_2$EN_out_ports_4_getFlit = 1'b0 ;
  assign Router_2$EN_out_ports_4_putCredits = 1'b0 ;

  // submodule Router_3
  assign Router_3$in_ports_0_putRoutedFlit_flit_in =
	     { send_ports_3_putFlit_flit_in,
	       RoutingTable_3_bank$D_OUT_1 } ;
  assign Router_3$in_ports_1_putRoutedFlit_flit_in = 16'h0 ;
  assign Router_3$in_ports_2_putRoutedFlit_flit_in = 16'h0 ;
  assign Router_3$in_ports_3_putRoutedFlit_flit_in =
	     { Router_2$out_ports_3_getFlit,
	       RoutingTable_3_bank_3$D_OUT_1 } ;
  assign Router_3$in_ports_4_putRoutedFlit_flit_in =
	     { Router_1$out_ports_4_getFlit,
	       RoutingTable_3_bank_4$D_OUT_1 } ;
  assign Router_3$out_ports_0_putCredits_cr_in =
	     recv_ports_3_putCredits_cr_in ;
  assign Router_3$out_ports_1_putCredits_cr_in =
	     Router_2$in_ports_1_getCredits ;
  assign Router_3$out_ports_2_putCredits_cr_in =
	     Router_1$in_ports_2_getCredits ;
  assign Router_3$out_ports_3_putCredits_cr_in = 2'h0 ;
  assign Router_3$out_ports_4_putCredits_cr_in = 2'h0 ;
  assign Router_3$EN_in_ports_0_putRoutedFlit =
	     EN_send_ports_3_putFlit ;
  assign Router_3$EN_in_ports_0_getCredits =
	     EN_send_ports_3_getCredits ;
  assign Router_3$EN_in_ports_1_putRoutedFlit = 1'b0 ;
  assign Router_3$EN_in_ports_1_getCredits = 1'b0 ;
  assign Router_3$EN_in_ports_2_putRoutedFlit = 1'b0 ;
  assign Router_3$EN_in_ports_2_getCredits = 1'b0 ;
  assign Router_3$EN_in_ports_3_putRoutedFlit = 1'd1 ;
  assign Router_3$EN_in_ports_3_getCredits = 1'd1 ;
  assign Router_3$EN_in_ports_4_putRoutedFlit = 1'd1 ;
  assign Router_3$EN_in_ports_4_getCredits = 1'd1 ;
  assign Router_3$EN_out_ports_0_getFlit =
	     EN_recv_ports_3_getFlit ;
  assign Router_3$EN_out_ports_0_putCredits =
	     EN_recv_ports_3_putCredits ;
  assign Router_3$EN_out_ports_1_getFlit = 1'd1 ;
  assign Router_3$EN_out_ports_1_putCredits = 1'd1 ;
  assign Router_3$EN_out_ports_2_getFlit = 1'd1 ;
  assign Router_3$EN_out_ports_2_putCredits = 1'd1 ;
  assign Router_3$EN_out_ports_3_getFlit = 1'b0 ;
  assign Router_3$EN_out_ports_3_putCredits = 1'b0 ;
  assign Router_3$EN_out_ports_4_getFlit = 1'b0 ;
  assign Router_3$EN_out_ports_4_putCredits = 1'b0 ;

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N)
      if (EN_send_ports_0_putFlit && send_ports_0_putFlit_flit_in[12])
	$write("");
    if (RST_N)
      if (EN_send_ports_1_putFlit && send_ports_1_putFlit_flit_in[12])
	$write("");
    if (RST_N)
      if (EN_send_ports_2_putFlit && send_ports_2_putFlit_flit_in[12])
	$write("");
    if (RST_N)
      if (EN_send_ports_3_putFlit && send_ports_3_putFlit_flit_in[12])
	$write("");
    if (RST_N)
      if (Router_1$out_ports_1_getFlit[12]) $write("");
    if (RST_N)
      if (Router_3$out_ports_1_getFlit[12]) $write("");
    if (RST_N)
      if (Router_2$out_ports_2_getFlit[12]) $write("");
    if (RST_N)
      if (Router_3$out_ports_2_getFlit[12]) $write("");
    if (RST_N)
      if (Router_0$out_ports_3_getFlit[12]) $write("");
    if (RST_N)
      if (Router_2$out_ports_3_getFlit[12]) $write("");
    if (RST_N)
      if (Router_0$out_ports_4_getFlit[12]) $write("");
    if (RST_N)
      if (Router_1$out_ports_4_getFlit[12]) $write("");
  end
  // synopsys translate_on
endmodule  // mkNetwork

