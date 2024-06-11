module CORDIC_Controller(
  input         clock,
  input         reset,
  output        io_out_output_rdy,
  output        io_out_pipe_rdy,
  output [31:0] io_out_pipeline_count
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] iteration_count; // @[TestCORDIC.scala 122:40]
  reg [31:0] pipeline_count; // @[TestCORDIC.scala 123:38]
  wire [5:0] _io_out_output_rdy_T_1 = 6'h20 - 6'h2; // @[TestCORDIC.scala 132:53]
  wire [31:0] _GEN_0 = {{26'd0}, _io_out_output_rdy_T_1}; // @[TestCORDIC.scala 132:44]
  wire  _io_out_pipe_rdy_T = pipeline_count == 32'h3; // @[TestCORDIC.scala 133:41]
  wire [31:0] _pipeline_count_T_2 = pipeline_count + 32'h1; // @[TestCORDIC.scala 135:69]
  wire [31:0] _iteration_count_T_5 = iteration_count + 32'h1; // @[TestCORDIC.scala 136:107]
  assign io_out_output_rdy = iteration_count == _GEN_0 & io_out_pipe_rdy; // @[TestCORDIC.scala 132:59]
  assign io_out_pipe_rdy = pipeline_count == 32'h3; // @[TestCORDIC.scala 133:41]
  assign io_out_pipeline_count = pipeline_count; // @[TestCORDIC.scala 124:25]
  always @(posedge clock) begin
    if (reset) begin // @[TestCORDIC.scala 122:40]
      iteration_count <= 32'h0; // @[TestCORDIC.scala 122:40]
    end else if (_io_out_pipe_rdy_T) begin // @[TestCORDIC.scala 136:25]
      if (iteration_count == 32'h21) begin // @[TestCORDIC.scala 136:53]
        iteration_count <= 32'h0;
      end else begin
        iteration_count <= _iteration_count_T_5;
      end
    end
    if (reset) begin // @[TestCORDIC.scala 123:38]
      pipeline_count <= 32'h0; // @[TestCORDIC.scala 123:38]
    end else if (_io_out_pipe_rdy_T) begin // @[TestCORDIC.scala 135:24]
      pipeline_count <= 32'h1;
    end else begin
      pipeline_count <= _pipeline_count_T_2;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  iteration_count = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  pipeline_count = _RAND_1[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module CORDIC_ROM(
  output [31:0] io_atanout,
  input  [5:0]  io_atanselect
);
  wire [31:0] _GEN_1 = 6'h1 == io_atanselect ? 32'h3eed6338 : 32'h3f490fdb; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_2 = 6'h2 == io_atanselect ? 32'h3e7adbb0 : _GEN_1; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_3 = 6'h3 == io_atanselect ? 32'h3dfeadd5 : _GEN_2; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_4 = 6'h4 == io_atanselect ? 32'h3d7faade : _GEN_3; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_5 = 6'h5 == io_atanselect ? 32'h3cffeaae : _GEN_4; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_6 = 6'h6 == io_atanselect ? 32'h3c7ffaab : _GEN_5; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_7 = 6'h7 == io_atanselect ? 32'h3bfffeab : _GEN_6; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_8 = 6'h8 == io_atanselect ? 32'h3b7fffab : _GEN_7; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_9 = 6'h9 == io_atanselect ? 32'h3affffeb : _GEN_8; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_10 = 6'ha == io_atanselect ? 32'h3a7ffffb : _GEN_9; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_11 = 6'hb == io_atanselect ? 32'h39ffffff : _GEN_10; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_12 = 6'hc == io_atanselect ? 32'h39800000 : _GEN_11; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_13 = 6'hd == io_atanselect ? 32'h39000000 : _GEN_12; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_14 = 6'he == io_atanselect ? 32'h38800000 : _GEN_13; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_15 = 6'hf == io_atanselect ? 32'h38000000 : _GEN_14; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_16 = 6'h10 == io_atanselect ? 32'h37800000 : _GEN_15; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_17 = 6'h11 == io_atanselect ? 32'h37000000 : _GEN_16; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_18 = 6'h12 == io_atanselect ? 32'h36800000 : _GEN_17; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_19 = 6'h13 == io_atanselect ? 32'h36000000 : _GEN_18; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_20 = 6'h14 == io_atanselect ? 32'h35800000 : _GEN_19; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_21 = 6'h15 == io_atanselect ? 32'h35000000 : _GEN_20; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_22 = 6'h16 == io_atanselect ? 32'h34800000 : _GEN_21; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_23 = 6'h17 == io_atanselect ? 32'h34000000 : _GEN_22; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_24 = 6'h18 == io_atanselect ? 32'h33800000 : _GEN_23; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_25 = 6'h19 == io_atanselect ? 32'h33000000 : _GEN_24; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_26 = 6'h1a == io_atanselect ? 32'h32800000 : _GEN_25; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_27 = 6'h1b == io_atanselect ? 32'h32000000 : _GEN_26; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_28 = 6'h1c == io_atanselect ? 32'h31800000 : _GEN_27; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_29 = 6'h1d == io_atanselect ? 32'h31000000 : _GEN_28; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_30 = 6'h1e == io_atanselect ? 32'h30800000 : _GEN_29; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_31 = 6'h1f == io_atanselect ? 32'h40490fdb : _GEN_30; // @[TestCORDIC.scala 255:{14,14}]
  wire [31:0] _GEN_32 = 6'h20 == io_atanselect ? 32'h3f490fdb : _GEN_31; // @[TestCORDIC.scala 255:{14,14}]
  assign io_atanout = 6'h21 == io_atanselect ? 32'h3eed6338 : _GEN_32; // @[TestCORDIC.scala 255:{14,14}]
endmodule
module full_subber(
  input  [7:0] io_in_a,
  input  [7:0] io_in_b,
  output [7:0] io_out_s,
  output       io_out_c
);
  wire [8:0] _result_T = io_in_a - io_in_b; // @[BinaryDesigns.scala 69:23]
  wire [9:0] _result_T_2 = _result_T - 9'h0; // @[BinaryDesigns.scala 69:34]
  wire [8:0] result = _result_T_2[8:0]; // @[BinaryDesigns.scala 68:22 69:12]
  assign io_out_s = result[7:0]; // @[BinaryDesigns.scala 70:23]
  assign io_out_c = result[8]; // @[BinaryDesigns.scala 71:23]
endmodule
module twoscomplement(
  input  [7:0] io_in,
  output [7:0] io_out
);
  wire [7:0] _x_T = ~io_in; // @[BinaryDesigns.scala 25:16]
  assign io_out = 8'h1 + _x_T; // @[BinaryDesigns.scala 25:14]
endmodule
module full_adder(
  input  [23:0] io_in_a,
  input  [23:0] io_in_b,
  output [23:0] io_out_s,
  output        io_out_c
);
  wire [24:0] _result_T = io_in_a + io_in_b; // @[BinaryDesigns.scala 55:23]
  wire [25:0] _result_T_1 = {{1'd0}, _result_T}; // @[BinaryDesigns.scala 55:34]
  wire [24:0] result = _result_T_1[24:0]; // @[BinaryDesigns.scala 54:22 55:12]
  assign io_out_s = result[23:0]; // @[BinaryDesigns.scala 56:23]
  assign io_out_c = result[24]; // @[BinaryDesigns.scala 57:23]
endmodule
module twoscomplement_1(
  input  [23:0] io_in,
  output [23:0] io_out
);
  wire [23:0] _x_T = ~io_in; // @[BinaryDesigns.scala 25:16]
  assign io_out = 24'h1 + _x_T; // @[BinaryDesigns.scala 25:14]
endmodule
module shifter(
  input  [23:0] io_in_a,
  input  [4:0]  io_in_b,
  output [23:0] io_out_s
);
  wire [23:0] _result_T = io_in_a >> io_in_b; // @[BinaryDesigns.scala 39:25]
  wire [54:0] _GEN_0 = {{31'd0}, _result_T}; // @[BinaryDesigns.scala 38:26 39:14 41:14]
  assign io_out_s = _GEN_0[23:0]; // @[BinaryDesigns.scala 36:22]
endmodule
module leadingOneDetector(
  input  [23:0] io_in,
  output [4:0]  io_out
);
  wire [1:0] _hotValue_T = io_in[1] ? 2'h2 : 2'h1; // @[Mux.scala 47:70]
  wire [1:0] _hotValue_T_1 = io_in[2] ? 2'h3 : _hotValue_T; // @[Mux.scala 47:70]
  wire [2:0] _hotValue_T_2 = io_in[3] ? 3'h4 : {{1'd0}, _hotValue_T_1}; // @[Mux.scala 47:70]
  wire [2:0] _hotValue_T_3 = io_in[4] ? 3'h5 : _hotValue_T_2; // @[Mux.scala 47:70]
  wire [2:0] _hotValue_T_4 = io_in[5] ? 3'h6 : _hotValue_T_3; // @[Mux.scala 47:70]
  wire [2:0] _hotValue_T_5 = io_in[6] ? 3'h7 : _hotValue_T_4; // @[Mux.scala 47:70]
  wire [3:0] _hotValue_T_6 = io_in[7] ? 4'h8 : {{1'd0}, _hotValue_T_5}; // @[Mux.scala 47:70]
  wire [3:0] _hotValue_T_7 = io_in[8] ? 4'h9 : _hotValue_T_6; // @[Mux.scala 47:70]
  wire [3:0] _hotValue_T_8 = io_in[9] ? 4'ha : _hotValue_T_7; // @[Mux.scala 47:70]
  wire [3:0] _hotValue_T_9 = io_in[10] ? 4'hb : _hotValue_T_8; // @[Mux.scala 47:70]
  wire [3:0] _hotValue_T_10 = io_in[11] ? 4'hc : _hotValue_T_9; // @[Mux.scala 47:70]
  wire [3:0] _hotValue_T_11 = io_in[12] ? 4'hd : _hotValue_T_10; // @[Mux.scala 47:70]
  wire [3:0] _hotValue_T_12 = io_in[13] ? 4'he : _hotValue_T_11; // @[Mux.scala 47:70]
  wire [3:0] _hotValue_T_13 = io_in[14] ? 4'hf : _hotValue_T_12; // @[Mux.scala 47:70]
  wire [4:0] _hotValue_T_14 = io_in[15] ? 5'h10 : {{1'd0}, _hotValue_T_13}; // @[Mux.scala 47:70]
  wire [4:0] _hotValue_T_15 = io_in[16] ? 5'h11 : _hotValue_T_14; // @[Mux.scala 47:70]
  wire [4:0] _hotValue_T_16 = io_in[17] ? 5'h12 : _hotValue_T_15; // @[Mux.scala 47:70]
  wire [4:0] _hotValue_T_17 = io_in[18] ? 5'h13 : _hotValue_T_16; // @[Mux.scala 47:70]
  wire [4:0] _hotValue_T_18 = io_in[19] ? 5'h14 : _hotValue_T_17; // @[Mux.scala 47:70]
  wire [4:0] _hotValue_T_19 = io_in[20] ? 5'h15 : _hotValue_T_18; // @[Mux.scala 47:70]
  wire [4:0] _hotValue_T_20 = io_in[21] ? 5'h16 : _hotValue_T_19; // @[Mux.scala 47:70]
  wire [4:0] _hotValue_T_21 = io_in[22] ? 5'h17 : _hotValue_T_20; // @[Mux.scala 47:70]
  assign io_out = io_in[23] ? 5'h18 : _hotValue_T_21; // @[Mux.scala 47:70]
endmodule
module FP_adder(
  input         clock,
  input         reset,
  input  [31:0] io_in_a,
  input  [31:0] io_in_b,
  output [31:0] io_out_s
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire [7:0] subber_io_in_a; // @[FloatingPointDesigns.scala 82:24]
  wire [7:0] subber_io_in_b; // @[FloatingPointDesigns.scala 82:24]
  wire [7:0] subber_io_out_s; // @[FloatingPointDesigns.scala 82:24]
  wire  subber_io_out_c; // @[FloatingPointDesigns.scala 82:24]
  wire [7:0] complement_io_in; // @[FloatingPointDesigns.scala 88:28]
  wire [7:0] complement_io_out; // @[FloatingPointDesigns.scala 88:28]
  wire [23:0] adder_io_in_a; // @[FloatingPointDesigns.scala 92:23]
  wire [23:0] adder_io_in_b; // @[FloatingPointDesigns.scala 92:23]
  wire [23:0] adder_io_out_s; // @[FloatingPointDesigns.scala 92:23]
  wire  adder_io_out_c; // @[FloatingPointDesigns.scala 92:23]
  wire [23:0] complementN_0_io_in; // @[FloatingPointDesigns.scala 98:31]
  wire [23:0] complementN_0_io_out; // @[FloatingPointDesigns.scala 98:31]
  wire [23:0] complementN_1_io_in; // @[FloatingPointDesigns.scala 100:31]
  wire [23:0] complementN_1_io_out; // @[FloatingPointDesigns.scala 100:31]
  wire [23:0] shifter_io_in_a; // @[FloatingPointDesigns.scala 104:25]
  wire [4:0] shifter_io_in_b; // @[FloatingPointDesigns.scala 104:25]
  wire [23:0] shifter_io_out_s; // @[FloatingPointDesigns.scala 104:25]
  wire [23:0] complementN_2_io_in; // @[FloatingPointDesigns.scala 149:31]
  wire [23:0] complementN_2_io_out; // @[FloatingPointDesigns.scala 149:31]
  wire [23:0] leadingOneFinder_io_in; // @[FloatingPointDesigns.scala 169:34]
  wire [4:0] leadingOneFinder_io_out; // @[FloatingPointDesigns.scala 169:34]
  wire [7:0] subber2_io_in_a; // @[FloatingPointDesigns.scala 171:25]
  wire [7:0] subber2_io_in_b; // @[FloatingPointDesigns.scala 171:25]
  wire [7:0] subber2_io_out_s; // @[FloatingPointDesigns.scala 171:25]
  wire  subber2_io_out_c; // @[FloatingPointDesigns.scala 171:25]
  wire  sign_0 = io_in_a[31]; // @[FloatingPointDesigns.scala 44:23]
  wire  sign_1 = io_in_b[31]; // @[FloatingPointDesigns.scala 45:23]
  wire [8:0] _T_2 = 9'h100 - 9'h2; // @[FloatingPointDesigns.scala 49:62]
  wire [8:0] _GEN_31 = {{1'd0}, io_in_a[30:23]}; // @[FloatingPointDesigns.scala 49:34]
  wire [8:0] _GEN_0 = _GEN_31 > _T_2 ? _T_2 : {{1'd0}, io_in_a[30:23]}; // @[FloatingPointDesigns.scala 49:68 50:14 52:14]
  wire [8:0] _GEN_32 = {{1'd0}, io_in_b[30:23]}; // @[FloatingPointDesigns.scala 54:34]
  wire [8:0] _GEN_1 = _GEN_32 > _T_2 ? _T_2 : {{1'd0}, io_in_b[30:23]}; // @[FloatingPointDesigns.scala 54:68 55:14 57:14]
  wire [22:0] frac_0 = io_in_a[22:0]; // @[FloatingPointDesigns.scala 62:23]
  wire [22:0] frac_1 = io_in_b[22:0]; // @[FloatingPointDesigns.scala 63:23]
  wire [23:0] whole_frac_0 = {1'h1,frac_0}; // @[FloatingPointDesigns.scala 67:26]
  wire [23:0] whole_frac_1 = {1'h1,frac_1}; // @[FloatingPointDesigns.scala 68:26]
  wire [7:0] exp_1 = _GEN_1[7:0]; // @[FloatingPointDesigns.scala 48:19]
  wire [7:0] exp_0 = _GEN_0[7:0]; // @[FloatingPointDesigns.scala 48:19]
  wire [7:0] out_exp = subber_io_out_c ? exp_1 : exp_0; // @[FloatingPointDesigns.scala 110:34 111:15 121:15]
  wire [7:0] sub_exp = subber_io_out_c ? complement_io_out : subber_io_out_s; // @[FloatingPointDesigns.scala 110:34 112:15 122:15]
  wire  out_s = subber_io_out_c ? sign_1 : sign_0; // @[FloatingPointDesigns.scala 110:34 113:13 123:13]
  wire [22:0] out_frac = subber_io_out_c ? frac_1 : frac_0; // @[FloatingPointDesigns.scala 110:34 114:16 124:16]
  wire [23:0] _GEN_8 = subber_io_out_c ? shifter_io_out_s : whole_frac_0; // @[FloatingPointDesigns.scala 110:34 118:21 93:19]
  wire [23:0] _GEN_9 = subber_io_out_c ? whole_frac_1 : shifter_io_out_s; // @[FloatingPointDesigns.scala 110:34 94:19 128:21]
  wire  _new_s_T = ~adder_io_out_c; // @[FloatingPointDesigns.scala 144:15]
  wire  _D_T_1 = sign_0 ^ sign_1; // @[FloatingPointDesigns.scala 157:39]
  wire  D = _new_s_T | sign_0 ^ sign_1; // @[FloatingPointDesigns.scala 157:28]
  wire  E = _new_s_T & ~adder_io_out_s[23] | _new_s_T & ~_D_T_1 | adder_io_out_c & adder_io_out_s[23] & _D_T_1; // @[FloatingPointDesigns.scala 160:99]
  wire  _GEN_25 = sub_exp >= 8'h17 ? out_s : ~adder_io_out_c & sign_0 | sign_0 & sign_1 | ~adder_io_out_c & sign_1; // @[FloatingPointDesigns.scala 144:11 179:39 180:13]
  wire  new_s = io_in_a[30:0] == 31'h0 & io_in_b[30:0] == 31'h0 ? 1'h0 : _GEN_25; // @[FloatingPointDesigns.scala 175:62 176:13]
  wire [23:0] adder_result = new_s & sign_0 != sign_1 ? complementN_2_io_out : adder_io_out_s; // @[FloatingPointDesigns.scala 163:18 164:47 165:20]
  wire [4:0] _subber2_io_in_b_T_1 = 5'h18 - leadingOneFinder_io_out; // @[FloatingPointDesigns.scala 173:42]
  wire [8:0] _GEN_33 = {{1'd0}, out_exp}; // @[FloatingPointDesigns.scala 187:20]
  wire [23:0] _new_out_frac_T_2 = 24'h800000 - 24'h1; // @[FloatingPointDesigns.scala 189:51]
  wire [7:0] _new_out_exp_T_3 = out_exp + 8'h1; // @[FloatingPointDesigns.scala 191:32]
  wire [8:0] _GEN_13 = _GEN_33 == _T_2 ? _T_2 : {{1'd0}, _new_out_exp_T_3}; // @[FloatingPointDesigns.scala 187:56 188:21 191:21]
  wire [23:0] _GEN_14 = _GEN_33 == _T_2 ? _new_out_frac_T_2 : {{1'd0}, adder_result[23:1]}; // @[FloatingPointDesigns.scala 187:56 189:22 192:22]
  wire [53:0] _GEN_2 = {{31'd0}, adder_result[22:0]}; // @[FloatingPointDesigns.scala 203:57]
  wire [53:0] _new_out_frac_T_7 = _GEN_2 << _subber2_io_in_b_T_1; // @[FloatingPointDesigns.scala 203:57]
  wire [7:0] _GEN_15 = subber2_io_out_c ? 8'h1 : subber2_io_out_s; // @[FloatingPointDesigns.scala 198:39 199:23 202:23]
  wire [53:0] _GEN_16 = subber2_io_out_c ? 54'h400000 : _new_out_frac_T_7; // @[FloatingPointDesigns.scala 198:39 200:24 203:24]
  wire [7:0] _GEN_17 = leadingOneFinder_io_out == 5'h1 & adder_result == 24'h0 & (_D_T_1 & io_in_a[30:0] == io_in_b[30:0
    ]) ? 8'h0 : _GEN_15; // @[FloatingPointDesigns.scala 195:141 196:21]
  wire [53:0] _GEN_18 = leadingOneFinder_io_out == 5'h1 & adder_result == 24'h0 & (_D_T_1 & io_in_a[30:0] == io_in_b[30:
    0]) ? 54'h0 : _GEN_16; // @[FloatingPointDesigns.scala 195:141 145:18]
  wire [7:0] _GEN_19 = D ? _GEN_17 : 8'h0; // @[FloatingPointDesigns.scala 146:17 194:26]
  wire [53:0] _GEN_20 = D ? _GEN_18 : 54'h0; // @[FloatingPointDesigns.scala 145:18 194:26]
  wire [8:0] _GEN_21 = ~D ? _GEN_13 : {{1'd0}, _GEN_19}; // @[FloatingPointDesigns.scala 186:26]
  wire [53:0] _GEN_22 = ~D ? {{30'd0}, _GEN_14} : _GEN_20; // @[FloatingPointDesigns.scala 186:26]
  wire [8:0] _GEN_23 = E ? {{1'd0}, out_exp} : _GEN_21; // @[FloatingPointDesigns.scala 183:26 184:19]
  wire [53:0] _GEN_24 = E ? {{31'd0}, adder_result[22:0]} : _GEN_22; // @[FloatingPointDesigns.scala 183:26 185:20]
  wire [53:0] _GEN_26 = sub_exp >= 8'h17 ? {{31'd0}, out_frac} : _GEN_24; // @[FloatingPointDesigns.scala 179:39 181:20]
  wire [8:0] _GEN_27 = sub_exp >= 8'h17 ? {{1'd0}, out_exp} : _GEN_23; // @[FloatingPointDesigns.scala 179:39 182:19]
  wire [8:0] _GEN_29 = io_in_a[30:0] == 31'h0 & io_in_b[30:0] == 31'h0 ? 9'h0 : _GEN_27; // @[FloatingPointDesigns.scala 175:62 177:19]
  wire [53:0] _GEN_30 = io_in_a[30:0] == 31'h0 & io_in_b[30:0] == 31'h0 ? 54'h0 : _GEN_26; // @[FloatingPointDesigns.scala 175:62 178:20]
  reg [31:0] reg_out_s; // @[FloatingPointDesigns.scala 207:28]
  wire [7:0] new_out_exp = _GEN_29[7:0]; // @[FloatingPointDesigns.scala 143:27]
  wire [22:0] new_out_frac = _GEN_30[22:0]; // @[FloatingPointDesigns.scala 142:28]
  wire [31:0] _reg_out_s_T_1 = {new_s,new_out_exp,new_out_frac}; // @[FloatingPointDesigns.scala 209:39]
  full_subber subber ( // @[FloatingPointDesigns.scala 82:24]
    .io_in_a(subber_io_in_a),
    .io_in_b(subber_io_in_b),
    .io_out_s(subber_io_out_s),
    .io_out_c(subber_io_out_c)
  );
  twoscomplement complement ( // @[FloatingPointDesigns.scala 88:28]
    .io_in(complement_io_in),
    .io_out(complement_io_out)
  );
  full_adder adder ( // @[FloatingPointDesigns.scala 92:23]
    .io_in_a(adder_io_in_a),
    .io_in_b(adder_io_in_b),
    .io_out_s(adder_io_out_s),
    .io_out_c(adder_io_out_c)
  );
  twoscomplement_1 complementN_0 ( // @[FloatingPointDesigns.scala 98:31]
    .io_in(complementN_0_io_in),
    .io_out(complementN_0_io_out)
  );
  twoscomplement_1 complementN_1 ( // @[FloatingPointDesigns.scala 100:31]
    .io_in(complementN_1_io_in),
    .io_out(complementN_1_io_out)
  );
  shifter shifter ( // @[FloatingPointDesigns.scala 104:25]
    .io_in_a(shifter_io_in_a),
    .io_in_b(shifter_io_in_b),
    .io_out_s(shifter_io_out_s)
  );
  twoscomplement_1 complementN_2 ( // @[FloatingPointDesigns.scala 149:31]
    .io_in(complementN_2_io_in),
    .io_out(complementN_2_io_out)
  );
  leadingOneDetector leadingOneFinder ( // @[FloatingPointDesigns.scala 169:34]
    .io_in(leadingOneFinder_io_in),
    .io_out(leadingOneFinder_io_out)
  );
  full_subber subber2 ( // @[FloatingPointDesigns.scala 171:25]
    .io_in_a(subber2_io_in_a),
    .io_in_b(subber2_io_in_b),
    .io_out_s(subber2_io_out_s),
    .io_out_c(subber2_io_out_c)
  );
  assign io_out_s = reg_out_s; // @[FloatingPointDesigns.scala 211:14]
  assign subber_io_in_a = _GEN_0[7:0]; // @[FloatingPointDesigns.scala 48:19]
  assign subber_io_in_b = _GEN_1[7:0]; // @[FloatingPointDesigns.scala 48:19]
  assign complement_io_in = subber_io_out_s; // @[FloatingPointDesigns.scala 89:22]
  assign adder_io_in_a = sign_0 & ~sign_1 ? complementN_0_io_out : _GEN_8; // @[FloatingPointDesigns.scala 133:45 134:21]
  assign adder_io_in_b = sign_1 & ~sign_0 ? complementN_1_io_out : _GEN_9; // @[FloatingPointDesigns.scala 137:45 138:21]
  assign complementN_0_io_in = subber_io_out_c ? shifter_io_out_s : whole_frac_0; // @[FloatingPointDesigns.scala 110:34 118:21 93:19]
  assign complementN_1_io_in = subber_io_out_c ? whole_frac_1 : shifter_io_out_s; // @[FloatingPointDesigns.scala 110:34 94:19 128:21]
  assign shifter_io_in_a = subber_io_out_c ? whole_frac_0 : whole_frac_1; // @[FloatingPointDesigns.scala 110:34 115:23 125:23]
  assign shifter_io_in_b = sub_exp[4:0];
  assign complementN_2_io_in = adder_io_out_s; // @[FloatingPointDesigns.scala 150:25]
  assign leadingOneFinder_io_in = new_s & sign_0 != sign_1 ? complementN_2_io_out : adder_io_out_s; // @[FloatingPointDesigns.scala 163:18 164:47 165:20]
  assign subber2_io_in_a = subber_io_out_c ? exp_1 : exp_0; // @[FloatingPointDesigns.scala 110:34 111:15 121:15]
  assign subber2_io_in_b = {{3'd0}, _subber2_io_in_b_T_1}; // @[FloatingPointDesigns.scala 173:21]
  always @(posedge clock) begin
    if (reset) begin // @[FloatingPointDesigns.scala 207:28]
      reg_out_s <= 32'h0; // @[FloatingPointDesigns.scala 207:28]
    end else begin
      reg_out_s <= _reg_out_s_T_1; // @[FloatingPointDesigns.scala 209:15]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_out_s = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AdderSubber(
  input         clock,
  input         reset,
  input  [31:0] io_in_a,
  input  [31:0] io_in_b,
  input         io_in_sel,
  output [31:0] io_out_s
);
  wire  adder_clock; // @[TestCORDIC.scala 82:39]
  wire  adder_reset; // @[TestCORDIC.scala 82:39]
  wire [31:0] adder_io_in_a; // @[TestCORDIC.scala 82:39]
  wire [31:0] adder_io_in_b; // @[TestCORDIC.scala 82:39]
  wire [31:0] adder_io_out_s; // @[TestCORDIC.scala 82:39]
  wire  _adder_io_in_b_T_4 = ~io_in_sel ? io_in_b[31] : ~io_in_b[31]; // @[TestCORDIC.scala 85:23]
  FP_adder adder ( // @[TestCORDIC.scala 82:39]
    .clock(adder_clock),
    .reset(adder_reset),
    .io_in_a(adder_io_in_a),
    .io_in_b(adder_io_in_b),
    .io_out_s(adder_io_out_s)
  );
  assign io_out_s = adder_io_out_s; // @[TestCORDIC.scala 87:12]
  assign adder_clock = clock;
  assign adder_reset = reset;
  assign adder_io_in_a = io_in_a; // @[TestCORDIC.scala 84:17]
  assign adder_io_in_b = {_adder_io_in_b_T_4,io_in_b[30:0]}; // @[TestCORDIC.scala 85:79]
endmodule
module full_subber_5(
  input  [22:0] io_in_a,
  input  [22:0] io_in_b,
  output        io_out_c
);
  wire [23:0] _result_T = io_in_a - io_in_b; // @[BinaryDesigns.scala 69:23]
  wire [24:0] _result_T_2 = _result_T - 24'h0; // @[BinaryDesigns.scala 69:34]
  wire [23:0] result = _result_T_2[23:0]; // @[BinaryDesigns.scala 68:22 69:12]
  assign io_out_c = result[23]; // @[BinaryDesigns.scala 71:23]
endmodule
module FP_comparator(
  input  [31:0] io_in_a,
  input  [31:0] io_in_b,
  output [31:0] io_out_s
);
  wire [7:0] full_subber_io_in_a; // @[FloatingPointDesigns.scala 976:24]
  wire [7:0] full_subber_io_in_b; // @[FloatingPointDesigns.scala 976:24]
  wire [7:0] full_subber_io_out_s; // @[FloatingPointDesigns.scala 976:24]
  wire  full_subber_io_out_c; // @[FloatingPointDesigns.scala 976:24]
  wire [22:0] full_subber_1_io_in_a; // @[FloatingPointDesigns.scala 981:25]
  wire [22:0] full_subber_1_io_in_b; // @[FloatingPointDesigns.scala 981:25]
  wire  full_subber_1_io_out_c; // @[FloatingPointDesigns.scala 981:25]
  wire [8:0] _T_2 = 9'h100 - 9'h2; // @[FloatingPointDesigns.scala 955:62]
  wire [8:0] _GEN_5 = {{1'd0}, io_in_a[30:23]}; // @[FloatingPointDesigns.scala 955:34]
  wire [8:0] _GEN_0 = _GEN_5 > _T_2 ? _T_2 : {{1'd0}, io_in_a[30:23]}; // @[FloatingPointDesigns.scala 955:68 956:14 958:14]
  wire [8:0] _GEN_6 = {{1'd0}, io_in_b[30:23]}; // @[FloatingPointDesigns.scala 960:34]
  wire [8:0] _GEN_1 = _GEN_6 > _T_2 ? _T_2 : {{1'd0}, io_in_b[30:23]}; // @[FloatingPointDesigns.scala 960:68 961:14 963:14]
  wire [31:0] _GEN_2 = full_subber_1_io_out_c ? io_in_b : io_in_a; // @[FloatingPointDesigns.scala 991:34 992:18 994:18]
  wire [31:0] _GEN_3 = full_subber_io_out_s > 8'h0 ? io_in_a : _GEN_2; // @[FloatingPointDesigns.scala 988:35 989:16]
  full_subber full_subber ( // @[FloatingPointDesigns.scala 976:24]
    .io_in_a(full_subber_io_in_a),
    .io_in_b(full_subber_io_in_b),
    .io_out_s(full_subber_io_out_s),
    .io_out_c(full_subber_io_out_c)
  );
  full_subber_5 full_subber_1 ( // @[FloatingPointDesigns.scala 981:25]
    .io_in_a(full_subber_1_io_in_a),
    .io_in_b(full_subber_1_io_in_b),
    .io_out_c(full_subber_1_io_out_c)
  );
  assign io_out_s = full_subber_io_out_c ? io_in_b : _GEN_3; // @[FloatingPointDesigns.scala 986:31 987:16]
  assign full_subber_io_in_a = _GEN_0[7:0]; // @[FloatingPointDesigns.scala 954:19]
  assign full_subber_io_in_b = _GEN_1[7:0]; // @[FloatingPointDesigns.scala 954:19]
  assign full_subber_1_io_in_a = io_in_a[22:0]; // @[FloatingPointDesigns.scala 968:23]
  assign full_subber_1_io_in_b = io_in_b[22:0]; // @[FloatingPointDesigns.scala 969:23]
endmodule
module FloatHalver(
  input  [31:0] io_in,
  input  [4:0]  io_amt,
  output [31:0] io_out
);
  wire [7:0] subber_io_in_a; // @[TestCORDIC.scala 106:30]
  wire [7:0] subber_io_in_b; // @[TestCORDIC.scala 106:30]
  wire [7:0] subber_io_out_s; // @[TestCORDIC.scala 106:30]
  wire  subber_io_out_c; // @[TestCORDIC.scala 106:30]
  wire [31:0] _io_out_T_4 = {io_in[31],subber_io_out_s,io_in[22:0]}; // @[TestCORDIC.scala 110:70]
  full_subber subber ( // @[TestCORDIC.scala 106:30]
    .io_in_a(subber_io_in_a),
    .io_in_b(subber_io_in_b),
    .io_out_s(subber_io_out_s),
    .io_out_c(subber_io_out_c)
  );
  assign io_out = io_in == 32'h0 ? 32'h0 : _io_out_T_4; // @[TestCORDIC.scala 110:16]
  assign subber_io_in_a = io_in[30:23]; // @[TestCORDIC.scala 108:26]
  assign subber_io_in_b = {{3'd0}, io_amt}; // @[TestCORDIC.scala 109:18]
endmodule
module CORDIC(
  input         clock,
  input         reset,
  input  [31:0] io_in_x0,
  input  [31:0] io_in_y0,
  input  [31:0] io_in_z0,
  output [31:0] io_out_x,
  output [31:0] io_out_y,
  output [31:0] io_out_z,
  output        io_out_output_ready,
  output        io_out_pipe_ready,
  output [31:0] io_out_pipeline_count
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
`endif // RANDOMIZE_REG_INIT
  wire  controller_clock; // @[TestCORDIC.scala 161:34]
  wire  controller_reset; // @[TestCORDIC.scala 161:34]
  wire  controller_io_out_output_rdy; // @[TestCORDIC.scala 161:34]
  wire  controller_io_out_pipe_rdy; // @[TestCORDIC.scala 161:34]
  wire [31:0] controller_io_out_pipeline_count; // @[TestCORDIC.scala 161:34]
  wire [31:0] rom_io_atanout; // @[TestCORDIC.scala 166:27]
  wire [5:0] rom_io_atanselect; // @[TestCORDIC.scala 166:27]
  wire  xadder_clock; // @[TestCORDIC.scala 174:30]
  wire  xadder_reset; // @[TestCORDIC.scala 174:30]
  wire [31:0] xadder_io_in_a; // @[TestCORDIC.scala 174:30]
  wire [31:0] xadder_io_in_b; // @[TestCORDIC.scala 174:30]
  wire  xadder_io_in_sel; // @[TestCORDIC.scala 174:30]
  wire [31:0] xadder_io_out_s; // @[TestCORDIC.scala 174:30]
  wire  yadder_clock; // @[TestCORDIC.scala 175:30]
  wire  yadder_reset; // @[TestCORDIC.scala 175:30]
  wire [31:0] yadder_io_in_a; // @[TestCORDIC.scala 175:30]
  wire [31:0] yadder_io_in_b; // @[TestCORDIC.scala 175:30]
  wire  yadder_io_in_sel; // @[TestCORDIC.scala 175:30]
  wire [31:0] yadder_io_out_s; // @[TestCORDIC.scala 175:30]
  wire [31:0] floatcmp_io_in_a; // @[TestCORDIC.scala 195:32]
  wire [31:0] floatcmp_io_in_b; // @[TestCORDIC.scala 195:32]
  wire [31:0] floatcmp_io_out_s; // @[TestCORDIC.scala 195:32]
  wire [31:0] yhalver_io_in; // @[TestCORDIC.scala 199:31]
  wire [4:0] yhalver_io_amt; // @[TestCORDIC.scala 199:31]
  wire [31:0] yhalver_io_out; // @[TestCORDIC.scala 199:31]
  wire [31:0] xhalver_io_in; // @[TestCORDIC.scala 200:31]
  wire [4:0] xhalver_io_amt; // @[TestCORDIC.scala 200:31]
  wire [31:0] xhalver_io_out; // @[TestCORDIC.scala 200:31]
  wire  theta_addersubber_clock; // @[TestCORDIC.scala 217:41]
  wire  theta_addersubber_reset; // @[TestCORDIC.scala 217:41]
  wire [31:0] theta_addersubber_io_in_a; // @[TestCORDIC.scala 217:41]
  wire [31:0] theta_addersubber_io_in_b; // @[TestCORDIC.scala 217:41]
  wire  theta_addersubber_io_in_sel; // @[TestCORDIC.scala 217:41]
  wire [31:0] theta_addersubber_io_out_s; // @[TestCORDIC.scala 217:41]
  reg [31:0] x_0; // @[TestCORDIC.scala 155:26]
  reg [31:0] x_2; // @[TestCORDIC.scala 155:26]
  reg [31:0] y_0; // @[TestCORDIC.scala 156:26]
  reg [31:0] y_2; // @[TestCORDIC.scala 156:26]
  reg [31:0] z_0; // @[TestCORDIC.scala 157:26]
  reg [31:0] z_1; // @[TestCORDIC.scala 157:26]
  reg [31:0] z_2; // @[TestCORDIC.scala 157:26]
  reg [31:0] theta_0; // @[TestCORDIC.scala 158:30]
  reg [31:0] theta_2; // @[TestCORDIC.scala 158:30]
  reg [31:0] cnt_0; // @[TestCORDIC.scala 159:28]
  reg [31:0] cnt_1; // @[TestCORDIC.scala 159:28]
  reg [31:0] cnt_2; // @[TestCORDIC.scala 159:28]
  wire  _x_0_T = controller_io_out_pipe_rdy; // @[TestCORDIC.scala 177:42]
  wire [31:0] _cnt_0_T_2 = cnt_2 + 32'h1; // @[TestCORDIC.scala 181:60]
  wire  _xadder_io_in_b_T = floatcmp_io_out_s == theta_0; // @[TestCORDIC.scala 208:43]
  wire  _xadder_io_in_b_T_4 = floatcmp_io_out_s == theta_0 ? ~yhalver_io_out[31] : yhalver_io_out[31]; // @[TestCORDIC.scala 208:24]
  wire  _yadder_io_in_a_T_4 = _xadder_io_in_b_T ? ~xhalver_io_out[31] : xhalver_io_out[31]; // @[TestCORDIC.scala 212:24]
  CORDIC_Controller controller ( // @[TestCORDIC.scala 161:34]
    .clock(controller_clock),
    .reset(controller_reset),
    .io_out_output_rdy(controller_io_out_output_rdy),
    .io_out_pipe_rdy(controller_io_out_pipe_rdy),
    .io_out_pipeline_count(controller_io_out_pipeline_count)
  );
  CORDIC_ROM rom ( // @[TestCORDIC.scala 166:27]
    .io_atanout(rom_io_atanout),
    .io_atanselect(rom_io_atanselect)
  );
  AdderSubber xadder ( // @[TestCORDIC.scala 174:30]
    .clock(xadder_clock),
    .reset(xadder_reset),
    .io_in_a(xadder_io_in_a),
    .io_in_b(xadder_io_in_b),
    .io_in_sel(xadder_io_in_sel),
    .io_out_s(xadder_io_out_s)
  );
  AdderSubber yadder ( // @[TestCORDIC.scala 175:30]
    .clock(yadder_clock),
    .reset(yadder_reset),
    .io_in_a(yadder_io_in_a),
    .io_in_b(yadder_io_in_b),
    .io_in_sel(yadder_io_in_sel),
    .io_out_s(yadder_io_out_s)
  );
  FP_comparator floatcmp ( // @[TestCORDIC.scala 195:32]
    .io_in_a(floatcmp_io_in_a),
    .io_in_b(floatcmp_io_in_b),
    .io_out_s(floatcmp_io_out_s)
  );
  FloatHalver yhalver ( // @[TestCORDIC.scala 199:31]
    .io_in(yhalver_io_in),
    .io_amt(yhalver_io_amt),
    .io_out(yhalver_io_out)
  );
  FloatHalver xhalver ( // @[TestCORDIC.scala 200:31]
    .io_in(xhalver_io_in),
    .io_amt(xhalver_io_amt),
    .io_out(xhalver_io_out)
  );
  AdderSubber theta_addersubber ( // @[TestCORDIC.scala 217:41]
    .clock(theta_addersubber_clock),
    .reset(theta_addersubber_reset),
    .io_in_a(theta_addersubber_io_in_a),
    .io_in_b(theta_addersubber_io_in_b),
    .io_in_sel(theta_addersubber_io_in_sel),
    .io_out_s(theta_addersubber_io_out_s)
  );
  assign io_out_x = x_2; // @[TestCORDIC.scala 183:12]
  assign io_out_y = y_2; // @[TestCORDIC.scala 184:12]
  assign io_out_z = theta_2; // @[TestCORDIC.scala 185:12]
  assign io_out_output_ready = controller_io_out_output_rdy; // @[TestCORDIC.scala 162:23]
  assign io_out_pipe_ready = controller_io_out_pipe_rdy; // @[TestCORDIC.scala 163:21]
  assign io_out_pipeline_count = controller_io_out_pipeline_count; // @[TestCORDIC.scala 164:25]
  assign controller_clock = clock;
  assign controller_reset = reset;
  assign rom_io_atanselect = cnt_0[5:0]; // @[TestCORDIC.scala 219:21]
  assign xadder_clock = clock;
  assign xadder_reset = reset;
  assign xadder_io_in_a = x_0; // @[TestCORDIC.scala 207:18]
  assign xadder_io_in_b = {_xadder_io_in_b_T_4,yhalver_io_out[30:0]}; // @[TestCORDIC.scala 209:31]
  assign xadder_io_in_sel = 1'h1; // @[TestCORDIC.scala 210:20]
  assign yadder_clock = clock;
  assign yadder_reset = reset;
  assign yadder_io_in_a = {_yadder_io_in_a_T_4,xhalver_io_out[30:0]}; // @[TestCORDIC.scala 213:31]
  assign yadder_io_in_b = y_0; // @[TestCORDIC.scala 214:18]
  assign yadder_io_in_sel = 1'h0; // @[TestCORDIC.scala 215:20]
  assign floatcmp_io_in_a = theta_0; // @[TestCORDIC.scala 196:20]
  assign floatcmp_io_in_b = z_0; // @[TestCORDIC.scala 197:20]
  assign yhalver_io_in = y_0; // @[TestCORDIC.scala 204:17]
  assign yhalver_io_amt = cnt_0[4:0]; // @[TestCORDIC.scala 205:18]
  assign xhalver_io_in = x_0; // @[TestCORDIC.scala 202:17]
  assign xhalver_io_amt = cnt_0[4:0]; // @[TestCORDIC.scala 203:18]
  assign theta_addersubber_clock = clock;
  assign theta_addersubber_reset = reset;
  assign theta_addersubber_io_in_a = theta_0; // @[TestCORDIC.scala 218:29]
  assign theta_addersubber_io_in_b = rom_io_atanout; // @[TestCORDIC.scala 220:29]
  assign theta_addersubber_io_in_sel = floatcmp_io_out_s == theta_0; // @[TestCORDIC.scala 221:52]
  always @(posedge clock) begin
    if (reset) begin // @[TestCORDIC.scala 155:26]
      x_0 <= 32'h0; // @[TestCORDIC.scala 155:26]
    end else if (controller_io_out_pipe_rdy) begin // @[TestCORDIC.scala 177:14]
      x_0 <= x_2;
    end else begin
      x_0 <= io_in_x0;
    end
    if (reset) begin // @[TestCORDIC.scala 155:26]
      x_2 <= 32'h0; // @[TestCORDIC.scala 155:26]
    end else begin
      x_2 <= xadder_io_out_s; // @[TestCORDIC.scala 225:8]
    end
    if (reset) begin // @[TestCORDIC.scala 156:26]
      y_0 <= 32'h0; // @[TestCORDIC.scala 156:26]
    end else if (_x_0_T) begin // @[TestCORDIC.scala 178:14]
      y_0 <= y_2;
    end else begin
      y_0 <= io_in_y0;
    end
    if (reset) begin // @[TestCORDIC.scala 156:26]
      y_2 <= 32'h0; // @[TestCORDIC.scala 156:26]
    end else begin
      y_2 <= yadder_io_out_s; // @[TestCORDIC.scala 226:8]
    end
    if (reset) begin // @[TestCORDIC.scala 157:26]
      z_0 <= 32'h0; // @[TestCORDIC.scala 157:26]
    end else if (_x_0_T) begin // @[TestCORDIC.scala 179:14]
      z_0 <= z_2;
    end else begin
      z_0 <= io_in_z0;
    end
    if (reset) begin // @[TestCORDIC.scala 157:26]
      z_1 <= 32'h0; // @[TestCORDIC.scala 157:26]
    end else begin
      z_1 <= z_0; // @[TestCORDIC.scala 191:8]
    end
    if (reset) begin // @[TestCORDIC.scala 157:26]
      z_2 <= 32'h0; // @[TestCORDIC.scala 157:26]
    end else begin
      z_2 <= z_1; // @[TestCORDIC.scala 227:8]
    end
    if (reset) begin // @[TestCORDIC.scala 158:30]
      theta_0 <= 32'h0; // @[TestCORDIC.scala 158:30]
    end else if (_x_0_T) begin // @[TestCORDIC.scala 180:18]
      theta_0 <= theta_2;
    end else begin
      theta_0 <= 32'h0;
    end
    if (reset) begin // @[TestCORDIC.scala 158:30]
      theta_2 <= 32'h0; // @[TestCORDIC.scala 158:30]
    end else begin
      theta_2 <= theta_addersubber_io_out_s; // @[TestCORDIC.scala 228:12]
    end
    if (reset) begin // @[TestCORDIC.scala 159:28]
      cnt_0 <= 32'h0; // @[TestCORDIC.scala 159:28]
    end else if (_x_0_T) begin // @[TestCORDIC.scala 181:16]
      cnt_0 <= _cnt_0_T_2;
    end else begin
      cnt_0 <= 32'h0;
    end
    if (reset) begin // @[TestCORDIC.scala 159:28]
      cnt_1 <= 32'h0; // @[TestCORDIC.scala 159:28]
    end else begin
      cnt_1 <= cnt_0; // @[TestCORDIC.scala 193:10]
    end
    if (reset) begin // @[TestCORDIC.scala 159:28]
      cnt_2 <= 32'h0; // @[TestCORDIC.scala 159:28]
    end else begin
      cnt_2 <= cnt_1; // @[TestCORDIC.scala 229:10]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  x_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  x_2 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  y_0 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  y_2 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  z_0 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  z_1 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  z_2 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  theta_0 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  theta_2 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  cnt_0 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  cnt_1 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  cnt_2 = _RAND_11[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule


