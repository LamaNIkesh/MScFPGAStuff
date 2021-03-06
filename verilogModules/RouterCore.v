/*
-----------This is the main router core module-------------------------------------------------
*/

// Ports:
// Name                         I/O  size props
// in_ports_0_getCredits          O     2
// in_ports_1_getCredits          O     2
// in_ports_2_getCredits          O     2
// in_ports_3_getCredits          O     2
// in_ports_4_getCredits          O     2
// out_ports_0_getFlit            O    13
// out_ports_1_getFlit            O    13
// out_ports_2_getFlit            O    13
// out_ports_3_getFlit            O    13
// out_ports_4_getFlit            O    13
// CLK                            I     1 clock
// RST_N                          I     1 reset
// in_ports_0_putRoutedFlit_flit_in  I    16
// in_ports_1_putRoutedFlit_flit_in  I    16
// in_ports_2_putRoutedFlit_flit_in  I    16
// in_ports_3_putRoutedFlit_flit_in  I    16
// in_ports_4_putRoutedFlit_flit_in  I    16
// out_ports_0_putCredits_cr_in   I     2
// out_ports_1_putCredits_cr_in   I     2
// out_ports_2_putCredits_cr_in   I     2
// out_ports_3_putCredits_cr_in   I     2
// out_ports_4_putCredits_cr_in   I     2
// EN_in_ports_0_putRoutedFlit    I     1
// EN_in_ports_1_putRoutedFlit    I     1
// EN_in_ports_2_putRoutedFlit    I     1
// EN_in_ports_3_putRoutedFlit    I     1
// EN_in_ports_4_putRoutedFlit    I     1
// EN_out_ports_0_putCredits      I     1
// EN_out_ports_1_putCredits      I     1
// EN_out_ports_2_putCredits      I     1
// EN_out_ports_3_putCredits      I     1
// EN_out_ports_4_putCredits      I     1
// EN_in_ports_0_getCredits       I     1 unused
// EN_in_ports_1_getCredits       I     1 unused
// EN_in_ports_2_getCredits       I     1 unused
// EN_in_ports_3_getCredits       I     1 unused
// EN_in_ports_4_getCredits       I     1 unused
// EN_out_ports_0_getFlit         I     1
// EN_out_ports_1_getFlit         I     1
// EN_out_ports_2_getFlit         I     1
// EN_out_ports_3_getFlit         I     1
// EN_out_ports_4_getFlit         I     1
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
`define BSV_ASSIGNMENT_DELAY
`endif

module RouterCore(CLK,
		      RST_N,

		      in_ports_0_putRoutedFlit_flit_in,
		      EN_in_ports_0_putRoutedFlit,

		      EN_in_ports_0_getCredits,
		      in_ports_0_getCredits,

		      in_ports_1_putRoutedFlit_flit_in,
		      EN_in_ports_1_putRoutedFlit,

		      EN_in_ports_1_getCredits,
		      in_ports_1_getCredits,

		      in_ports_2_putRoutedFlit_flit_in,
		      EN_in_ports_2_putRoutedFlit,

		      EN_in_ports_2_getCredits,
		      in_ports_2_getCredits,

		      in_ports_3_putRoutedFlit_flit_in,
		      EN_in_ports_3_putRoutedFlit,

		      EN_in_ports_3_getCredits,
		      in_ports_3_getCredits,

		      in_ports_4_putRoutedFlit_flit_in,
		      EN_in_ports_4_putRoutedFlit,

		      EN_in_ports_4_getCredits,
		      in_ports_4_getCredits,

		      EN_out_ports_0_getFlit,
		      out_ports_0_getFlit,

		      out_ports_0_putCredits_cr_in,
		      EN_out_ports_0_putCredits,

		      EN_out_ports_1_getFlit,
		      out_ports_1_getFlit,

		      out_ports_1_putCredits_cr_in,
		      EN_out_ports_1_putCredits,

		      EN_out_ports_2_getFlit,
		      out_ports_2_getFlit,

		      out_ports_2_putCredits_cr_in,
		      EN_out_ports_2_putCredits,

		      EN_out_ports_3_getFlit,
		      out_ports_3_getFlit,

		      out_ports_3_putCredits_cr_in,
		      EN_out_ports_3_putCredits,

		      EN_out_ports_4_getFlit,
		      out_ports_4_getFlit,

		      out_ports_4_putCredits_cr_in,
		      EN_out_ports_4_putCredits);
  input  CLK;
  input  RST_N;

  // action method in_ports_0_putRoutedFlit
  input  [15 : 0] in_ports_0_putRoutedFlit_flit_in;
  input  EN_in_ports_0_putRoutedFlit;

  // actionvalue method in_ports_0_getCredits
  input  EN_in_ports_0_getCredits;
  output [1 : 0] in_ports_0_getCredits;

  // action method in_ports_1_putRoutedFlit
  input  [15 : 0] in_ports_1_putRoutedFlit_flit_in;
  input  EN_in_ports_1_putRoutedFlit;

  // actionvalue method in_ports_1_getCredits
  input  EN_in_ports_1_getCredits;
  output [1 : 0] in_ports_1_getCredits;

  // action method in_ports_2_putRoutedFlit
  input  [15 : 0] in_ports_2_putRoutedFlit_flit_in;
  input  EN_in_ports_2_putRoutedFlit;

  // actionvalue method in_ports_2_getCredits
  input  EN_in_ports_2_getCredits;
  output [1 : 0] in_ports_2_getCredits;

  // action method in_ports_3_putRoutedFlit
  input  [15 : 0] in_ports_3_putRoutedFlit_flit_in;
  input  EN_in_ports_3_putRoutedFlit;

  // actionvalue method in_ports_3_getCredits
  input  EN_in_ports_3_getCredits;
  output [1 : 0] in_ports_3_getCredits;

  // action method in_ports_4_putRoutedFlit
  input  [15 : 0] in_ports_4_putRoutedFlit_flit_in;
  input  EN_in_ports_4_putRoutedFlit;

  // actionvalue method in_ports_4_getCredits
  input  EN_in_ports_4_getCredits;
  output [1 : 0] in_ports_4_getCredits;

  // actionvalue method out_ports_0_getFlit
  input  EN_out_ports_0_getFlit;
  output [12 : 0] out_ports_0_getFlit;

  // action method out_ports_0_putCredits
  input  [1 : 0] out_ports_0_putCredits_cr_in;
  input  EN_out_ports_0_putCredits;

  // actionvalue method out_ports_1_getFlit
  input  EN_out_ports_1_getFlit;
  output [12 : 0] out_ports_1_getFlit;

  // action method out_ports_1_putCredits
  input  [1 : 0] out_ports_1_putCredits_cr_in;
  input  EN_out_ports_1_putCredits;

  // actionvalue method out_ports_2_getFlit
  input  EN_out_ports_2_getFlit;
  output [12 : 0] out_ports_2_getFlit;

  // action method out_ports_2_putCredits
  input  [1 : 0] out_ports_2_putCredits_cr_in;
  input  EN_out_ports_2_putCredits;

  // actionvalue method out_ports_3_getFlit
  input  EN_out_ports_3_getFlit;
  output [12 : 0] out_ports_3_getFlit;

  // action method out_ports_3_putCredits
  input  [1 : 0] out_ports_3_putCredits_cr_in;
  input  EN_out_ports_3_putCredits;

  // actionvalue method out_ports_4_getFlit
  input  EN_out_ports_4_getFlit;
  output [12 : 0] out_ports_4_getFlit;

  // action method out_ports_4_putCredits
  input  [1 : 0] out_ports_4_putCredits_cr_in;
  input  EN_out_ports_4_putCredits;

  // signals for module outputs
  wire [12 : 0] out_ports_0_getFlit,
		out_ports_1_getFlit,
		out_ports_2_getFlit,
		out_ports_3_getFlit,
		out_ports_4_getFlit;
  wire [1 : 0] in_ports_0_getCredits,
	       in_ports_1_getCredits,
	       in_ports_2_getCredits,
	       in_ports_3_getCredits,
	       in_ports_4_getCredits;

  // inlined wires
  wire [12 : 0] hasFlitsToSend_perIn$wget,
		hasFlitsToSend_perIn_1$wget,
		hasFlitsToSend_perIn_2$wget,
		hasFlitsToSend_perIn_3$wget,
		hasFlitsToSend_perIn_4$wget;
  wire credits_clear$whas,
       credits_clear_1$whas,
       credits_clear_2$whas,
       credits_clear_3$whas,
       credits_clear_4$whas,
       credits_set$whas,
       credits_set_1$whas,
       credits_set_2$whas,
       credits_set_3$whas,
       credits_set_4$whas;

  // register credits
  reg [3 : 0] credits;
  wire [3 : 0] credits$D_IN;
  wire credits$EN;

  // register credits_1
  reg [3 : 0] credits_1;
  wire [3 : 0] credits_1$D_IN;
  wire credits_1$EN;

  // register credits_2
  reg [3 : 0] credits_2;
  wire [3 : 0] credits_2$D_IN;
  wire credits_2$EN;

  // register credits_3
  reg [3 : 0] credits_3;
  wire [3 : 0] credits_3$D_IN;
  wire credits_3$EN;

  // register credits_4
  reg [3 : 0] credits_4;
  wire [3 : 0] credits_4$D_IN;
  wire credits_4$EN;

  // register inPortVL
  reg [2 : 0] inPortVL;
  wire [2 : 0] inPortVL$D_IN;
  wire inPortVL$EN;

  // register inPortVL_1
  reg [2 : 0] inPortVL_1;
  wire [2 : 0] inPortVL_1$D_IN;
  wire inPortVL_1$EN;

  // register inPortVL_2
  reg [2 : 0] inPortVL_2;
  wire [2 : 0] inPortVL_2$D_IN;
  wire inPortVL_2$EN;

  // register inPortVL_3
  reg [2 : 0] inPortVL_3;
  wire [2 : 0] inPortVL_3$D_IN;
  wire inPortVL_3$EN;

  // register inPortVL_4
  reg [2 : 0] inPortVL_4;
  wire [2 : 0] inPortVL_4$D_IN;
  wire inPortVL_4$EN;

  // register lockedVL
  reg lockedVL;
  wire lockedVL$D_IN, lockedVL$EN;

  // register lockedVL_1
  reg lockedVL_1;
  wire lockedVL_1$D_IN, lockedVL_1$EN;

  // register lockedVL_2
  reg lockedVL_2;
  wire lockedVL_2$D_IN, lockedVL_2$EN;

  // register lockedVL_3
  reg lockedVL_3;
  wire lockedVL_3$D_IN, lockedVL_3$EN;

  // register lockedVL_4
  reg lockedVL_4;
  wire lockedVL_4$D_IN, lockedVL_4$EN;

  // register selectedIO_reg_0
  reg selectedIO_reg_0;
  wire selectedIO_reg_0$D_IN, selectedIO_reg_0$EN;

  // register selectedIO_reg_0_1
  reg selectedIO_reg_0_1;
  wire selectedIO_reg_0_1$D_IN, selectedIO_reg_0_1$EN;

  // register selectedIO_reg_0_2
  reg selectedIO_reg_0_2;
  wire selectedIO_reg_0_2$D_IN, selectedIO_reg_0_2$EN;

  // register selectedIO_reg_0_3
  reg selectedIO_reg_0_3;
  wire selectedIO_reg_0_3$D_IN, selectedIO_reg_0_3$EN;

  // register selectedIO_reg_0_4
  reg selectedIO_reg_0_4;
  wire selectedIO_reg_0_4$D_IN, selectedIO_reg_0_4$EN;

  // register selectedIO_reg_1
  reg selectedIO_reg_1;
  wire selectedIO_reg_1$D_IN, selectedIO_reg_1$EN;

  // register selectedIO_reg_1_1
  reg selectedIO_reg_1_1;
  wire selectedIO_reg_1_1$D_IN, selectedIO_reg_1_1$EN;

  // register selectedIO_reg_1_2
  reg selectedIO_reg_1_2;
  wire selectedIO_reg_1_2$D_IN, selectedIO_reg_1_2$EN;

  // register selectedIO_reg_1_3
  reg selectedIO_reg_1_3;
  wire selectedIO_reg_1_3$D_IN, selectedIO_reg_1_3$EN;

  // register selectedIO_reg_1_4
  reg selectedIO_reg_1_4;
  wire selectedIO_reg_1_4$D_IN, selectedIO_reg_1_4$EN;

  // register selectedIO_reg_2
  reg selectedIO_reg_2;
  wire selectedIO_reg_2$D_IN, selectedIO_reg_2$EN;

  // register selectedIO_reg_2_1
  reg selectedIO_reg_2_1;
  wire selectedIO_reg_2_1$D_IN, selectedIO_reg_2_1$EN;

  // register selectedIO_reg_2_2
  reg selectedIO_reg_2_2;
  wire selectedIO_reg_2_2$D_IN, selectedIO_reg_2_2$EN;

  // register selectedIO_reg_2_3
  reg selectedIO_reg_2_3;
  wire selectedIO_reg_2_3$D_IN, selectedIO_reg_2_3$EN;

  // register selectedIO_reg_2_4
  reg selectedIO_reg_2_4;
  wire selectedIO_reg_2_4$D_IN, selectedIO_reg_2_4$EN;

  // register selectedIO_reg_3
  reg selectedIO_reg_3;
  wire selectedIO_reg_3$D_IN, selectedIO_reg_3$EN;

  // register selectedIO_reg_3_1
  reg selectedIO_reg_3_1;
  wire selectedIO_reg_3_1$D_IN, selectedIO_reg_3_1$EN;

  // register selectedIO_reg_3_2
  reg selectedIO_reg_3_2;
  wire selectedIO_reg_3_2$D_IN, selectedIO_reg_3_2$EN;

  // register selectedIO_reg_3_3
  reg selectedIO_reg_3_3;
  wire selectedIO_reg_3_3$D_IN, selectedIO_reg_3_3$EN;

  // register selectedIO_reg_3_4
  reg selectedIO_reg_3_4;
  wire selectedIO_reg_3_4$D_IN, selectedIO_reg_3_4$EN;

  // register selectedIO_reg_4
  reg selectedIO_reg_4;
  wire selectedIO_reg_4$D_IN, selectedIO_reg_4$EN;

  // register selectedIO_reg_4_1
  reg selectedIO_reg_4_1;
  wire selectedIO_reg_4_1$D_IN, selectedIO_reg_4_1$EN;

  // register selectedIO_reg_4_2
  reg selectedIO_reg_4_2;
  wire selectedIO_reg_4_2$D_IN, selectedIO_reg_4_2$EN;

  // register selectedIO_reg_4_3
  reg selectedIO_reg_4_3;
  wire selectedIO_reg_4_3$D_IN, selectedIO_reg_4_3$EN;

  // register selectedIO_reg_4_4
  reg selectedIO_reg_4_4;
  wire selectedIO_reg_4_4$D_IN, selectedIO_reg_4_4$EN;

  // ports of submodule flitBuffers
  wire [11 : 0] flitBuffers$deq, flitBuffers$enq_data_in;
  wire flitBuffers$EN_deq, flitBuffers$EN_enq, flitBuffers$notEmpty;

  // ports of submodule flitBuffers_1
  wire [11 : 0] flitBuffers_1$deq, flitBuffers_1$enq_data_in;
  wire flitBuffers_1$EN_deq, flitBuffers_1$EN_enq, flitBuffers_1$notEmpty;

  // ports of submodule flitBuffers_2
  wire [11 : 0] flitBuffers_2$deq, flitBuffers_2$enq_data_in;
  wire flitBuffers_2$EN_deq, flitBuffers_2$EN_enq, flitBuffers_2$notEmpty;

  // ports of submodule flitBuffers_3
  wire [11 : 0] flitBuffers_3$deq, flitBuffers_3$enq_data_in;
  wire flitBuffers_3$EN_deq, flitBuffers_3$EN_enq, flitBuffers_3$notEmpty;

  // ports of submodule flitBuffers_4
  wire [11 : 0] flitBuffers_4$deq, flitBuffers_4$enq_data_in;
  wire flitBuffers_4$EN_deq, flitBuffers_4$EN_enq, flitBuffers_4$notEmpty;

  // ports of submodule outPortFIFOs
  wire [2 : 0] outPortFIFOs$enq_sendData, outPortFIFOs$first;
  wire outPortFIFOs$EN_clear, outPortFIFOs$EN_deq, outPortFIFOs$EN_enq;

  // ports of submodule outPortFIFOs_1
  wire [2 : 0] outPortFIFOs_1$enq_sendData, outPortFIFOs_1$first;
  wire outPortFIFOs_1$EN_clear, outPortFIFOs_1$EN_deq, outPortFIFOs_1$EN_enq;

  // ports of submodule outPortFIFOs_2
  wire [2 : 0] outPortFIFOs_2$enq_sendData, outPortFIFOs_2$first;
  wire outPortFIFOs_2$EN_clear, outPortFIFOs_2$EN_deq, outPortFIFOs_2$EN_enq;

  // ports of submodule outPortFIFOs_3
  wire [2 : 0] outPortFIFOs_3$enq_sendData, outPortFIFOs_3$first;
  wire outPortFIFOs_3$EN_clear, outPortFIFOs_3$EN_deq, outPortFIFOs_3$EN_enq;

  // ports of submodule outPortFIFOs_4
  wire [2 : 0] outPortFIFOs_4$enq_sendData, outPortFIFOs_4$first;
  wire outPortFIFOs_4$EN_clear, outPortFIFOs_4$EN_deq, outPortFIFOs_4$EN_enq;

  // ports of submodule routerAlloc
  wire [24 : 0] routerAlloc$allocate, routerAlloc$allocate_alloc_input;
  wire routerAlloc$EN_allocate, routerAlloc$EN_next;

  // remaining internal signals
  reg [11 : 0] IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d977,
	       IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d978,
	       IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d979,
	       IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d980;
  reg [3 : 0] CASE_outPortFIFOs_1first_credits_4_0_credits__ETC__q4,
	      CASE_outPortFIFOs_2first_credits_4_0_credits__ETC__q2,
	      CASE_outPortFIFOs_3first_credits_4_0_credits__ETC__q3,
	      CASE_outPortFIFOs_4first_credits_4_0_credits__ETC__q1,
	      CASE_outPortFIFOsfirst_credits_4_0_credits_1__ETC__q5;
  reg IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d544,
      IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d606,
      IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d668,
      IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d730,
      IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d993,
      IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d995,
      IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d997,
      IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d999;
  wire [11 : 0] IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d501,
		IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d976;
  wire [3 : 0] credits_1_read_PLUS_1___d813,
	       credits_2_read_PLUS_1___d814,
	       credits_3_read__0_PLUS_1___d815,
	       credits_4_read__2_PLUS_1___d816,
	       credits_read_PLUS_1___d812,
	       outport_encoder___d960,
	       outport_encoder___d961,
	       outport_encoder___d962,
	       outport_encoder___d963,
	       outport_encoder___d964,
	       x__h29646,
	       x__h30222,
	       x__h30798,
	       x__h31374,
	       x__h31950;
  wire [2 : 0] IF_outport_encoder_03_BIT_3_04_THEN_IF_outport_ETC___d804,
	       IF_outport_encoder_03_BIT_3_04_THEN_IF_outport_ETC___d805,
	       IF_outport_encoder_03_BIT_3_04_THEN_IF_outport_ETC___d806,
	       IF_outport_encoder_03_BIT_3_04_THEN_IF_outport_ETC___d807,
	       IF_outport_encoder_24_BIT_3_25_THEN_IF_outport_ETC___d800,
	       IF_outport_encoder_24_BIT_3_25_THEN_IF_outport_ETC___d801,
	       IF_outport_encoder_24_BIT_3_25_THEN_IF_outport_ETC___d802,
	       IF_outport_encoder_24_BIT_3_25_THEN_IF_outport_ETC___d803,
	       IF_outport_encoder_82_BIT_3_83_THEN_IF_outport_ETC___d808,
	       IF_outport_encoder_82_BIT_3_83_THEN_IF_outport_ETC___d809,
	       IF_outport_encoder_82_BIT_3_83_THEN_IF_outport_ETC___d810,
	       IF_outport_encoder_82_BIT_3_83_THEN_IF_outport_ETC___d811,
	       active_in__h38049,
	       active_in__h38906,
	       active_in__h39763,
	       active_in__h40620;
  wire IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d458,
       IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d459,
       IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d460,
       IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d471,
       IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d472,
       IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d473,
       IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d474,
       IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d991,
       IF_outport_encoder_03_BIT_3_04_THEN_NOT_outpor_ETC___d763,
       IF_outport_encoder_03_BIT_3_04_THEN_NOT_outpor_ETC___d774,
       IF_outport_encoder_03_BIT_3_04_THEN_outport_en_ETC___d764,
       IF_outport_encoder_03_BIT_3_04_THEN_outport_en_ETC___d767,
       IF_outport_encoder_03_BIT_3_04_THEN_outport_en_ETC___d784,
       IF_outport_encoder_03_BIT_3_04_THEN_outport_en_ETC___d785,
       IF_outport_encoder_03_BIT_3_04_THEN_outport_en_ETC___d792,
       IF_outport_encoder_24_BIT_3_25_THEN_NOT_outpor_ETC___d775,
       IF_outport_encoder_24_BIT_3_25_THEN_NOT_outpor_ETC___d778,
       IF_outport_encoder_24_BIT_3_25_THEN_NOT_outpor_ETC___d786,
       IF_outport_encoder_24_BIT_3_25_THEN_outport_en_ETC___d765,
       IF_outport_encoder_24_BIT_3_25_THEN_outport_en_ETC___d770,
       IF_outport_encoder_24_BIT_3_25_THEN_outport_en_ETC___d773,
       IF_outport_encoder_24_BIT_3_25_THEN_outport_en_ETC___d783,
       IF_outport_encoder_24_BIT_3_25_THEN_outport_en_ETC___d794,
       IF_outport_encoder_45_BIT_3_46_THEN_NOT_outpor_ETC___d925,
       IF_outport_encoder_45_BIT_3_46_THEN_NOT_outpor_ETC___d942,
       IF_outport_encoder_45_BIT_3_46_THEN_NOT_outpor_ETC___d943,
       IF_outport_encoder_45_BIT_3_46_THEN_NOT_outpor_ETC___d944,
       IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d924,
       IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d934,
       IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d936,
       IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d938,
       IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d940,
       IF_outport_encoder_82_BIT_3_83_THEN_outport_en_ETC___d761,
       IF_outport_encoder_82_BIT_3_83_THEN_outport_en_ETC___d766,
       IF_outport_encoder_82_BIT_3_83_THEN_outport_en_ETC___d772,
       IF_outport_encoder_82_BIT_3_83_THEN_outport_en_ETC___d793,
       IF_outport_encoder_82_BIT_3_83_THEN_outport_en_ETC___d795,
       flitBuffers_1_notEmpty__3_AND_NOT_IF_outPortFI_ETC___d799,
       flitBuffers_2_notEmpty__0_AND_NOT_IF_outPortFI_ETC___d891,
       flitBuffers_3_notEmpty__8_AND_NOT_IF_outPortFI_ETC___d885,
       flitBuffers_4_notEmpty_AND_NOT_IF_outPortFIFOs_ETC___d879,
       flitBuffers_notEmpty__5_AND_NOT_IF_outPortFIFO_ETC___d901;

  // actionvalue method in_ports_0_getCredits
  assign in_ports_0_getCredits =
	     outport_encoder___d964[3] ?
	       2'd2 :
	       { 1'd0, 1'bx /* unspecified value */  } ;

  // actionvalue method in_ports_1_getCredits
  assign in_ports_1_getCredits =
	     outport_encoder___d963[3] ?
	       2'd2 :
	       { 1'd0, 1'bx /* unspecified value */  } ;

  // actionvalue method in_ports_2_getCredits
  assign in_ports_2_getCredits =
	     outport_encoder___d962[3] ?
	       2'd2 :
	       { 1'd0, 1'bx /* unspecified value */  } ;

  // actionvalue method in_ports_3_getCredits
  assign in_ports_3_getCredits =
	     outport_encoder___d961[3] ?
	       2'd2 :
	       { 1'd0, 1'bx /* unspecified value */  } ;

  // actionvalue method in_ports_4_getCredits
  assign in_ports_4_getCredits =
	     outport_encoder___d960[3] ?
	       2'd2 :
	       { 1'd0, 1'bx /* unspecified value */  } ;

  // actionvalue method out_ports_0_getFlit
  assign out_ports_0_getFlit =
	     { IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d924 &&
	       IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d474,
	       IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d976 } ;

  // actionvalue method out_ports_1_getFlit
  assign out_ports_1_getFlit =
	     { IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d934 &&
	       IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d544,
	       IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d977 } ;

  // actionvalue method out_ports_2_getFlit
  assign out_ports_2_getFlit =
	     { IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d936 &&
	       IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d606,
	       IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d978 } ;

  // actionvalue method out_ports_3_getFlit
  assign out_ports_3_getFlit =
	     { IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d938 &&
	       IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d668,
	       IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d979 } ;

  // actionvalue method out_ports_4_getFlit
  assign out_ports_4_getFlit =
	     { IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d940 &&
	       IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d730,
	       IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d980 } ;

  // submodule flitBuffers
  InputQueue flitBuffers(.CLK(CLK),
			   .RST_N(RST_N),
			   .enq_data_in(flitBuffers$enq_data_in),
			   .EN_enq(flitBuffers$EN_enq),
			   .EN_deq(flitBuffers$EN_deq),
			   .deq(flitBuffers$deq),
			   .notEmpty(flitBuffers$notEmpty),
			   .notFull());

  // submodule flitBuffers_1
   InputQueue flitBuffers_1(.CLK(CLK),
			     .RST_N(RST_N),
			     .enq_data_in(flitBuffers_1$enq_data_in),
			     .EN_enq(flitBuffers_1$EN_enq),
			     .EN_deq(flitBuffers_1$EN_deq),
			     .deq(flitBuffers_1$deq),
			     .notEmpty(flitBuffers_1$notEmpty),
			     .notFull());

  // submodule flitBuffers_2
  InputQueue flitBuffers_2(.CLK(CLK),
			     .RST_N(RST_N),
			     .enq_data_in(flitBuffers_2$enq_data_in),
			     .EN_enq(flitBuffers_2$EN_enq),
			     .EN_deq(flitBuffers_2$EN_deq),
			     .deq(flitBuffers_2$deq),
			     .notEmpty(flitBuffers_2$notEmpty),
			     .notFull());

  // submodule flitBuffers_3
  InputQueue flitBuffers_3(.CLK(CLK),
			     .RST_N(RST_N),
			     .enq_data_in(flitBuffers_3$enq_data_in),
			     .EN_enq(flitBuffers_3$EN_enq),
			     .EN_deq(flitBuffers_3$EN_deq),
			     .deq(flitBuffers_3$deq),
			     .notEmpty(flitBuffers_3$notEmpty),
			     .notFull());

  // submodule flitBuffers_4
  InputQueue flitBuffers_4(.CLK(CLK),
			     .RST_N(RST_N),
			     .enq_data_in(flitBuffers_4$enq_data_in),
			     .EN_enq(flitBuffers_4$EN_enq),
			     .EN_deq(flitBuffers_4$EN_deq),
			     .deq(flitBuffers_4$deq),
			     .notEmpty(flitBuffers_4$notEmpty),
			     .notFull());

  // submodule outPortFIFOs
  OutPortFIFO outPortFIFOs(.CLK(CLK),
			     .RST_N(RST_N),
			     .enq_sendData(outPortFIFOs$enq_sendData),
			     .EN_enq(outPortFIFOs$EN_enq),
			     .EN_deq(outPortFIFOs$EN_deq),
			     .EN_clear(outPortFIFOs$EN_clear),
			     .RDY_enq(),
			     .RDY_deq(),
			     .first(outPortFIFOs$first),
			     .RDY_first(),
			     .notFull(),
			     .RDY_notFull(),
			     .notEmpty(),
			     .RDY_notEmpty(),
			     .count(),
			     .RDY_count(),
			     .RDY_clear());

  // submodule outPortFIFOs_1
  OutPortFIFO outPortFIFOs_1(.CLK(CLK),
			       .RST_N(RST_N),
			       .enq_sendData(outPortFIFOs_1$enq_sendData),
			       .EN_enq(outPortFIFOs_1$EN_enq),
			       .EN_deq(outPortFIFOs_1$EN_deq),
			       .EN_clear(outPortFIFOs_1$EN_clear),
			       .RDY_enq(),
			       .RDY_deq(),
			       .first(outPortFIFOs_1$first),
			       .RDY_first(),
			       .notFull(),
			       .RDY_notFull(),
			       .notEmpty(),
			       .RDY_notEmpty(),
			       .count(),
			       .RDY_count(),
			       .RDY_clear());

  // submodule outPortFIFOs_2
  OutPortFIFO outPortFIFOs_2(.CLK(CLK),
			       .RST_N(RST_N),
			       .enq_sendData(outPortFIFOs_2$enq_sendData),
			       .EN_enq(outPortFIFOs_2$EN_enq),
			       .EN_deq(outPortFIFOs_2$EN_deq),
			       .EN_clear(outPortFIFOs_2$EN_clear),
			       .RDY_enq(),
			       .RDY_deq(),
			       .first(outPortFIFOs_2$first),
			       .RDY_first(),
			       .notFull(),
			       .RDY_notFull(),
			       .notEmpty(),
			       .RDY_notEmpty(),
			       .count(),
			       .RDY_count(),
			       .RDY_clear());

  // submodule outPortFIFOs_3
  OutPortFIFO outPortFIFOs_3(.CLK(CLK),
			       .RST_N(RST_N),
			       .enq_sendData(outPortFIFOs_3$enq_sendData),
			       .EN_enq(outPortFIFOs_3$EN_enq),
			       .EN_deq(outPortFIFOs_3$EN_deq),
			       .EN_clear(outPortFIFOs_3$EN_clear),
			       .RDY_enq(),
			       .RDY_deq(),
			       .first(outPortFIFOs_3$first),
			       .RDY_first(),
			       .notFull(),
			       .RDY_notFull(),
			       .notEmpty(),
			       .RDY_notEmpty(),
			       .count(),
			       .RDY_count(),
			       .RDY_clear());

  // submodule outPortFIFOs_4
  OutPortFIFO outPortFIFOs_4(.CLK(CLK),
			       .RST_N(RST_N),
			       .enq_sendData(outPortFIFOs_4$enq_sendData),
			       .EN_enq(outPortFIFOs_4$EN_enq),
			       .EN_deq(outPortFIFOs_4$EN_deq),
			       .EN_clear(outPortFIFOs_4$EN_clear),
			       .RDY_enq(),
			       .RDY_deq(),
			       .first(outPortFIFOs_4$first),
			       .RDY_first(),
			       .notFull(),
			       .RDY_notFull(),
			       .notEmpty(),
			       .RDY_notEmpty(),
			       .count(),
			       .RDY_count(),
			       .RDY_clear());

  // submodule routerAlloc
  RouterAllocator routerAlloc(.pipeline(1'd0),
				   .CLK(CLK),
				   .RST_N(RST_N),
				   .allocate_alloc_input(routerAlloc$allocate_alloc_input),
				   .EN_allocate(routerAlloc$EN_allocate),
				   .EN_next(routerAlloc$EN_next),
				   .allocate(routerAlloc$allocate));

  // inlined wires
  assign hasFlitsToSend_perIn$wget = { 1'd1, flitBuffers$deq } ;
  assign hasFlitsToSend_perIn_1$wget = { 1'd1, flitBuffers_1$deq } ;
  assign hasFlitsToSend_perIn_2$wget = { 1'd1, flitBuffers_2$deq } ;
  assign hasFlitsToSend_perIn_3$wget = { 1'd1, flitBuffers_3$deq } ;
  assign hasFlitsToSend_perIn_4$wget = { 1'd1, flitBuffers_4$deq } ;
  assign credits_set$whas =
	     EN_out_ports_0_putCredits && out_ports_0_putCredits_cr_in[1] ;
  assign credits_set_1$whas =
	     EN_out_ports_1_putCredits && out_ports_1_putCredits_cr_in[1] ;
  assign credits_set_2$whas =
	     EN_out_ports_2_putCredits && out_ports_2_putCredits_cr_in[1] ;
  assign credits_set_3$whas =
	     EN_out_ports_3_putCredits && out_ports_3_putCredits_cr_in[1] ;
  assign credits_set_4$whas =
	     EN_out_ports_4_putCredits && out_ports_4_putCredits_cr_in[1] ;
  assign credits_clear$whas =
	     EN_out_ports_0_getFlit &&
	     IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d924 ;
  assign credits_clear_1$whas =
	     EN_out_ports_1_getFlit &&
	     IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d934 ;
  assign credits_clear_2$whas =
	     EN_out_ports_2_getFlit &&
	     IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d936 ;
  assign credits_clear_3$whas =
	     EN_out_ports_3_getFlit &&
	     IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d938 ;
  assign credits_clear_4$whas =
	     EN_out_ports_4_getFlit &&
	     IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d940 ;

  // register credits
  assign credits$D_IN =
	     (credits_set$whas && !credits_clear$whas) ?
	       credits_read_PLUS_1___d812 :
	       x__h29646 ;
  assign credits$EN =
	     credits_set$whas && !credits_clear$whas ||
	     !credits_set$whas && credits_clear$whas ;

  // register credits_1
  assign credits_1$D_IN =
	     (credits_set_1$whas && !credits_clear_1$whas) ?
	       credits_1_read_PLUS_1___d813 :
	       x__h30222 ;
  assign credits_1$EN =
	     credits_set_1$whas && !credits_clear_1$whas ||
	     !credits_set_1$whas && credits_clear_1$whas ;

  // register credits_2
  assign credits_2$D_IN =
	     (credits_set_2$whas && !credits_clear_2$whas) ?
	       credits_2_read_PLUS_1___d814 :
	       x__h30798 ;
  assign credits_2$EN =
	     credits_set_2$whas && !credits_clear_2$whas ||
	     !credits_set_2$whas && credits_clear_2$whas ;

  // register credits_3
  assign credits_3$D_IN =
	     (credits_set_3$whas && !credits_clear_3$whas) ?
	       credits_3_read__0_PLUS_1___d815 :
	       x__h31374 ;
  assign credits_3$EN =
	     credits_set_3$whas && !credits_clear_3$whas ||
	     !credits_set_3$whas && credits_clear_3$whas ;

  // register credits_4
  assign credits_4$D_IN =
	     (credits_set_4$whas && !credits_clear_4$whas) ?
	       credits_4_read__2_PLUS_1___d816 :
	       x__h31950 ;
  assign credits_4$EN =
	     credits_set_4$whas && !credits_clear_4$whas ||
	     !credits_set_4$whas && credits_clear_4$whas ;

  // register inPortVL
  assign inPortVL$D_IN = 3'h0 ;
  assign inPortVL$EN = 1'b0 ;

  // register inPortVL_1
  assign inPortVL_1$D_IN = 3'h0 ;
  assign inPortVL_1$EN = 1'b0 ;

  // register inPortVL_2
  assign inPortVL_2$D_IN = 3'h0 ;
  assign inPortVL_2$EN = 1'b0 ;

  // register inPortVL_3
  assign inPortVL_3$D_IN = 3'h0 ;
  assign inPortVL_3$EN = 1'b0 ;

  // register inPortVL_4
  assign inPortVL_4$D_IN = 3'h0 ;
  assign inPortVL_4$EN = 1'b0 ;

  // register lockedVL
  assign lockedVL$D_IN = 1'b0 ;
  assign lockedVL$EN = 1'b0 ;

  // register lockedVL_1
  assign lockedVL_1$D_IN = 1'b0 ;
  assign lockedVL_1$EN = 1'b0 ;

  // register lockedVL_2
  assign lockedVL_2$D_IN = 1'b0 ;
  assign lockedVL_2$EN = 1'b0 ;

  // register lockedVL_3
  assign lockedVL_3$D_IN = 1'b0 ;
  assign lockedVL_3$EN = 1'b0 ;

  // register lockedVL_4
  assign lockedVL_4$D_IN = 1'b0 ;
  assign lockedVL_4$EN = 1'b0 ;

  // register selectedIO_reg_0
  assign selectedIO_reg_0$D_IN = 1'b0 ;
  assign selectedIO_reg_0$EN = 1'b0 ;

  // register selectedIO_reg_0_1
  assign selectedIO_reg_0_1$D_IN = 1'b0 ;
  assign selectedIO_reg_0_1$EN = 1'b0 ;

  // register selectedIO_reg_0_2
  assign selectedIO_reg_0_2$D_IN = 1'b0 ;
  assign selectedIO_reg_0_2$EN = 1'b0 ;

  // register selectedIO_reg_0_3
  assign selectedIO_reg_0_3$D_IN = 1'b0 ;
  assign selectedIO_reg_0_3$EN = 1'b0 ;

  // register selectedIO_reg_0_4
  assign selectedIO_reg_0_4$D_IN = 1'b0 ;
  assign selectedIO_reg_0_4$EN = 1'b0 ;

  // register selectedIO_reg_1
  assign selectedIO_reg_1$D_IN = 1'b0 ;
  assign selectedIO_reg_1$EN = 1'b0 ;

  // register selectedIO_reg_1_1
  assign selectedIO_reg_1_1$D_IN = 1'b0 ;
  assign selectedIO_reg_1_1$EN = 1'b0 ;

  // register selectedIO_reg_1_2
  assign selectedIO_reg_1_2$D_IN = 1'b0 ;
  assign selectedIO_reg_1_2$EN = 1'b0 ;

  // register selectedIO_reg_1_3
  assign selectedIO_reg_1_3$D_IN = 1'b0 ;
  assign selectedIO_reg_1_3$EN = 1'b0 ;

  // register selectedIO_reg_1_4
  assign selectedIO_reg_1_4$D_IN = 1'b0 ;
  assign selectedIO_reg_1_4$EN = 1'b0 ;

  // register selectedIO_reg_2
  assign selectedIO_reg_2$D_IN = 1'b0 ;
  assign selectedIO_reg_2$EN = 1'b0 ;

  // register selectedIO_reg_2_1
  assign selectedIO_reg_2_1$D_IN = 1'b0 ;
  assign selectedIO_reg_2_1$EN = 1'b0 ;

  // register selectedIO_reg_2_2
  assign selectedIO_reg_2_2$D_IN = 1'b0 ;
  assign selectedIO_reg_2_2$EN = 1'b0 ;

  // register selectedIO_reg_2_3
  assign selectedIO_reg_2_3$D_IN = 1'b0 ;
  assign selectedIO_reg_2_3$EN = 1'b0 ;

  // register selectedIO_reg_2_4
  assign selectedIO_reg_2_4$D_IN = 1'b0 ;
  assign selectedIO_reg_2_4$EN = 1'b0 ;

  // register selectedIO_reg_3
  assign selectedIO_reg_3$D_IN = 1'b0 ;
  assign selectedIO_reg_3$EN = 1'b0 ;

  // register selectedIO_reg_3_1
  assign selectedIO_reg_3_1$D_IN = 1'b0 ;
  assign selectedIO_reg_3_1$EN = 1'b0 ;

  // register selectedIO_reg_3_2
  assign selectedIO_reg_3_2$D_IN = 1'b0 ;
  assign selectedIO_reg_3_2$EN = 1'b0 ;

  // register selectedIO_reg_3_3
  assign selectedIO_reg_3_3$D_IN = 1'b0 ;
  assign selectedIO_reg_3_3$EN = 1'b0 ;

  // register selectedIO_reg_3_4
  assign selectedIO_reg_3_4$D_IN = 1'b0 ;
  assign selectedIO_reg_3_4$EN = 1'b0 ;

  // register selectedIO_reg_4
  assign selectedIO_reg_4$D_IN = 1'b0 ;
  assign selectedIO_reg_4$EN = 1'b0 ;

  // register selectedIO_reg_4_1
  assign selectedIO_reg_4_1$D_IN = 1'b0 ;
  assign selectedIO_reg_4_1$EN = 1'b0 ;

  // register selectedIO_reg_4_2
  assign selectedIO_reg_4_2$D_IN = 1'b0 ;
  assign selectedIO_reg_4_2$EN = 1'b0 ;

  // register selectedIO_reg_4_3
  assign selectedIO_reg_4_3$D_IN = 1'b0 ;
  assign selectedIO_reg_4_3$EN = 1'b0 ;

  // register selectedIO_reg_4_4
  assign selectedIO_reg_4_4$D_IN = 1'b0 ;
  assign selectedIO_reg_4_4$EN = 1'b0 ;

  // submodule flitBuffers
  assign flitBuffers$enq_data_in = in_ports_0_putRoutedFlit_flit_in[14:3] ;
  assign flitBuffers$EN_enq =
	     EN_in_ports_0_putRoutedFlit &&
	     in_ports_0_putRoutedFlit_flit_in[15] ;
  assign flitBuffers$EN_deq = outport_encoder___d964[3] ;

  // submodule flitBuffers_1
  assign flitBuffers_1$enq_data_in = in_ports_1_putRoutedFlit_flit_in[14:3] ;
  assign flitBuffers_1$EN_enq =
	     EN_in_ports_1_putRoutedFlit &&
	     in_ports_1_putRoutedFlit_flit_in[15] ;
  assign flitBuffers_1$EN_deq = outport_encoder___d963[3] ;

  // submodule flitBuffers_2
  assign flitBuffers_2$enq_data_in = in_ports_2_putRoutedFlit_flit_in[14:3] ;
  assign flitBuffers_2$EN_enq =
	     EN_in_ports_2_putRoutedFlit &&
	     in_ports_2_putRoutedFlit_flit_in[15] ;
  assign flitBuffers_2$EN_deq = outport_encoder___d962[3] ;

  // submodule flitBuffers_3
  assign flitBuffers_3$enq_data_in = in_ports_3_putRoutedFlit_flit_in[14:3] ;
  assign flitBuffers_3$EN_enq =
	     EN_in_ports_3_putRoutedFlit &&
	     in_ports_3_putRoutedFlit_flit_in[15] ;
  assign flitBuffers_3$EN_deq = outport_encoder___d961[3] ;

  // submodule flitBuffers_4
  assign flitBuffers_4$enq_data_in = in_ports_4_putRoutedFlit_flit_in[14:3] ;
  assign flitBuffers_4$EN_enq =
	     EN_in_ports_4_putRoutedFlit &&
	     in_ports_4_putRoutedFlit_flit_in[15] ;
  assign flitBuffers_4$EN_deq = outport_encoder___d960[3] ;

  // submodule outPortFIFOs
  assign outPortFIFOs$enq_sendData = in_ports_0_putRoutedFlit_flit_in[2:0] ;
  assign outPortFIFOs$EN_enq =
	     EN_in_ports_0_putRoutedFlit &&
	     in_ports_0_putRoutedFlit_flit_in[15] ;
  assign outPortFIFOs$EN_deq = outport_encoder___d964[3] ;
  assign outPortFIFOs$EN_clear = 1'b0 ;

  // submodule outPortFIFOs_1
  assign outPortFIFOs_1$enq_sendData = in_ports_1_putRoutedFlit_flit_in[2:0] ;
  assign outPortFIFOs_1$EN_enq =
	     EN_in_ports_1_putRoutedFlit &&
	     in_ports_1_putRoutedFlit_flit_in[15] ;
  assign outPortFIFOs_1$EN_deq = outport_encoder___d963[3] ;
  assign outPortFIFOs_1$EN_clear = 1'b0 ;

  // submodule outPortFIFOs_2
  assign outPortFIFOs_2$enq_sendData = in_ports_2_putRoutedFlit_flit_in[2:0] ;
  assign outPortFIFOs_2$EN_enq =
	     EN_in_ports_2_putRoutedFlit &&
	     in_ports_2_putRoutedFlit_flit_in[15] ;
  assign outPortFIFOs_2$EN_deq = outport_encoder___d962[3] ;
  assign outPortFIFOs_2$EN_clear = 1'b0 ;

  // submodule outPortFIFOs_3
  assign outPortFIFOs_3$enq_sendData = in_ports_3_putRoutedFlit_flit_in[2:0] ;
  assign outPortFIFOs_3$EN_enq =
	     EN_in_ports_3_putRoutedFlit &&
	     in_ports_3_putRoutedFlit_flit_in[15] ;
  assign outPortFIFOs_3$EN_deq = outport_encoder___d961[3] ;
  assign outPortFIFOs_3$EN_clear = 1'b0 ;

  // submodule outPortFIFOs_4
  assign outPortFIFOs_4$enq_sendData = in_ports_4_putRoutedFlit_flit_in[2:0] ;
  assign outPortFIFOs_4$EN_enq =
	     EN_in_ports_4_putRoutedFlit &&
	     in_ports_4_putRoutedFlit_flit_in[15] ;
  assign outPortFIFOs_4$EN_deq = outport_encoder___d960[3] ;
  assign outPortFIFOs_4$EN_clear = 1'b0 ;

  // submodule routerAlloc
  assign routerAlloc$allocate_alloc_input =
	     { flitBuffers_4_notEmpty_AND_NOT_IF_outPortFIFOs_ETC___d879 &&
	       outPortFIFOs_4$first == 3'd4,
	       flitBuffers_4_notEmpty_AND_NOT_IF_outPortFIFOs_ETC___d879 &&
	       outPortFIFOs_4$first == 3'd3,
	       flitBuffers_4_notEmpty_AND_NOT_IF_outPortFIFOs_ETC___d879 &&
	       outPortFIFOs_4$first == 3'd2,
	       flitBuffers_4_notEmpty_AND_NOT_IF_outPortFIFOs_ETC___d879 &&
	       outPortFIFOs_4$first == 3'd1,
	       flitBuffers_4_notEmpty_AND_NOT_IF_outPortFIFOs_ETC___d879 &&
	       outPortFIFOs_4$first == 3'd0,
	       flitBuffers_3_notEmpty__8_AND_NOT_IF_outPortFI_ETC___d885 &&
	       outPortFIFOs_3$first == 3'd4,
	       flitBuffers_3_notEmpty__8_AND_NOT_IF_outPortFI_ETC___d885 &&
	       outPortFIFOs_3$first == 3'd3,
	       flitBuffers_3_notEmpty__8_AND_NOT_IF_outPortFI_ETC___d885 &&
	       outPortFIFOs_3$first == 3'd2,
	       flitBuffers_3_notEmpty__8_AND_NOT_IF_outPortFI_ETC___d885 &&
	       outPortFIFOs_3$first == 3'd1,
	       flitBuffers_3_notEmpty__8_AND_NOT_IF_outPortFI_ETC___d885 &&
	       outPortFIFOs_3$first == 3'd0,
	       flitBuffers_2_notEmpty__0_AND_NOT_IF_outPortFI_ETC___d891 &&
	       outPortFIFOs_2$first == 3'd4,
	       flitBuffers_2_notEmpty__0_AND_NOT_IF_outPortFI_ETC___d891 &&
	       outPortFIFOs_2$first == 3'd3,
	       flitBuffers_2_notEmpty__0_AND_NOT_IF_outPortFI_ETC___d891 &&
	       outPortFIFOs_2$first == 3'd2,
	       flitBuffers_2_notEmpty__0_AND_NOT_IF_outPortFI_ETC___d891 &&
	       outPortFIFOs_2$first == 3'd1,
	       flitBuffers_2_notEmpty__0_AND_NOT_IF_outPortFI_ETC___d891 &&
	       outPortFIFOs_2$first == 3'd0,
	       flitBuffers_1_notEmpty__3_AND_NOT_IF_outPortFI_ETC___d799 &&
	       outPortFIFOs_1$first == 3'd4,
	       flitBuffers_1_notEmpty__3_AND_NOT_IF_outPortFI_ETC___d799 &&
	       outPortFIFOs_1$first == 3'd3,
	       flitBuffers_1_notEmpty__3_AND_NOT_IF_outPortFI_ETC___d799 &&
	       outPortFIFOs_1$first == 3'd2,
	       flitBuffers_1_notEmpty__3_AND_NOT_IF_outPortFI_ETC___d799 &&
	       outPortFIFOs_1$first == 3'd1,
	       flitBuffers_1_notEmpty__3_AND_NOT_IF_outPortFI_ETC___d799 &&
	       outPortFIFOs_1$first == 3'd0,
	       flitBuffers_notEmpty__5_AND_NOT_IF_outPortFIFO_ETC___d901 &&
	       outPortFIFOs$first == 3'd4,
	       flitBuffers_notEmpty__5_AND_NOT_IF_outPortFIFO_ETC___d901 &&
	       outPortFIFOs$first == 3'd3,
	       flitBuffers_notEmpty__5_AND_NOT_IF_outPortFIFO_ETC___d901 &&
	       outPortFIFOs$first == 3'd2,
	       flitBuffers_notEmpty__5_AND_NOT_IF_outPortFIFO_ETC___d901 &&
	       outPortFIFOs$first == 3'd1,
	       flitBuffers_notEmpty__5_AND_NOT_IF_outPortFIFO_ETC___d901 &&
	       outPortFIFOs$first == 3'd0 } ;
  assign routerAlloc$EN_allocate = 1'd1 ;
  assign routerAlloc$EN_next = 1'd1 ;

  // remaining internal signals
  Outport_encoder instance_outport_encoder_0(.outport_encoder_vec({ { 1'd1 &&
									     routerAlloc$allocate[9],
									     1'd1 &&
									     routerAlloc$allocate[8],
									     1'd1 &&
									     routerAlloc$allocate[7] },
									   1'd1 &&
									   routerAlloc$allocate[6],
									   1'd1 &&
									   routerAlloc$allocate[5] }),
						    .outport_encoder(outport_encoder___d963));
  Outport_encoder instance_outport_encoder_1(.outport_encoder_vec({ { 1'd1 &&
									     routerAlloc$allocate[4],
									     1'd1 &&
									     routerAlloc$allocate[3],
									     1'd1 &&
									     routerAlloc$allocate[2] },
									   1'd1 &&
									   routerAlloc$allocate[1],
									   1'd1 &&
									   routerAlloc$allocate[0] }),
						    .outport_encoder(outport_encoder___d964));
  Outport_encoder instance_outport_encoder_2(.outport_encoder_vec({ { 1'd1 &&
									     routerAlloc$allocate[14],
									     1'd1 &&
									     routerAlloc$allocate[13],
									     1'd1 &&
									     routerAlloc$allocate[12] },
									   1'd1 &&
									   routerAlloc$allocate[11],
									   1'd1 &&
									   routerAlloc$allocate[10] }),
						    .outport_encoder(outport_encoder___d962));
  Outport_encoder instance_outport_encoder_3(.outport_encoder_vec({ { 1'd1 &&
									     routerAlloc$allocate[19],
									     1'd1 &&
									     routerAlloc$allocate[18],
									     1'd1 &&
									     routerAlloc$allocate[17] },
									   1'd1 &&
									   routerAlloc$allocate[16],
									   1'd1 &&
									   routerAlloc$allocate[15] }),
						    .outport_encoder(outport_encoder___d961));
  Outport_encoder instance_outport_encoder_4(.outport_encoder_vec({ { 1'd1 &&
									     routerAlloc$allocate[24],
									     1'd1 &&
									     routerAlloc$allocate[23],
									     1'd1 &&
									     routerAlloc$allocate[22] },
									   1'd1 &&
									   routerAlloc$allocate[21],
									   1'd1 &&
									   routerAlloc$allocate[20] }),
						    .outport_encoder(outport_encoder___d960));
  assign IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d458 =
	     IF_outport_encoder_45_BIT_3_46_THEN_NOT_outpor_ETC___d944 ?
	       !outport_encoder___d961[3] ||
	       !hasFlitsToSend_perIn_3$wget[12] :
	       outport_encoder___d960[3] &&
	       outport_encoder___d960[2:0] == 3'd0 &&
	       !hasFlitsToSend_perIn_4$wget[12] ;
  assign IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d459 =
	     IF_outport_encoder_45_BIT_3_46_THEN_NOT_outpor_ETC___d943 ?
	       !outport_encoder___d962[3] ||
	       !hasFlitsToSend_perIn_2$wget[12] :
	       IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d458 ;
  assign IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d460 =
	     IF_outport_encoder_45_BIT_3_46_THEN_NOT_outpor_ETC___d942 ?
	       !outport_encoder___d963[3] ||
	       !hasFlitsToSend_perIn_1$wget[12] :
	       IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d459 ;
  assign IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d471 =
	     IF_outport_encoder_45_BIT_3_46_THEN_NOT_outpor_ETC___d944 ?
	       outport_encoder___d961[3] && hasFlitsToSend_perIn_3$wget[12] :
	       !outport_encoder___d960[3] ||
	       outport_encoder___d960[2:0] != 3'd0 ||
	       hasFlitsToSend_perIn_4$wget[12] ;
  assign IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d472 =
	     IF_outport_encoder_45_BIT_3_46_THEN_NOT_outpor_ETC___d943 ?
	       outport_encoder___d962[3] && hasFlitsToSend_perIn_2$wget[12] :
	       IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d471 ;
  assign IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d473 =
	     IF_outport_encoder_45_BIT_3_46_THEN_NOT_outpor_ETC___d942 ?
	       outport_encoder___d963[3] && hasFlitsToSend_perIn_1$wget[12] :
	       IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d472 ;
  assign IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d474 =
	     IF_outport_encoder_45_BIT_3_46_THEN_NOT_outpor_ETC___d925 ?
	       outport_encoder___d964[3] && hasFlitsToSend_perIn$wget[12] :
	       IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d473 ;
  assign IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d501 =
	     IF_outport_encoder_45_BIT_3_46_THEN_NOT_outpor_ETC___d943 ?
	       hasFlitsToSend_perIn_2$wget[11:0] :
	       (IF_outport_encoder_45_BIT_3_46_THEN_NOT_outpor_ETC___d944 ?
		  hasFlitsToSend_perIn_3$wget[11:0] :
		  hasFlitsToSend_perIn_4$wget[11:0]) ;
  assign IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d976 =
	     IF_outport_encoder_45_BIT_3_46_THEN_NOT_outpor_ETC___d925 ?
	       hasFlitsToSend_perIn$wget[11:0] :
	       (IF_outport_encoder_45_BIT_3_46_THEN_NOT_outpor_ETC___d942 ?
		  hasFlitsToSend_perIn_1$wget[11:0] :
		  IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d501) ;
  assign IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d991 =
	     IF_outport_encoder_45_BIT_3_46_THEN_NOT_outpor_ETC___d925 ?
	       !outport_encoder___d964[3] || !hasFlitsToSend_perIn$wget[12] :
	       IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d460 ;
  assign IF_outport_encoder_03_BIT_3_04_THEN_IF_outport_ETC___d804 =
	     outport_encoder___d962[3] ?
	       ((outport_encoder___d962[2:0] == 3'd1) ?
		  3'd2 :
		  IF_outport_encoder_82_BIT_3_83_THEN_IF_outport_ETC___d808) :
	       IF_outport_encoder_82_BIT_3_83_THEN_IF_outport_ETC___d808 ;
  assign IF_outport_encoder_03_BIT_3_04_THEN_IF_outport_ETC___d805 =
	     outport_encoder___d962[3] ?
	       ((outport_encoder___d962[2:0] == 3'd2) ?
		  outport_encoder___d962[2:0] :
		  IF_outport_encoder_82_BIT_3_83_THEN_IF_outport_ETC___d809) :
	       IF_outport_encoder_82_BIT_3_83_THEN_IF_outport_ETC___d809 ;
  assign IF_outport_encoder_03_BIT_3_04_THEN_IF_outport_ETC___d806 =
	     outport_encoder___d962[3] ?
	       ((outport_encoder___d962[2:0] == 3'd3) ?
		  3'd2 :
		  IF_outport_encoder_82_BIT_3_83_THEN_IF_outport_ETC___d810) :
	       IF_outport_encoder_82_BIT_3_83_THEN_IF_outport_ETC___d810 ;
  assign IF_outport_encoder_03_BIT_3_04_THEN_IF_outport_ETC___d807 =
	     outport_encoder___d962[3] ?
	       ((outport_encoder___d962[2:0] == 3'd4) ?
		  3'd2 :
		  IF_outport_encoder_82_BIT_3_83_THEN_IF_outport_ETC___d811) :
	       IF_outport_encoder_82_BIT_3_83_THEN_IF_outport_ETC___d811 ;
  assign IF_outport_encoder_03_BIT_3_04_THEN_NOT_outpor_ETC___d763 =
	     outport_encoder___d962[3] ?
	       outport_encoder___d962[2:0] != 3'd0 &&
	       (!outport_encoder___d963[3] ||
		outport_encoder___d963[2:0] != 3'd0) :
	       !outport_encoder___d963[3] ||
	       outport_encoder___d963[2:0] != 3'd0 ;
  assign IF_outport_encoder_03_BIT_3_04_THEN_NOT_outpor_ETC___d774 =
	     outport_encoder___d962[3] ?
	       outport_encoder___d962[2:0] != 3'd0 &&
	       outport_encoder___d963[3] &&
	       outport_encoder___d963[2:0] == 3'd0 :
	       outport_encoder___d963[3] &&
	       outport_encoder___d963[2:0] == 3'd0 ;
  assign IF_outport_encoder_03_BIT_3_04_THEN_outport_en_ETC___d764 =
	     outport_encoder___d962[3] ?
	       outport_encoder___d962[2:0] == 3'd1 ||
	       IF_outport_encoder_82_BIT_3_83_THEN_outport_en_ETC___d793 :
	       IF_outport_encoder_82_BIT_3_83_THEN_outport_en_ETC___d793 ;
  assign IF_outport_encoder_03_BIT_3_04_THEN_outport_en_ETC___d767 =
	     outport_encoder___d962[3] ?
	       outport_encoder___d962[2:0] == 3'd2 ||
	       IF_outport_encoder_82_BIT_3_83_THEN_outport_en_ETC___d766 :
	       IF_outport_encoder_82_BIT_3_83_THEN_outport_en_ETC___d766 ;
  assign IF_outport_encoder_03_BIT_3_04_THEN_outport_en_ETC___d784 =
	     outport_encoder___d962[3] ?
	       outport_encoder___d962[2:0] == 3'd3 ||
	       IF_outport_encoder_82_BIT_3_83_THEN_outport_en_ETC___d795 :
	       IF_outport_encoder_82_BIT_3_83_THEN_outport_en_ETC___d795 ;
  assign IF_outport_encoder_03_BIT_3_04_THEN_outport_en_ETC___d785 =
	     outport_encoder___d962[3] ?
	       outport_encoder___d962[2:0] == 3'd4 ||
	       IF_outport_encoder_82_BIT_3_83_THEN_outport_en_ETC___d772 :
	       IF_outport_encoder_82_BIT_3_83_THEN_outport_en_ETC___d772 ;
  assign IF_outport_encoder_03_BIT_3_04_THEN_outport_en_ETC___d792 =
	     outport_encoder___d962[3] ?
	       outport_encoder___d962[2:0] == 3'd0 ||
	       IF_outport_encoder_82_BIT_3_83_THEN_outport_en_ETC___d761 :
	       IF_outport_encoder_82_BIT_3_83_THEN_outport_en_ETC___d761 ;
  assign IF_outport_encoder_24_BIT_3_25_THEN_IF_outport_ETC___d800 =
	     outport_encoder___d961[3] ?
	       ((outport_encoder___d961[2:0] == 3'd1) ?
		  3'd3 :
		  IF_outport_encoder_03_BIT_3_04_THEN_IF_outport_ETC___d804) :
	       IF_outport_encoder_03_BIT_3_04_THEN_IF_outport_ETC___d804 ;
  assign IF_outport_encoder_24_BIT_3_25_THEN_IF_outport_ETC___d801 =
	     outport_encoder___d961[3] ?
	       ((outport_encoder___d961[2:0] == 3'd2) ?
		  3'd3 :
		  IF_outport_encoder_03_BIT_3_04_THEN_IF_outport_ETC___d805) :
	       IF_outport_encoder_03_BIT_3_04_THEN_IF_outport_ETC___d805 ;
  assign IF_outport_encoder_24_BIT_3_25_THEN_IF_outport_ETC___d802 =
	     outport_encoder___d961[3] ?
	       ((outport_encoder___d961[2:0] == 3'd3) ?
		  outport_encoder___d961[2:0] :
		  IF_outport_encoder_03_BIT_3_04_THEN_IF_outport_ETC___d806) :
	       IF_outport_encoder_03_BIT_3_04_THEN_IF_outport_ETC___d806 ;
  assign IF_outport_encoder_24_BIT_3_25_THEN_IF_outport_ETC___d803 =
	     outport_encoder___d961[3] ?
	       ((outport_encoder___d961[2:0] == 3'd4) ?
		  3'd3 :
		  IF_outport_encoder_03_BIT_3_04_THEN_IF_outport_ETC___d807) :
	       IF_outport_encoder_03_BIT_3_04_THEN_IF_outport_ETC___d807 ;
  assign IF_outport_encoder_24_BIT_3_25_THEN_NOT_outpor_ETC___d775 =
	     outport_encoder___d961[3] ?
	       outport_encoder___d961[2:0] != 3'd0 &&
	       IF_outport_encoder_03_BIT_3_04_THEN_NOT_outpor_ETC___d774 :
	       IF_outport_encoder_03_BIT_3_04_THEN_NOT_outpor_ETC___d774 ;
  assign IF_outport_encoder_24_BIT_3_25_THEN_NOT_outpor_ETC___d778 =
	     outport_encoder___d961[3] ?
	       outport_encoder___d961[2:0] != 3'd0 &&
	       outport_encoder___d962[3] &&
	       outport_encoder___d962[2:0] == 3'd0 :
	       outport_encoder___d962[3] &&
	       outport_encoder___d962[2:0] == 3'd0 ;
  assign IF_outport_encoder_24_BIT_3_25_THEN_NOT_outpor_ETC___d786 =
	     outport_encoder___d961[3] ?
	       outport_encoder___d961[2:0] != 3'd0 &&
	       IF_outport_encoder_03_BIT_3_04_THEN_NOT_outpor_ETC___d763 :
	       IF_outport_encoder_03_BIT_3_04_THEN_NOT_outpor_ETC___d763 ;
  assign IF_outport_encoder_24_BIT_3_25_THEN_outport_en_ETC___d765 =
	     outport_encoder___d961[3] ?
	       outport_encoder___d961[2:0] == 3'd1 ||
	       IF_outport_encoder_03_BIT_3_04_THEN_outport_en_ETC___d764 :
	       IF_outport_encoder_03_BIT_3_04_THEN_outport_en_ETC___d764 ;
  assign IF_outport_encoder_24_BIT_3_25_THEN_outport_en_ETC___d770 =
	     outport_encoder___d961[3] ?
	       outport_encoder___d961[2:0] == 3'd3 ||
	       IF_outport_encoder_03_BIT_3_04_THEN_outport_en_ETC___d784 :
	       IF_outport_encoder_03_BIT_3_04_THEN_outport_en_ETC___d784 ;
  assign IF_outport_encoder_24_BIT_3_25_THEN_outport_en_ETC___d773 =
	     outport_encoder___d961[3] ?
	       outport_encoder___d961[2:0] == 3'd4 ||
	       IF_outport_encoder_03_BIT_3_04_THEN_outport_en_ETC___d785 :
	       IF_outport_encoder_03_BIT_3_04_THEN_outport_en_ETC___d785 ;
  assign IF_outport_encoder_24_BIT_3_25_THEN_outport_en_ETC___d783 =
	     outport_encoder___d961[3] ?
	       outport_encoder___d961[2:0] == 3'd0 ||
	       IF_outport_encoder_03_BIT_3_04_THEN_outport_en_ETC___d792 :
	       IF_outport_encoder_03_BIT_3_04_THEN_outport_en_ETC___d792 ;
  assign IF_outport_encoder_24_BIT_3_25_THEN_outport_en_ETC___d794 =
	     outport_encoder___d961[3] ?
	       outport_encoder___d961[2:0] == 3'd2 ||
	       IF_outport_encoder_03_BIT_3_04_THEN_outport_en_ETC___d767 :
	       IF_outport_encoder_03_BIT_3_04_THEN_outport_en_ETC___d767 ;
  assign IF_outport_encoder_45_BIT_3_46_THEN_NOT_outpor_ETC___d925 =
	     outport_encoder___d960[3] ?
	       outport_encoder___d960[2:0] != 3'd0 &&
	       IF_outport_encoder_24_BIT_3_25_THEN_NOT_outpor_ETC___d786 :
	       IF_outport_encoder_24_BIT_3_25_THEN_NOT_outpor_ETC___d786 ;
  assign IF_outport_encoder_45_BIT_3_46_THEN_NOT_outpor_ETC___d942 =
	     outport_encoder___d960[3] ?
	       outport_encoder___d960[2:0] != 3'd0 &&
	       IF_outport_encoder_24_BIT_3_25_THEN_NOT_outpor_ETC___d775 :
	       IF_outport_encoder_24_BIT_3_25_THEN_NOT_outpor_ETC___d775 ;
  assign IF_outport_encoder_45_BIT_3_46_THEN_NOT_outpor_ETC___d943 =
	     outport_encoder___d960[3] ?
	       outport_encoder___d960[2:0] != 3'd0 &&
	       IF_outport_encoder_24_BIT_3_25_THEN_NOT_outpor_ETC___d778 :
	       IF_outport_encoder_24_BIT_3_25_THEN_NOT_outpor_ETC___d778 ;
  assign IF_outport_encoder_45_BIT_3_46_THEN_NOT_outpor_ETC___d944 =
	     outport_encoder___d960[3] ?
	       outport_encoder___d960[2:0] != 3'd0 &&
	       outport_encoder___d961[3] &&
	       outport_encoder___d961[2:0] == 3'd0 :
	       outport_encoder___d961[3] &&
	       outport_encoder___d961[2:0] == 3'd0 ;
  assign IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d924 =
	     outport_encoder___d960[3] ?
	       outport_encoder___d960[2:0] == 3'd0 ||
	       IF_outport_encoder_24_BIT_3_25_THEN_outport_en_ETC___d783 :
	       IF_outport_encoder_24_BIT_3_25_THEN_outport_en_ETC___d783 ;
  assign IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d934 =
	     outport_encoder___d960[3] ?
	       outport_encoder___d960[2:0] == 3'd1 ||
	       IF_outport_encoder_24_BIT_3_25_THEN_outport_en_ETC___d765 :
	       IF_outport_encoder_24_BIT_3_25_THEN_outport_en_ETC___d765 ;
  assign IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d936 =
	     outport_encoder___d960[3] ?
	       outport_encoder___d960[2:0] == 3'd2 ||
	       IF_outport_encoder_24_BIT_3_25_THEN_outport_en_ETC___d794 :
	       IF_outport_encoder_24_BIT_3_25_THEN_outport_en_ETC___d794 ;
  assign IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d938 =
	     outport_encoder___d960[3] ?
	       outport_encoder___d960[2:0] == 3'd3 ||
	       IF_outport_encoder_24_BIT_3_25_THEN_outport_en_ETC___d770 :
	       IF_outport_encoder_24_BIT_3_25_THEN_outport_en_ETC___d770 ;
  assign IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d940 =
	     outport_encoder___d960[3] ?
	       outport_encoder___d960[2:0] == 3'd4 ||
	       IF_outport_encoder_24_BIT_3_25_THEN_outport_en_ETC___d773 :
	       IF_outport_encoder_24_BIT_3_25_THEN_outport_en_ETC___d773 ;
  assign IF_outport_encoder_82_BIT_3_83_THEN_IF_outport_ETC___d808 =
	     outport_encoder___d963[3] ?
	       ((outport_encoder___d963[2:0] == 3'd1) ?
		  outport_encoder___d963[2:0] :
		  3'd0) :
	       3'd0 ;
  assign IF_outport_encoder_82_BIT_3_83_THEN_IF_outport_ETC___d809 =
	     outport_encoder___d963[3] ?
	       ((outport_encoder___d963[2:0] == 3'd2) ? 3'd1 : 3'd0) :
	       3'd0 ;
  assign IF_outport_encoder_82_BIT_3_83_THEN_IF_outport_ETC___d810 =
	     outport_encoder___d963[3] ?
	       ((outport_encoder___d963[2:0] == 3'd3) ? 3'd1 : 3'd0) :
	       3'd0 ;
  assign IF_outport_encoder_82_BIT_3_83_THEN_IF_outport_ETC___d811 =
	     outport_encoder___d963[3] ?
	       ((outport_encoder___d963[2:0] == 3'd4) ? 3'd1 : 3'd0) :
	       3'd0 ;
  assign IF_outport_encoder_82_BIT_3_83_THEN_outport_en_ETC___d761 =
	     outport_encoder___d963[3] ?
	       outport_encoder___d963[2:0] == 3'd0 ||
	       outport_encoder___d964[3] &&
	       outport_encoder___d964[2:0] == 3'd0 :
	       outport_encoder___d964[3] &&
	       outport_encoder___d964[2:0] == 3'd0 ;
  assign IF_outport_encoder_82_BIT_3_83_THEN_outport_en_ETC___d766 =
	     outport_encoder___d963[3] ?
	       outport_encoder___d963[2:0] == 3'd2 ||
	       outport_encoder___d964[3] &&
	       outport_encoder___d964[2:0] == 3'd2 :
	       outport_encoder___d964[3] &&
	       outport_encoder___d964[2:0] == 3'd2 ;
  assign IF_outport_encoder_82_BIT_3_83_THEN_outport_en_ETC___d772 =
	     outport_encoder___d963[3] ?
	       outport_encoder___d963[2:0] == 3'd4 ||
	       outport_encoder___d964[3] &&
	       outport_encoder___d964[2:0] == 3'd4 :
	       outport_encoder___d964[3] &&
	       outport_encoder___d964[2:0] == 3'd4 ;
  assign IF_outport_encoder_82_BIT_3_83_THEN_outport_en_ETC___d793 =
	     outport_encoder___d963[3] ?
	       outport_encoder___d963[2:0] == 3'd1 ||
	       outport_encoder___d964[3] &&
	       outport_encoder___d964[2:0] == 3'd1 :
	       outport_encoder___d964[3] &&
	       outport_encoder___d964[2:0] == 3'd1 ;
  assign IF_outport_encoder_82_BIT_3_83_THEN_outport_en_ETC___d795 =
	     outport_encoder___d963[3] ?
	       outport_encoder___d963[2:0] == 3'd3 ||
	       outport_encoder___d964[3] &&
	       outport_encoder___d964[2:0] == 3'd3 :
	       outport_encoder___d964[3] &&
	       outport_encoder___d964[2:0] == 3'd3 ;
  assign active_in__h38049 =
	     outport_encoder___d960[3] ?
	       ((outport_encoder___d960[2:0] == 3'd1) ?
		  3'd4 :
		  IF_outport_encoder_24_BIT_3_25_THEN_IF_outport_ETC___d800) :
	       IF_outport_encoder_24_BIT_3_25_THEN_IF_outport_ETC___d800 ;
  assign active_in__h38906 =
	     outport_encoder___d960[3] ?
	       ((outport_encoder___d960[2:0] == 3'd2) ?
		  3'd4 :
		  IF_outport_encoder_24_BIT_3_25_THEN_IF_outport_ETC___d801) :
	       IF_outport_encoder_24_BIT_3_25_THEN_IF_outport_ETC___d801 ;
  assign active_in__h39763 =
	     outport_encoder___d960[3] ?
	       ((outport_encoder___d960[2:0] == 3'd3) ?
		  3'd4 :
		  IF_outport_encoder_24_BIT_3_25_THEN_IF_outport_ETC___d802) :
	       IF_outport_encoder_24_BIT_3_25_THEN_IF_outport_ETC___d802 ;
  assign active_in__h40620 =
	     outport_encoder___d960[3] ?
	       ((outport_encoder___d960[2:0] == 3'd4) ?
		  outport_encoder___d960[2:0] :
		  IF_outport_encoder_24_BIT_3_25_THEN_IF_outport_ETC___d803) :
	       IF_outport_encoder_24_BIT_3_25_THEN_IF_outport_ETC___d803 ;
  assign credits_1_read_PLUS_1___d813 = credits_1 + 4'd1 ;
  assign credits_2_read_PLUS_1___d814 = credits_2 + 4'd1 ;
  assign credits_3_read__0_PLUS_1___d815 = credits_3 + 4'd1 ;
  assign credits_4_read__2_PLUS_1___d816 = credits_4 + 4'd1 ;
  assign credits_read_PLUS_1___d812 = credits + 4'd1 ;
  assign flitBuffers_1_notEmpty__3_AND_NOT_IF_outPortFI_ETC___d799 =
	     flitBuffers_1$notEmpty &&
	     CASE_outPortFIFOs_1first_credits_4_0_credits__ETC__q4 != 4'd0 ;
  assign flitBuffers_2_notEmpty__0_AND_NOT_IF_outPortFI_ETC___d891 =
	     flitBuffers_2$notEmpty &&
	     CASE_outPortFIFOs_2first_credits_4_0_credits__ETC__q2 != 4'd0 ;
  assign flitBuffers_3_notEmpty__8_AND_NOT_IF_outPortFI_ETC___d885 =
	     flitBuffers_3$notEmpty &&
	     CASE_outPortFIFOs_3first_credits_4_0_credits__ETC__q3 != 4'd0 ;
  assign flitBuffers_4_notEmpty_AND_NOT_IF_outPortFIFOs_ETC___d879 =
	     flitBuffers_4$notEmpty &&
	     CASE_outPortFIFOs_4first_credits_4_0_credits__ETC__q1 != 4'd0 ;
  assign flitBuffers_notEmpty__5_AND_NOT_IF_outPortFIFO_ETC___d901 =
	     flitBuffers$notEmpty &&
	     CASE_outPortFIFOsfirst_credits_4_0_credits_1__ETC__q5 != 4'd0 ;
  assign x__h29646 = credits - 4'd1 ;
  assign x__h30222 = credits_1 - 4'd1 ;
  assign x__h30798 = credits_2 - 4'd1 ;
  assign x__h31374 = credits_3 - 4'd1 ;
  assign x__h31950 = credits_4 - 4'd1 ;
  always@(outPortFIFOs_4$first or
	  credits_4 or credits or credits_1 or credits_2 or credits_3)
  begin
    case (outPortFIFOs_4$first)
      3'd0: CASE_outPortFIFOs_4first_credits_4_0_credits__ETC__q1 = credits;
      3'd1: CASE_outPortFIFOs_4first_credits_4_0_credits__ETC__q1 = credits_1;
      3'd2: CASE_outPortFIFOs_4first_credits_4_0_credits__ETC__q1 = credits_2;
      3'd3: CASE_outPortFIFOs_4first_credits_4_0_credits__ETC__q1 = credits_3;
      default: CASE_outPortFIFOs_4first_credits_4_0_credits__ETC__q1 =
		   credits_4;
    endcase
  end
  always@(outPortFIFOs_2$first or
	  credits_4 or credits or credits_1 or credits_2 or credits_3)
  begin
    case (outPortFIFOs_2$first)
      3'd0: CASE_outPortFIFOs_2first_credits_4_0_credits__ETC__q2 = credits;
      3'd1: CASE_outPortFIFOs_2first_credits_4_0_credits__ETC__q2 = credits_1;
      3'd2: CASE_outPortFIFOs_2first_credits_4_0_credits__ETC__q2 = credits_2;
      3'd3: CASE_outPortFIFOs_2first_credits_4_0_credits__ETC__q2 = credits_3;
      default: CASE_outPortFIFOs_2first_credits_4_0_credits__ETC__q2 =
		   credits_4;
    endcase
  end
  always@(outPortFIFOs_3$first or
	  credits_4 or credits or credits_1 or credits_2 or credits_3)
  begin
    case (outPortFIFOs_3$first)
      3'd0: CASE_outPortFIFOs_3first_credits_4_0_credits__ETC__q3 = credits;
      3'd1: CASE_outPortFIFOs_3first_credits_4_0_credits__ETC__q3 = credits_1;
      3'd2: CASE_outPortFIFOs_3first_credits_4_0_credits__ETC__q3 = credits_2;
      3'd3: CASE_outPortFIFOs_3first_credits_4_0_credits__ETC__q3 = credits_3;
      default: CASE_outPortFIFOs_3first_credits_4_0_credits__ETC__q3 =
		   credits_4;
    endcase
  end
  always@(outPortFIFOs_1$first or
	  credits_4 or credits or credits_1 or credits_2 or credits_3)
  begin
    case (outPortFIFOs_1$first)
      3'd0: CASE_outPortFIFOs_1first_credits_4_0_credits__ETC__q4 = credits;
      3'd1: CASE_outPortFIFOs_1first_credits_4_0_credits__ETC__q4 = credits_1;
      3'd2: CASE_outPortFIFOs_1first_credits_4_0_credits__ETC__q4 = credits_2;
      3'd3: CASE_outPortFIFOs_1first_credits_4_0_credits__ETC__q4 = credits_3;
      default: CASE_outPortFIFOs_1first_credits_4_0_credits__ETC__q4 =
		   credits_4;
    endcase
  end
  always@(outPortFIFOs$first or
	  credits_4 or credits or credits_1 or credits_2 or credits_3)
  begin
    case (outPortFIFOs$first)
      3'd0: CASE_outPortFIFOsfirst_credits_4_0_credits_1__ETC__q5 = credits;
      3'd1: CASE_outPortFIFOsfirst_credits_4_0_credits_1__ETC__q5 = credits_1;
      3'd2: CASE_outPortFIFOsfirst_credits_4_0_credits_1__ETC__q5 = credits_2;
      3'd3: CASE_outPortFIFOsfirst_credits_4_0_credits_1__ETC__q5 = credits_3;
      default: CASE_outPortFIFOsfirst_credits_4_0_credits_1__ETC__q5 =
		   credits_4;
    endcase
  end
  always@(active_in__h38049 or
	  outport_encoder___d960 or
	  hasFlitsToSend_perIn_4$wget or
	  outport_encoder___d964 or
	  hasFlitsToSend_perIn$wget or
	  outport_encoder___d963 or
	  hasFlitsToSend_perIn_1$wget or
	  outport_encoder___d962 or
	  hasFlitsToSend_perIn_2$wget or
	  outport_encoder___d961 or hasFlitsToSend_perIn_3$wget)
  begin
    case (active_in__h38049)
      3'd0:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d544 =
	      outport_encoder___d964[3] && hasFlitsToSend_perIn$wget[12];
      3'd1:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d544 =
	      outport_encoder___d963[3] && hasFlitsToSend_perIn_1$wget[12];
      3'd2:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d544 =
	      outport_encoder___d962[3] && hasFlitsToSend_perIn_2$wget[12];
      3'd3:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d544 =
	      outport_encoder___d961[3] && hasFlitsToSend_perIn_3$wget[12];
      default: IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d544 =
		   active_in__h38049 != 3'd4 ||
		   outport_encoder___d960[3] &&
		   hasFlitsToSend_perIn_4$wget[12];
    endcase
  end
  always@(active_in__h38906 or
	  outport_encoder___d960 or
	  hasFlitsToSend_perIn_4$wget or
	  outport_encoder___d964 or
	  hasFlitsToSend_perIn$wget or
	  outport_encoder___d963 or
	  hasFlitsToSend_perIn_1$wget or
	  outport_encoder___d962 or
	  hasFlitsToSend_perIn_2$wget or
	  outport_encoder___d961 or hasFlitsToSend_perIn_3$wget)
  begin
    case (active_in__h38906)
      3'd0:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d606 =
	      outport_encoder___d964[3] && hasFlitsToSend_perIn$wget[12];
      3'd1:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d606 =
	      outport_encoder___d963[3] && hasFlitsToSend_perIn_1$wget[12];
      3'd2:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d606 =
	      outport_encoder___d962[3] && hasFlitsToSend_perIn_2$wget[12];
      3'd3:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d606 =
	      outport_encoder___d961[3] && hasFlitsToSend_perIn_3$wget[12];
      default: IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d606 =
		   active_in__h38906 != 3'd4 ||
		   outport_encoder___d960[3] &&
		   hasFlitsToSend_perIn_4$wget[12];
    endcase
  end
  always@(active_in__h39763 or
	  outport_encoder___d960 or
	  hasFlitsToSend_perIn_4$wget or
	  outport_encoder___d964 or
	  hasFlitsToSend_perIn$wget or
	  outport_encoder___d963 or
	  hasFlitsToSend_perIn_1$wget or
	  outport_encoder___d962 or
	  hasFlitsToSend_perIn_2$wget or
	  outport_encoder___d961 or hasFlitsToSend_perIn_3$wget)
  begin
    case (active_in__h39763)
      3'd0:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d668 =
	      outport_encoder___d964[3] && hasFlitsToSend_perIn$wget[12];
      3'd1:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d668 =
	      outport_encoder___d963[3] && hasFlitsToSend_perIn_1$wget[12];
      3'd2:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d668 =
	      outport_encoder___d962[3] && hasFlitsToSend_perIn_2$wget[12];
      3'd3:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d668 =
	      outport_encoder___d961[3] && hasFlitsToSend_perIn_3$wget[12];
      default: IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d668 =
		   active_in__h39763 != 3'd4 ||
		   outport_encoder___d960[3] &&
		   hasFlitsToSend_perIn_4$wget[12];
    endcase
  end
  always@(active_in__h40620 or
	  outport_encoder___d960 or
	  hasFlitsToSend_perIn_4$wget or
	  outport_encoder___d964 or
	  hasFlitsToSend_perIn$wget or
	  outport_encoder___d963 or
	  hasFlitsToSend_perIn_1$wget or
	  outport_encoder___d962 or
	  hasFlitsToSend_perIn_2$wget or
	  outport_encoder___d961 or hasFlitsToSend_perIn_3$wget)
  begin
    case (active_in__h40620)
      3'd0:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d730 =
	      outport_encoder___d964[3] && hasFlitsToSend_perIn$wget[12];
      3'd1:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d730 =
	      outport_encoder___d963[3] && hasFlitsToSend_perIn_1$wget[12];
      3'd2:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d730 =
	      outport_encoder___d962[3] && hasFlitsToSend_perIn_2$wget[12];
      3'd3:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d730 =
	      outport_encoder___d961[3] && hasFlitsToSend_perIn_3$wget[12];
      default: IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d730 =
		   active_in__h40620 != 3'd4 ||
		   outport_encoder___d960[3] &&
		   hasFlitsToSend_perIn_4$wget[12];
    endcase
  end
  always@(active_in__h38049 or
	  outport_encoder___d960 or
	  hasFlitsToSend_perIn_4$wget or
	  outport_encoder___d964 or
	  hasFlitsToSend_perIn$wget or
	  outport_encoder___d963 or
	  hasFlitsToSend_perIn_1$wget or
	  outport_encoder___d962 or
	  hasFlitsToSend_perIn_2$wget or
	  outport_encoder___d961 or hasFlitsToSend_perIn_3$wget)
  begin
    case (active_in__h38049)
      3'd0:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d993 =
	      !outport_encoder___d964[3] || !hasFlitsToSend_perIn$wget[12];
      3'd1:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d993 =
	      !outport_encoder___d963[3] || !hasFlitsToSend_perIn_1$wget[12];
      3'd2:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d993 =
	      !outport_encoder___d962[3] || !hasFlitsToSend_perIn_2$wget[12];
      3'd3:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d993 =
	      !outport_encoder___d961[3] || !hasFlitsToSend_perIn_3$wget[12];
      default: IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d993 =
		   active_in__h38049 == 3'd4 &&
		   (!outport_encoder___d960[3] ||
		    !hasFlitsToSend_perIn_4$wget[12]);
    endcase
  end
  always@(active_in__h38906 or
	  outport_encoder___d960 or
	  hasFlitsToSend_perIn_4$wget or
	  outport_encoder___d964 or
	  hasFlitsToSend_perIn$wget or
	  outport_encoder___d963 or
	  hasFlitsToSend_perIn_1$wget or
	  outport_encoder___d962 or
	  hasFlitsToSend_perIn_2$wget or
	  outport_encoder___d961 or hasFlitsToSend_perIn_3$wget)
  begin
    case (active_in__h38906)
      3'd0:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d995 =
	      !outport_encoder___d964[3] || !hasFlitsToSend_perIn$wget[12];
      3'd1:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d995 =
	      !outport_encoder___d963[3] || !hasFlitsToSend_perIn_1$wget[12];
      3'd2:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d995 =
	      !outport_encoder___d962[3] || !hasFlitsToSend_perIn_2$wget[12];
      3'd3:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d995 =
	      !outport_encoder___d961[3] || !hasFlitsToSend_perIn_3$wget[12];
      default: IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d995 =
		   active_in__h38906 == 3'd4 &&
		   (!outport_encoder___d960[3] ||
		    !hasFlitsToSend_perIn_4$wget[12]);
    endcase
  end
  always@(active_in__h39763 or
	  outport_encoder___d960 or
	  hasFlitsToSend_perIn_4$wget or
	  outport_encoder___d964 or
	  hasFlitsToSend_perIn$wget or
	  outport_encoder___d963 or
	  hasFlitsToSend_perIn_1$wget or
	  outport_encoder___d962 or
	  hasFlitsToSend_perIn_2$wget or
	  outport_encoder___d961 or hasFlitsToSend_perIn_3$wget)
  begin
    case (active_in__h39763)
      3'd0:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d997 =
	      !outport_encoder___d964[3] || !hasFlitsToSend_perIn$wget[12];
      3'd1:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d997 =
	      !outport_encoder___d963[3] || !hasFlitsToSend_perIn_1$wget[12];
      3'd2:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d997 =
	      !outport_encoder___d962[3] || !hasFlitsToSend_perIn_2$wget[12];
      3'd3:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d997 =
	      !outport_encoder___d961[3] || !hasFlitsToSend_perIn_3$wget[12];
      default: IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d997 =
		   active_in__h39763 == 3'd4 &&
		   (!outport_encoder___d960[3] ||
		    !hasFlitsToSend_perIn_4$wget[12]);
    endcase
  end
  always@(active_in__h40620 or
	  outport_encoder___d960 or
	  hasFlitsToSend_perIn_4$wget or
	  outport_encoder___d964 or
	  hasFlitsToSend_perIn$wget or
	  outport_encoder___d963 or
	  hasFlitsToSend_perIn_1$wget or
	  outport_encoder___d962 or
	  hasFlitsToSend_perIn_2$wget or
	  outport_encoder___d961 or hasFlitsToSend_perIn_3$wget)
  begin
    case (active_in__h40620)
      3'd0:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d999 =
	      !outport_encoder___d964[3] || !hasFlitsToSend_perIn$wget[12];
      3'd1:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d999 =
	      !outport_encoder___d963[3] || !hasFlitsToSend_perIn_1$wget[12];
      3'd2:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d999 =
	      !outport_encoder___d962[3] || !hasFlitsToSend_perIn_2$wget[12];
      3'd3:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d999 =
	      !outport_encoder___d961[3] || !hasFlitsToSend_perIn_3$wget[12];
      default: IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d999 =
		   active_in__h40620 == 3'd4 &&
		   (!outport_encoder___d960[3] ||
		    !hasFlitsToSend_perIn_4$wget[12]);
    endcase
  end
  always@(active_in__h38049 or
	  hasFlitsToSend_perIn_4$wget or
	  hasFlitsToSend_perIn$wget or
	  hasFlitsToSend_perIn_1$wget or
	  hasFlitsToSend_perIn_2$wget or hasFlitsToSend_perIn_3$wget)
  begin
    case (active_in__h38049)
      3'd0:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d977 =
	      hasFlitsToSend_perIn$wget[11:0];
      3'd1:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d977 =
	      hasFlitsToSend_perIn_1$wget[11:0];
      3'd2:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d977 =
	      hasFlitsToSend_perIn_2$wget[11:0];
      3'd3:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d977 =
	      hasFlitsToSend_perIn_3$wget[11:0];
      3'd4:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d977 =
	      hasFlitsToSend_perIn_4$wget[11:0];
      default: IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d977 =
		   hasFlitsToSend_perIn_4$wget[11:0];
    endcase
  end
  always@(active_in__h38906 or
	  hasFlitsToSend_perIn_4$wget or
	  hasFlitsToSend_perIn$wget or
	  hasFlitsToSend_perIn_1$wget or
	  hasFlitsToSend_perIn_2$wget or hasFlitsToSend_perIn_3$wget)
  begin
    case (active_in__h38906)
      3'd0:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d978 =
	      hasFlitsToSend_perIn$wget[11:0];
      3'd1:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d978 =
	      hasFlitsToSend_perIn_1$wget[11:0];
      3'd2:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d978 =
	      hasFlitsToSend_perIn_2$wget[11:0];
      3'd3:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d978 =
	      hasFlitsToSend_perIn_3$wget[11:0];
      3'd4:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d978 =
	      hasFlitsToSend_perIn_4$wget[11:0];
      default: IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d978 =
		   hasFlitsToSend_perIn_4$wget[11:0];
    endcase
  end
  always@(active_in__h39763 or
	  hasFlitsToSend_perIn_4$wget or
	  hasFlitsToSend_perIn$wget or
	  hasFlitsToSend_perIn_1$wget or
	  hasFlitsToSend_perIn_2$wget or hasFlitsToSend_perIn_3$wget)
  begin
    case (active_in__h39763)
      3'd0:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d979 =
	      hasFlitsToSend_perIn$wget[11:0];
      3'd1:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d979 =
	      hasFlitsToSend_perIn_1$wget[11:0];
      3'd2:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d979 =
	      hasFlitsToSend_perIn_2$wget[11:0];
      3'd3:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d979 =
	      hasFlitsToSend_perIn_3$wget[11:0];
      3'd4:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d979 =
	      hasFlitsToSend_perIn_4$wget[11:0];
      default: IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d979 =
		   hasFlitsToSend_perIn_4$wget[11:0];
    endcase
  end
  always@(active_in__h40620 or
	  hasFlitsToSend_perIn_4$wget or
	  hasFlitsToSend_perIn$wget or
	  hasFlitsToSend_perIn_1$wget or
	  hasFlitsToSend_perIn_2$wget or hasFlitsToSend_perIn_3$wget)
  begin
    case (active_in__h40620)
      3'd0:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d980 =
	      hasFlitsToSend_perIn$wget[11:0];
      3'd1:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d980 =
	      hasFlitsToSend_perIn_1$wget[11:0];
      3'd2:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d980 =
	      hasFlitsToSend_perIn_2$wget[11:0];
      3'd3:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d980 =
	      hasFlitsToSend_perIn_3$wget[11:0];
      3'd4:
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d980 =
	      hasFlitsToSend_perIn_4$wget[11:0];
      default: IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d980 =
		   hasFlitsToSend_perIn_4$wget[11:0];
    endcase
  end

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (!RST_N)
      begin
        credits <= `BSV_ASSIGNMENT_DELAY 4'd8;
	credits_1 <= `BSV_ASSIGNMENT_DELAY 4'd8;
	credits_2 <= `BSV_ASSIGNMENT_DELAY 4'd8;
	credits_3 <= `BSV_ASSIGNMENT_DELAY 4'd8;
	credits_4 <= `BSV_ASSIGNMENT_DELAY 4'd8;
	inPortVL <= `BSV_ASSIGNMENT_DELAY 3'd0;
	inPortVL_1 <= `BSV_ASSIGNMENT_DELAY 3'd0;
	inPortVL_2 <= `BSV_ASSIGNMENT_DELAY 3'd0;
	inPortVL_3 <= `BSV_ASSIGNMENT_DELAY 3'd0;
	inPortVL_4 <= `BSV_ASSIGNMENT_DELAY 3'd0;
	lockedVL <= `BSV_ASSIGNMENT_DELAY 1'd0;
	lockedVL_1 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	lockedVL_2 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	lockedVL_3 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	lockedVL_4 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	selectedIO_reg_0 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	selectedIO_reg_0_1 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	selectedIO_reg_0_2 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	selectedIO_reg_0_3 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	selectedIO_reg_0_4 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	selectedIO_reg_1 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	selectedIO_reg_1_1 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	selectedIO_reg_1_2 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	selectedIO_reg_1_3 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	selectedIO_reg_1_4 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	selectedIO_reg_2 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	selectedIO_reg_2_1 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	selectedIO_reg_2_2 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	selectedIO_reg_2_3 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	selectedIO_reg_2_4 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	selectedIO_reg_3 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	selectedIO_reg_3_1 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	selectedIO_reg_3_2 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	selectedIO_reg_3_3 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	selectedIO_reg_3_4 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	selectedIO_reg_4 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	selectedIO_reg_4_1 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	selectedIO_reg_4_2 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	selectedIO_reg_4_3 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	selectedIO_reg_4_4 <= `BSV_ASSIGNMENT_DELAY 1'd0;
      end
    else
      begin
        if (credits$EN) credits <= `BSV_ASSIGNMENT_DELAY credits$D_IN;
	if (credits_1$EN) credits_1 <= `BSV_ASSIGNMENT_DELAY credits_1$D_IN;
	if (credits_2$EN) credits_2 <= `BSV_ASSIGNMENT_DELAY credits_2$D_IN;
	if (credits_3$EN) credits_3 <= `BSV_ASSIGNMENT_DELAY credits_3$D_IN;
	if (credits_4$EN) credits_4 <= `BSV_ASSIGNMENT_DELAY credits_4$D_IN;
	if (inPortVL$EN) inPortVL <= `BSV_ASSIGNMENT_DELAY inPortVL$D_IN;
	if (inPortVL_1$EN)
	  inPortVL_1 <= `BSV_ASSIGNMENT_DELAY inPortVL_1$D_IN;
	if (inPortVL_2$EN)
	  inPortVL_2 <= `BSV_ASSIGNMENT_DELAY inPortVL_2$D_IN;
	if (inPortVL_3$EN)
	  inPortVL_3 <= `BSV_ASSIGNMENT_DELAY inPortVL_3$D_IN;
	if (inPortVL_4$EN)
	  inPortVL_4 <= `BSV_ASSIGNMENT_DELAY inPortVL_4$D_IN;
	if (lockedVL$EN) lockedVL <= `BSV_ASSIGNMENT_DELAY lockedVL$D_IN;
	if (lockedVL_1$EN)
	  lockedVL_1 <= `BSV_ASSIGNMENT_DELAY lockedVL_1$D_IN;
	if (lockedVL_2$EN)
	  lockedVL_2 <= `BSV_ASSIGNMENT_DELAY lockedVL_2$D_IN;
	if (lockedVL_3$EN)
	  lockedVL_3 <= `BSV_ASSIGNMENT_DELAY lockedVL_3$D_IN;
	if (lockedVL_4$EN)
	  lockedVL_4 <= `BSV_ASSIGNMENT_DELAY lockedVL_4$D_IN;
	if (selectedIO_reg_0$EN)
	  selectedIO_reg_0 <= `BSV_ASSIGNMENT_DELAY selectedIO_reg_0$D_IN;
	if (selectedIO_reg_0_1$EN)
	  selectedIO_reg_0_1 <= `BSV_ASSIGNMENT_DELAY selectedIO_reg_0_1$D_IN;
	if (selectedIO_reg_0_2$EN)
	  selectedIO_reg_0_2 <= `BSV_ASSIGNMENT_DELAY selectedIO_reg_0_2$D_IN;
	if (selectedIO_reg_0_3$EN)
	  selectedIO_reg_0_3 <= `BSV_ASSIGNMENT_DELAY selectedIO_reg_0_3$D_IN;
	if (selectedIO_reg_0_4$EN)
	  selectedIO_reg_0_4 <= `BSV_ASSIGNMENT_DELAY selectedIO_reg_0_4$D_IN;
	if (selectedIO_reg_1$EN)
	  selectedIO_reg_1 <= `BSV_ASSIGNMENT_DELAY selectedIO_reg_1$D_IN;
	if (selectedIO_reg_1_1$EN)
	  selectedIO_reg_1_1 <= `BSV_ASSIGNMENT_DELAY selectedIO_reg_1_1$D_IN;
	if (selectedIO_reg_1_2$EN)
	  selectedIO_reg_1_2 <= `BSV_ASSIGNMENT_DELAY selectedIO_reg_1_2$D_IN;
	if (selectedIO_reg_1_3$EN)
	  selectedIO_reg_1_3 <= `BSV_ASSIGNMENT_DELAY selectedIO_reg_1_3$D_IN;
	if (selectedIO_reg_1_4$EN)
	  selectedIO_reg_1_4 <= `BSV_ASSIGNMENT_DELAY selectedIO_reg_1_4$D_IN;
	if (selectedIO_reg_2$EN)
	  selectedIO_reg_2 <= `BSV_ASSIGNMENT_DELAY selectedIO_reg_2$D_IN;
	if (selectedIO_reg_2_1$EN)
	  selectedIO_reg_2_1 <= `BSV_ASSIGNMENT_DELAY selectedIO_reg_2_1$D_IN;
	if (selectedIO_reg_2_2$EN)
	  selectedIO_reg_2_2 <= `BSV_ASSIGNMENT_DELAY selectedIO_reg_2_2$D_IN;
	if (selectedIO_reg_2_3$EN)
	  selectedIO_reg_2_3 <= `BSV_ASSIGNMENT_DELAY selectedIO_reg_2_3$D_IN;
	if (selectedIO_reg_2_4$EN)
	  selectedIO_reg_2_4 <= `BSV_ASSIGNMENT_DELAY selectedIO_reg_2_4$D_IN;
	if (selectedIO_reg_3$EN)
	  selectedIO_reg_3 <= `BSV_ASSIGNMENT_DELAY selectedIO_reg_3$D_IN;
	if (selectedIO_reg_3_1$EN)
	  selectedIO_reg_3_1 <= `BSV_ASSIGNMENT_DELAY selectedIO_reg_3_1$D_IN;
	if (selectedIO_reg_3_2$EN)
	  selectedIO_reg_3_2 <= `BSV_ASSIGNMENT_DELAY selectedIO_reg_3_2$D_IN;
	if (selectedIO_reg_3_3$EN)
	  selectedIO_reg_3_3 <= `BSV_ASSIGNMENT_DELAY selectedIO_reg_3_3$D_IN;
	if (selectedIO_reg_3_4$EN)
	  selectedIO_reg_3_4 <= `BSV_ASSIGNMENT_DELAY selectedIO_reg_3_4$D_IN;
	if (selectedIO_reg_4$EN)
	  selectedIO_reg_4 <= `BSV_ASSIGNMENT_DELAY selectedIO_reg_4$D_IN;
	if (selectedIO_reg_4_1$EN)
	  selectedIO_reg_4_1 <= `BSV_ASSIGNMENT_DELAY selectedIO_reg_4_1$D_IN;
	if (selectedIO_reg_4_2$EN)
	  selectedIO_reg_4_2 <= `BSV_ASSIGNMENT_DELAY selectedIO_reg_4_2$D_IN;
	if (selectedIO_reg_4_3$EN)
	  selectedIO_reg_4_3 <= `BSV_ASSIGNMENT_DELAY selectedIO_reg_4_3$D_IN;
	if (selectedIO_reg_4_4$EN)
	  selectedIO_reg_4_4 <= `BSV_ASSIGNMENT_DELAY selectedIO_reg_4_4$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    credits = 4'hA;
    credits_1 = 4'hA;
    credits_2 = 4'hA;
    credits_3 = 4'hA;
    credits_4 = 4'hA;
    inPortVL = 3'h2;
    inPortVL_1 = 3'h2;
    inPortVL_2 = 3'h2;
    inPortVL_3 = 3'h2;
    inPortVL_4 = 3'h2;
    lockedVL = 1'h0;
    lockedVL_1 = 1'h0;
    lockedVL_2 = 1'h0;
    lockedVL_3 = 1'h0;
    lockedVL_4 = 1'h0;
    selectedIO_reg_0 = 1'h0;
    selectedIO_reg_0_1 = 1'h0;
    selectedIO_reg_0_2 = 1'h0;
    selectedIO_reg_0_3 = 1'h0;
    selectedIO_reg_0_4 = 1'h0;
    selectedIO_reg_1 = 1'h0;
    selectedIO_reg_1_1 = 1'h0;
    selectedIO_reg_1_2 = 1'h0;
    selectedIO_reg_1_3 = 1'h0;
    selectedIO_reg_1_4 = 1'h0;
    selectedIO_reg_2 = 1'h0;
    selectedIO_reg_2_1 = 1'h0;
    selectedIO_reg_2_2 = 1'h0;
    selectedIO_reg_2_3 = 1'h0;
    selectedIO_reg_2_4 = 1'h0;
    selectedIO_reg_3 = 1'h0;
    selectedIO_reg_3_1 = 1'h0;
    selectedIO_reg_3_2 = 1'h0;
    selectedIO_reg_3_3 = 1'h0;
    selectedIO_reg_3_4 = 1'h0;
    selectedIO_reg_4 = 1'h0;
    selectedIO_reg_4_1 = 1'h0;
    selectedIO_reg_4_2 = 1'h0;
    selectedIO_reg_4_3 = 1'h0;
    selectedIO_reg_4_4 = 1'h0;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N) if (EN_out_ports_0_putCredits) $write("");
    if (RST_N)
      if (EN_out_ports_0_putCredits && out_ports_0_putCredits_cr_in[1])
	$write("");
    if (RST_N) if (EN_out_ports_1_putCredits) $write("");
    if (RST_N)
      if (EN_out_ports_1_putCredits && out_ports_1_putCredits_cr_in[1])
	$write("");
    if (RST_N) if (EN_out_ports_2_putCredits) $write("");
    if (RST_N)
      if (EN_out_ports_2_putCredits && out_ports_2_putCredits_cr_in[1])
	$write("");
    if (RST_N) if (EN_out_ports_3_putCredits) $write("");
    if (RST_N)
      if (EN_out_ports_3_putCredits && out_ports_3_putCredits_cr_in[1])
	$write("");
    if (RST_N) if (EN_out_ports_4_putCredits) $write("");
    if (RST_N)
      if (EN_out_ports_4_putCredits && out_ports_4_putCredits_cr_in[1])
	$write("");
    if (RST_N)
      if (EN_out_ports_0_getFlit &&
	  IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d924 &&
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d991)
	$display("Dynamic assertion failed: \"IQRouter.bsv\", line 634, column 47\nOutput selected invalid flit!");
    if (RST_N)
      if (EN_out_ports_0_getFlit &&
	  IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d924 &&
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_NOT_out_ETC___d991)
	$finish(32'd0);
    if (RST_N)
      if (EN_out_ports_1_getFlit &&
	  IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d934 &&
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d993)
	$display("Dynamic assertion failed: \"IQRouter.bsv\", line 634, column 47\nOutput selected invalid flit!");
    if (RST_N)
      if (EN_out_ports_1_getFlit &&
	  IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d934 &&
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d993)
	$finish(32'd0);
    if (RST_N)
      if (EN_out_ports_2_getFlit &&
	  IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d936 &&
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d995)
	$display("Dynamic assertion failed: \"IQRouter.bsv\", line 634, column 47\nOutput selected invalid flit!");
    if (RST_N)
      if (EN_out_ports_2_getFlit &&
	  IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d936 &&
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d995)
	$finish(32'd0);
    if (RST_N)
      if (EN_out_ports_3_getFlit &&
	  IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d938 &&
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d997)
	$display("Dynamic assertion failed: \"IQRouter.bsv\", line 634, column 47\nOutput selected invalid flit!");
    if (RST_N)
      if (EN_out_ports_3_getFlit &&
	  IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d938 &&
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d997)
	$finish(32'd0);
    if (RST_N)
      if (EN_out_ports_4_getFlit &&
	  IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d940 &&
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d999)
	$display("Dynamic assertion failed: \"IQRouter.bsv\", line 634, column 47\nOutput selected invalid flit!");
    if (RST_N)
      if (EN_out_ports_4_getFlit &&
	  IF_outport_encoder_45_BIT_3_46_THEN_outport_en_ETC___d940 &&
	  IF_IF_outport_encoder_45_BIT_3_46_THEN_IF_outp_ETC___d999)
	$finish(32'd0);
    if (RST_N)
      if (credits_set$whas && !credits_clear$whas &&
	  credits_read_PLUS_1___d812 > 4'd8)
	$write("");
    if (RST_N)
      if (!credits_set$whas && credits_clear$whas && credits == 4'd0)
	$write("");
    if (RST_N)
      if (credits_set_1$whas && !credits_clear_1$whas &&
	  credits_1_read_PLUS_1___d813 > 4'd8)
	$write("");
    if (RST_N)
      if (!credits_set_1$whas && credits_clear_1$whas && credits_1 == 4'd0)
	$write("");
    if (RST_N)
      if (credits_set_2$whas && !credits_clear_2$whas &&
	  credits_2_read_PLUS_1___d814 > 4'd8)
	$write("");
    if (RST_N)
      if (!credits_set_2$whas && credits_clear_2$whas && credits_2 == 4'd0)
	$write("");
    if (RST_N)
      if (credits_set_3$whas && !credits_clear_3$whas &&
	  credits_3_read__0_PLUS_1___d815 > 4'd8)
	$write("");
    if (RST_N)
      if (!credits_set_3$whas && credits_clear_3$whas && credits_3 == 4'd0)
	$write("");
    if (RST_N)
      if (credits_set_4$whas && !credits_clear_4$whas &&
	  credits_4_read__2_PLUS_1___d816 > 4'd8)
	$write("");
    if (RST_N)
      if (!credits_set_4$whas && credits_clear_4$whas && credits_4 == 4'd0)
	$write("");
  end
  // synopsys translate_on
endmodule  // mkIQRouterCore

