


// Ports:
// Name                         I/O  size props
// outport_encoder                O     4
// outport_encoder_vec            I     5
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
`define BSV_ASSIGNMENT_DELAY
`endif

module Outport_encoder(outport_encoder_vec,
			      outport_encoder);
  // value method outport_encoder
  input  [4 : 0] outport_encoder_vec;
  output [3 : 0] outport_encoder;

  // signals for module outputs
  wire [3 : 0] outport_encoder;

  // value method outport_encoder
  assign outport_encoder =
	     { outport_encoder_vec[0] || outport_encoder_vec[1] ||
	       outport_encoder_vec[2] ||
	       outport_encoder_vec[3] ||
	       outport_encoder_vec[4],
	       outport_encoder_vec[0] ?
		 3'd0 :
		 (outport_encoder_vec[1] ?
		    3'd1 :
		    (outport_encoder_vec[2] ?
		       3'd2 :
		       (outport_encoder_vec[3] ? 3'd3 : 3'd4))) } ;
endmodule  // module_outport_encoder

