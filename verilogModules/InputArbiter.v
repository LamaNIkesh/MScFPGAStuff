

//--------Input arbiter module------------------

// Ports:
// Name                         I/O  size props
// input_arbs_0_select            O     5
// input_arbs_1_select            O     5
// input_arbs_2_select            O     5
// input_arbs_3_select            O     5
// input_arbs_4_select            O     5
// CLK                            I     1 unused
// RST_N                          I     1 unused
// input_arbs_0_select_requests   I     5
// input_arbs_1_select_requests   I     5
// input_arbs_2_select_requests   I     5
// input_arbs_3_select_requests   I     5
// input_arbs_4_select_requests   I     5
// EN_input_arbs_0_next           I     1 unused
// EN_input_arbs_1_next           I     1 unused
// EN_input_arbs_2_next           I     1 unused
// EN_input_arbs_3_next           I     1 unused
// EN_input_arbs_4_next           I     1 unused
//
// Combinational paths from inputs to outputs:
//   input_arbs_0_select_requests -> input_arbs_0_select
//   input_arbs_1_select_requests -> input_arbs_1_select
//   input_arbs_2_select_requests -> input_arbs_2_select
//   input_arbs_3_select_requests -> input_arbs_3_select
//   input_arbs_4_select_requests -> input_arbs_4_select
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
`define BSV_ASSIGNMENT_DELAY
`endif

module InputArbiter(CLK,
				   RST_N,

				   input_arbs_0_select_requests,
				   input_arbs_0_select,

				   EN_input_arbs_0_next,

				   input_arbs_1_select_requests,
				   input_arbs_1_select,

				   EN_input_arbs_1_next,

				   input_arbs_2_select_requests,
				   input_arbs_2_select,

				   EN_input_arbs_2_next,

				   input_arbs_3_select_requests,
				   input_arbs_3_select,

				   EN_input_arbs_3_next,

				   input_arbs_4_select_requests,
				   input_arbs_4_select,

				   EN_input_arbs_4_next);
  input  CLK;
  input  RST_N;

  // value method input_arbs_0_select
  input  [4 : 0] input_arbs_0_select_requests;
  output [4 : 0] input_arbs_0_select;

  // action method input_arbs_0_next
  input  EN_input_arbs_0_next;

  // value method input_arbs_1_select
  input  [4 : 0] input_arbs_1_select_requests;
  output [4 : 0] input_arbs_1_select;

  // action method input_arbs_1_next
  input  EN_input_arbs_1_next;

  // value method input_arbs_2_select
  input  [4 : 0] input_arbs_2_select_requests;
  output [4 : 0] input_arbs_2_select;

  // action method input_arbs_2_next
  input  EN_input_arbs_2_next;

  // value method input_arbs_3_select
  input  [4 : 0] input_arbs_3_select_requests;
  output [4 : 0] input_arbs_3_select;

  // action method input_arbs_3_next
  input  EN_input_arbs_3_next;

  // value method input_arbs_4_select
  input  [4 : 0] input_arbs_4_select_requests;
  output [4 : 0] input_arbs_4_select;

  // action method input_arbs_4_next
  input  EN_input_arbs_4_next;

  // signals for module outputs
  wire [4 : 0] input_arbs_0_select,
	       input_arbs_1_select,
	       input_arbs_2_select,
	       input_arbs_3_select,
	       input_arbs_4_select;

  // value method input_arbs_0_select
  assign input_arbs_0_select =
	     { input_arbs_0_select_requests[4],
	       !input_arbs_0_select_requests[4] &&
	       input_arbs_0_select_requests[3],
	       !input_arbs_0_select_requests[4] &&
	       !input_arbs_0_select_requests[3] &&
	       input_arbs_0_select_requests[2],
	       !input_arbs_0_select_requests[4] &&
	       !input_arbs_0_select_requests[3] &&
	       !input_arbs_0_select_requests[2] &&
	       input_arbs_0_select_requests[1],
	       !input_arbs_0_select_requests[4] &&
	       !input_arbs_0_select_requests[3] &&
	       !input_arbs_0_select_requests[2] &&
	       !input_arbs_0_select_requests[1] &&
	       input_arbs_0_select_requests[0] } ;

  // value method input_arbs_1_select
  assign input_arbs_1_select =
	     { !input_arbs_1_select_requests[0] &&
	       input_arbs_1_select_requests[4],
	       !input_arbs_1_select_requests[0] &&
	       !input_arbs_1_select_requests[4] &&
	       input_arbs_1_select_requests[3],
	       !input_arbs_1_select_requests[0] &&
	       !input_arbs_1_select_requests[4] &&
	       !input_arbs_1_select_requests[3] &&
	       input_arbs_1_select_requests[2],
	       !input_arbs_1_select_requests[0] &&
	       !input_arbs_1_select_requests[4] &&
	       !input_arbs_1_select_requests[3] &&
	       !input_arbs_1_select_requests[2] &&
	       input_arbs_1_select_requests[1],
	       input_arbs_1_select_requests[0] } ;

  // value method input_arbs_2_select
  assign input_arbs_2_select =
	     { !input_arbs_2_select_requests[1] &&
	       !input_arbs_2_select_requests[0] &&
	       input_arbs_2_select_requests[4],
	       !input_arbs_2_select_requests[1] &&
	       !input_arbs_2_select_requests[0] &&
	       !input_arbs_2_select_requests[4] &&
	       input_arbs_2_select_requests[3],
	       !input_arbs_2_select_requests[1] &&
	       !input_arbs_2_select_requests[0] &&
	       !input_arbs_2_select_requests[4] &&
	       !input_arbs_2_select_requests[3] &&
	       input_arbs_2_select_requests[2],
	       input_arbs_2_select_requests[1],
	       !input_arbs_2_select_requests[1] &&
	       input_arbs_2_select_requests[0] } ;

  // value method input_arbs_3_select
  assign input_arbs_3_select =
	     { !input_arbs_3_select_requests[2] &&
	       !input_arbs_3_select_requests[1] &&
	       !input_arbs_3_select_requests[0] &&
	       input_arbs_3_select_requests[4],
	       !input_arbs_3_select_requests[2] &&
	       !input_arbs_3_select_requests[1] &&
	       !input_arbs_3_select_requests[0] &&
	       !input_arbs_3_select_requests[4] &&
	       input_arbs_3_select_requests[3],
	       input_arbs_3_select_requests[2],
	       !input_arbs_3_select_requests[2] &&
	       input_arbs_3_select_requests[1],
	       !input_arbs_3_select_requests[2] &&
	       !input_arbs_3_select_requests[1] &&
	       input_arbs_3_select_requests[0] } ;

  // value method input_arbs_4_select
  assign input_arbs_4_select =
	     { !input_arbs_4_select_requests[3] &&
	       !input_arbs_4_select_requests[2] &&
	       !input_arbs_4_select_requests[1] &&
	       !input_arbs_4_select_requests[0] &&
	       input_arbs_4_select_requests[4],
	       input_arbs_4_select_requests[3],
	       !input_arbs_4_select_requests[3] &&
	       input_arbs_4_select_requests[2],
	       !input_arbs_4_select_requests[3] &&
	       !input_arbs_4_select_requests[2] &&
	       input_arbs_4_select_requests[1],
	       !input_arbs_4_select_requests[3] &&
	       !input_arbs_4_select_requests[2] &&
	       !input_arbs_4_select_requests[1] &&
	       input_arbs_4_select_requests[0] } ;
endmodule  // mkRouterInputArbitersStatic

