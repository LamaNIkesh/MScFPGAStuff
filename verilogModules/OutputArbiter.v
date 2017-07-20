


// Ports:
// Name                         I/O  size props
// output_arbs_0_select           O     5
// output_arbs_1_select           O     5
// output_arbs_2_select           O     5
// output_arbs_3_select           O     5
// output_arbs_4_select           O     5
// CLK                            I     1 unused
// RST_N                          I     1 unused
// output_arbs_0_select_requests  I     5
// output_arbs_1_select_requests  I     5
// output_arbs_2_select_requests  I     5
// output_arbs_3_select_requests  I     5
// output_arbs_4_select_requests  I     5
// EN_output_arbs_0_next          I     1 unused
// EN_output_arbs_1_next          I     1 unused
// EN_output_arbs_2_next          I     1 unused
// EN_output_arbs_3_next          I     1 unused
// EN_output_arbs_4_next          I     1 unused
//
// Combinational paths from inputs to outputs:
//   output_arbs_0_select_requests -> output_arbs_0_select
//   output_arbs_1_select_requests -> output_arbs_1_select
//   output_arbs_2_select_requests -> output_arbs_2_select
//   output_arbs_3_select_requests -> output_arbs_3_select
//   output_arbs_4_select_requests -> output_arbs_4_select
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
`define BSV_ASSIGNMENT_DELAY
`endif

module OutputArbiter(CLK,
				    RST_N,

				    output_arbs_0_select_requests,
				    output_arbs_0_select,

				    EN_output_arbs_0_next,

				    output_arbs_1_select_requests,
				    output_arbs_1_select,

				    EN_output_arbs_1_next,

				    output_arbs_2_select_requests,
				    output_arbs_2_select,

				    EN_output_arbs_2_next,

				    output_arbs_3_select_requests,
				    output_arbs_3_select,

				    EN_output_arbs_3_next,

				    output_arbs_4_select_requests,
				    output_arbs_4_select,

				    EN_output_arbs_4_next);
  input  CLK;
  input  RST_N;

  // value method output_arbs_0_select
  input  [4 : 0] output_arbs_0_select_requests;
  output [4 : 0] output_arbs_0_select;

  // action method output_arbs_0_next
  input  EN_output_arbs_0_next;

  // value method output_arbs_1_select
  input  [4 : 0] output_arbs_1_select_requests;
  output [4 : 0] output_arbs_1_select;

  // action method output_arbs_1_next
  input  EN_output_arbs_1_next;

  // value method output_arbs_2_select
  input  [4 : 0] output_arbs_2_select_requests;
  output [4 : 0] output_arbs_2_select;

  // action method output_arbs_2_next
  input  EN_output_arbs_2_next;

  // value method output_arbs_3_select
  input  [4 : 0] output_arbs_3_select_requests;
  output [4 : 0] output_arbs_3_select;

  // action method output_arbs_3_next
  input  EN_output_arbs_3_next;

  // value method output_arbs_4_select
  input  [4 : 0] output_arbs_4_select_requests;
  output [4 : 0] output_arbs_4_select;

  // action method output_arbs_4_next
  input  EN_output_arbs_4_next;

  // signals for module outputs
  wire [4 : 0] output_arbs_0_select,
	       output_arbs_1_select,
	       output_arbs_2_select,
	       output_arbs_3_select,
	       output_arbs_4_select;

  // value method output_arbs_0_select
  assign output_arbs_0_select =
	     { output_arbs_0_select_requests[4],
	       !output_arbs_0_select_requests[4] &&
	       output_arbs_0_select_requests[3],
	       !output_arbs_0_select_requests[4] &&
	       !output_arbs_0_select_requests[3] &&
	       output_arbs_0_select_requests[2],
	       !output_arbs_0_select_requests[4] &&
	       !output_arbs_0_select_requests[3] &&
	       !output_arbs_0_select_requests[2] &&
	       output_arbs_0_select_requests[1],
	       !output_arbs_0_select_requests[4] &&
	       !output_arbs_0_select_requests[3] &&
	       !output_arbs_0_select_requests[2] &&
	       !output_arbs_0_select_requests[1] &&
	       output_arbs_0_select_requests[0] } ;

  // value method output_arbs_1_select
  assign output_arbs_1_select =
	     { !output_arbs_1_select_requests[0] &&
	       output_arbs_1_select_requests[4],
	       !output_arbs_1_select_requests[0] &&
	       !output_arbs_1_select_requests[4] &&
	       output_arbs_1_select_requests[3],
	       !output_arbs_1_select_requests[0] &&
	       !output_arbs_1_select_requests[4] &&
	       !output_arbs_1_select_requests[3] &&
	       output_arbs_1_select_requests[2],
	       !output_arbs_1_select_requests[0] &&
	       !output_arbs_1_select_requests[4] &&
	       !output_arbs_1_select_requests[3] &&
	       !output_arbs_1_select_requests[2] &&
	       output_arbs_1_select_requests[1],
	       output_arbs_1_select_requests[0] } ;

  // value method output_arbs_2_select
  assign output_arbs_2_select =
	     { !output_arbs_2_select_requests[1] &&
	       !output_arbs_2_select_requests[0] &&
	       output_arbs_2_select_requests[4],
	       !output_arbs_2_select_requests[1] &&
	       !output_arbs_2_select_requests[0] &&
	       !output_arbs_2_select_requests[4] &&
	       output_arbs_2_select_requests[3],
	       !output_arbs_2_select_requests[1] &&
	       !output_arbs_2_select_requests[0] &&
	       !output_arbs_2_select_requests[4] &&
	       !output_arbs_2_select_requests[3] &&
	       output_arbs_2_select_requests[2],
	       output_arbs_2_select_requests[1],
	       !output_arbs_2_select_requests[1] &&
	       output_arbs_2_select_requests[0] } ;

  // value method output_arbs_3_select
  assign output_arbs_3_select =
	     { !output_arbs_3_select_requests[2] &&
	       !output_arbs_3_select_requests[1] &&
	       !output_arbs_3_select_requests[0] &&
	       output_arbs_3_select_requests[4],
	       !output_arbs_3_select_requests[2] &&
	       !output_arbs_3_select_requests[1] &&
	       !output_arbs_3_select_requests[0] &&
	       !output_arbs_3_select_requests[4] &&
	       output_arbs_3_select_requests[3],
	       output_arbs_3_select_requests[2],
	       !output_arbs_3_select_requests[2] &&
	       output_arbs_3_select_requests[1],
	       !output_arbs_3_select_requests[2] &&
	       !output_arbs_3_select_requests[1] &&
	       output_arbs_3_select_requests[0] } ;

  // value method output_arbs_4_select
  assign output_arbs_4_select =
	     { !output_arbs_4_select_requests[3] &&
	       !output_arbs_4_select_requests[2] &&
	       !output_arbs_4_select_requests[1] &&
	       !output_arbs_4_select_requests[0] &&
	       output_arbs_4_select_requests[4],
	       output_arbs_4_select_requests[3],
	       !output_arbs_4_select_requests[3] &&
	       output_arbs_4_select_requests[2],
	       !output_arbs_4_select_requests[3] &&
	       !output_arbs_4_select_requests[2] &&
	       output_arbs_4_select_requests[1],
	       !output_arbs_4_select_requests[3] &&
	       !output_arbs_4_select_requests[2] &&
	       !output_arbs_4_select_requests[1] &&
	       output_arbs_4_select_requests[0] } ;
endmodule  

