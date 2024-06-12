module FloatToFixed32(
  input  [31:0] io_in,
  output [31:0] io_out
);
  wire [31:0] frac = {9'h0,io_in[22:0]}; // @[TestCORDIC.scala 15:42]
  wire [7:0] exp = io_in[30:23]; // @[TestCORDIC.scala 16:25]
  wire  sign = io_in[31]; // @[TestCORDIC.scala 17:26]
  wire [7:0] shiftamt = exp - 8'h7f; // @[TestCORDIC.scala 18:37]
  wire [31:0] _data_T_3 = frac | 32'h800000; // @[TestCORDIC.scala 21:34]
  wire [36:0] _GEN_0 = {_data_T_3, 5'h0}; // @[TestCORDIC.scala 21:56]
  wire [38:0] _data_T_4 = {{2'd0}, _GEN_0}; // @[TestCORDIC.scala 21:56]
  wire [7:0] _data_T_8 = 8'sh0 - $signed(shiftamt); // @[TestCORDIC.scala 21:79]
  wire [38:0] _data_T_9 = _data_T_4 >> _data_T_8; // @[TestCORDIC.scala 21:64]
  wire [7:0] _data_T_13 = exp - 8'h7f; // @[TestCORDIC.scala 22:78]
  wire [293:0] _GEN_1 = {{255'd0}, _data_T_4}; // @[TestCORDIC.scala 22:64]
  wire [293:0] _data_T_14 = _GEN_1 << _data_T_13; // @[TestCORDIC.scala 22:64]
  wire [293:0] data = shiftamt[7] ? {{255'd0}, _data_T_9} : _data_T_14; // @[TestCORDIC.scala 20:17]
  wire [293:0] _io_out_T_3 = 294'h0 - data; // @[TestCORDIC.scala 23:40]
  wire [293:0] _io_out_T_4 = sign ? _io_out_T_3 : data; // @[TestCORDIC.scala 23:16]
  assign io_out = _io_out_T_4[31:0]; // @[TestCORDIC.scala 23:10]
endmodule
module CLZ32(
  input  [31:0] io_in,
  output [4:0]  io_out
);
  wire [31:0] _bx_T = io_in & 32'hffff0000; // @[TestCORDIC.scala 34:20]
  wire  _bx_T_1 = _bx_T == 32'h0; // @[TestCORDIC.scala 34:37]
  wire [47:0] _bx_T_2 = {io_in, 16'h0}; // @[TestCORDIC.scala 34:49]
  wire [47:0] bx = _bx_T == 32'h0 ? _bx_T_2 : {{16'd0}, io_in}; // @[TestCORDIC.scala 34:15]
  wire [47:0] _cx_T = bx & 48'hff000000; // @[TestCORDIC.scala 35:20]
  wire  _cx_T_1 = _cx_T == 48'h0; // @[TestCORDIC.scala 35:37]
  wire [55:0] _cx_T_2 = {bx, 8'h0}; // @[TestCORDIC.scala 35:49]
  wire [55:0] cx = _cx_T == 48'h0 ? _cx_T_2 : {{8'd0}, bx}; // @[TestCORDIC.scala 35:15]
  wire [55:0] _dx_T = cx & 56'hf0000000; // @[TestCORDIC.scala 36:20]
  wire  _dx_T_1 = _dx_T == 56'h0; // @[TestCORDIC.scala 36:37]
  wire [59:0] _dx_T_2 = {cx, 4'h0}; // @[TestCORDIC.scala 36:49]
  wire [59:0] dx = _dx_T == 56'h0 ? _dx_T_2 : {{4'd0}, cx}; // @[TestCORDIC.scala 36:15]
  wire [59:0] _ex_T = dx & 60'hc0000000; // @[TestCORDIC.scala 37:20]
  wire  _ex_T_1 = _ex_T == 60'h0; // @[TestCORDIC.scala 37:37]
  wire [61:0] _ex_T_2 = {dx, 2'h0}; // @[TestCORDIC.scala 37:49]
  wire [61:0] ex = _ex_T == 60'h0 ? _ex_T_2 : {{2'd0}, dx}; // @[TestCORDIC.scala 37:15]
  wire [3:0] _io_out_T_10 = {_bx_T_1,_cx_T_1,_dx_T_1,_ex_T_1}; // @[TestCORDIC.scala 39:112]
  wire [61:0] _io_out_T_11 = ex & 62'h80000000; // @[TestCORDIC.scala 40:44]
  assign io_out = {_io_out_T_10,_io_out_T_11 == 62'h0}; // @[TestCORDIC.scala 40:36]
endmodule
module FixedToFloat32(
  input  [31:0] io_in,
  output [31:0] io_out
);
  wire [31:0] clz32_io_in; // @[TestCORDIC.scala 60:21]
  wire [4:0] clz32_io_out; // @[TestCORDIC.scala 60:21]
  wire [31:0] _data_T_2 = ~io_in; // @[TestCORDIC.scala 57:35]
  wire [31:0] _data_T_4 = _data_T_2 + 32'h1; // @[TestCORDIC.scala 57:50]
  wire [31:0] data = io_in[31] ? _data_T_4 : io_in; // @[TestCORDIC.scala 57:14]
  wire [3:0] _exp_T_2 = 4'sh4 - 4'sh1; // @[TestCORDIC.scala 64:16]
  wire [4:0] _GEN_0 = {{1{_exp_T_2[3]}},_exp_T_2}; // @[TestCORDIC.scala 64:23]
  wire [4:0] _exp_T_6 = $signed(_GEN_0) - $signed(clz32_io_out); // @[TestCORDIC.scala 64:23]
  wire [7:0] _GEN_1 = {{3{_exp_T_6[4]}},_exp_T_6}; // @[TestCORDIC.scala 64:46]
  wire [4:0] _frac_T_1 = clz32_io_out + 5'h1; // @[TestCORDIC.scala 65:42]
  wire [62:0] _GEN_2 = {{31'd0}, data}; // @[TestCORDIC.scala 65:18]
  wire [62:0] _frac_T_2 = _GEN_2 << _frac_T_1; // @[TestCORDIC.scala 65:18]
  wire [5:0] _frac_T_4 = 6'h20 - 6'h17; // @[TestCORDIC.scala 65:60]
  wire [62:0] _frac_T_5 = _frac_T_2 >> _frac_T_4; // @[TestCORDIC.scala 65:51]
  wire [7:0] _io_out_T_1 = $signed(_GEN_1) + 8'sh7f; // @[TestCORDIC.scala 67:30]
  wire [8:0] _io_out_T_2 = {io_in[31],_io_out_T_1}; // @[TestCORDIC.scala 67:23]
  wire [63:0] frac = {{1'd0}, _frac_T_5}; // @[TestCORDIC.scala 54:18 65:8]
  CLZ32 clz32 ( // @[TestCORDIC.scala 60:21]
    .io_in(clz32_io_in),
    .io_out(clz32_io_out)
  );
  assign io_out = {_io_out_T_2,frac[22:0]}; // @[TestCORDIC.scala 67:37]
  assign clz32_io_in = io_in[31] ? _data_T_4 : io_in; // @[TestCORDIC.scala 57:14]
endmodule
module CORDIC(
  input         clock,
  input         reset,
  input  [31:0] io_in_x0,
  input  [31:0] io_in_y0,
  input  [31:0] io_in_z0,
  output [31:0] io_out_x,
  output [31:0] io_out_y,
  output [31:0] io_out_z
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
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] tofixedx0_io_in; // @[TestCORDIC.scala 187:25]
  wire [31:0] tofixedx0_io_out; // @[TestCORDIC.scala 187:25]
  wire [31:0] tofixedy0_io_in; // @[TestCORDIC.scala 188:25]
  wire [31:0] tofixedy0_io_out; // @[TestCORDIC.scala 188:25]
  wire [31:0] tofixedz0_io_in; // @[TestCORDIC.scala 189:25]
  wire [31:0] tofixedz0_io_out; // @[TestCORDIC.scala 189:25]
  wire [31:0] tofloatxout_io_in; // @[TestCORDIC.scala 222:27]
  wire [31:0] tofloatxout_io_out; // @[TestCORDIC.scala 222:27]
  wire [31:0] tofloatyout_io_in; // @[TestCORDIC.scala 223:27]
  wire [31:0] tofloatyout_io_out; // @[TestCORDIC.scala 223:27]
  wire [31:0] tofloatzout_io_in; // @[TestCORDIC.scala 224:27]
  wire [31:0] tofloatzout_io_out; // @[TestCORDIC.scala 224:27]
  reg [31:0] x_0; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_1; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_2; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_3; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_4; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_5; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_6; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_7; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_8; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_9; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_10; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_11; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_12; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_13; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_14; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_15; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_16; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_17; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_18; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_19; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_20; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_21; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_22; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_23; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_24; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_25; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_26; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_27; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_28; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_29; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_30; // @[TestCORDIC.scala 194:18]
  reg [31:0] x_31; // @[TestCORDIC.scala 194:18]
  reg [31:0] y_0; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_1; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_2; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_3; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_4; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_5; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_6; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_7; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_8; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_9; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_10; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_11; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_12; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_13; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_14; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_15; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_16; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_17; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_18; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_19; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_20; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_21; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_22; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_23; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_24; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_25; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_26; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_27; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_28; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_29; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_30; // @[TestCORDIC.scala 195:18]
  reg [31:0] y_31; // @[TestCORDIC.scala 195:18]
  reg [31:0] theta_1; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_2; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_3; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_4; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_5; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_6; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_7; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_8; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_9; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_10; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_11; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_12; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_13; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_14; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_15; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_16; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_17; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_18; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_19; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_20; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_21; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_22; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_23; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_24; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_25; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_26; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_27; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_28; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_29; // @[TestCORDIC.scala 196:22]
  reg [31:0] theta_30; // @[TestCORDIC.scala 196:22]
  reg [31:0] z0s_0; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_1; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_2; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_3; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_4; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_5; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_6; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_7; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_8; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_9; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_10; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_11; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_12; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_13; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_14; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_15; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_16; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_17; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_18; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_19; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_20; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_21; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_22; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_23; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_24; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_25; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_26; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_27; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_28; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_29; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_30; // @[TestCORDIC.scala 197:20]
  reg [31:0] z0s_31; // @[TestCORDIC.scala 197:20]
  wire  _fxxterm_T = 32'sh0 > $signed(z0s_0); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_3 = 32'sh0 - $signed(x_0); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm = 32'sh0 > $signed(z0s_0) ? $signed(_fxxterm_T_3) : $signed(x_0); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_3 = 32'sh0 - $signed(y_0); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm = _fxxterm_T ? $signed(_fxyterm_T_3) : $signed(y_0); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_2 = 32'h0 - 32'hc90fdb0; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_1_T = _fxxterm_T ? _fxthetaterm_T_2 : 32'hc90fdb0; // @[TestCORDIC.scala 216:44]
  wire [32:0] _theta_1_T_1 = {{1{_theta_1_T[31]}},_theta_1_T}; // @[TestCORDIC.scala 216:30]
  wire [31:0] _theta_1_T_3 = _theta_1_T_1[31:0]; // @[TestCORDIC.scala 216:30]
  wire [31:0] _x_1_T_3 = $signed(x_0) - $signed(fxyterm); // @[TestCORDIC.scala 217:22]
  wire [31:0] _y_1_T_3 = $signed(fxxterm) + $signed(y_0); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_4 = $signed(theta_1) > $signed(z0s_1); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_7 = 32'sh0 - $signed(x_1); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_1 = $signed(theta_1) > $signed(z0s_1) ? $signed(_fxxterm_T_7) : $signed(x_1); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_7 = 32'sh0 - $signed(y_1); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_1 = _fxxterm_T_4 ? $signed(_fxyterm_T_7) : $signed(y_1); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_5 = 32'h0 - 32'h76b19c0; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_2_T = _fxxterm_T_4 ? _fxthetaterm_T_5 : 32'h76b19c0; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_2_T_3 = $signed(theta_1) + $signed(_theta_2_T); // @[TestCORDIC.scala 216:30]
  wire [30:0] _GEN_0 = fxyterm_1[31:1]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_2_T = {{1{_GEN_0[30]}},_GEN_0}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_2_T_3 = $signed(x_1) - $signed(_x_2_T); // @[TestCORDIC.scala 217:22]
  wire [30:0] _GEN_1 = fxxterm_1[31:1]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_2_T = {{1{_GEN_1[30]}},_GEN_1}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_2_T_3 = $signed(_y_2_T) + $signed(y_1); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_8 = $signed(theta_2) > $signed(z0s_2); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_11 = 32'sh0 - $signed(x_2); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_2 = $signed(theta_2) > $signed(z0s_2) ? $signed(_fxxterm_T_11) : $signed(x_2); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_11 = 32'sh0 - $signed(y_2); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_2 = _fxxterm_T_8 ? $signed(_fxyterm_T_11) : $signed(y_2); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_8 = 32'h0 - 32'h3eb6ec0; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_3_T = _fxxterm_T_8 ? _fxthetaterm_T_8 : 32'h3eb6ec0; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_3_T_3 = $signed(theta_2) + $signed(_theta_3_T); // @[TestCORDIC.scala 216:30]
  wire [29:0] _GEN_2 = fxyterm_2[31:2]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_3_T = {{2{_GEN_2[29]}},_GEN_2}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_3_T_3 = $signed(x_2) - $signed(_x_3_T); // @[TestCORDIC.scala 217:22]
  wire [29:0] _GEN_3 = fxxterm_2[31:2]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_3_T = {{2{_GEN_3[29]}},_GEN_3}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_3_T_3 = $signed(_y_3_T) + $signed(y_2); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_12 = $signed(theta_3) > $signed(z0s_3); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_15 = 32'sh0 - $signed(x_3); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_3 = $signed(theta_3) > $signed(z0s_3) ? $signed(_fxxterm_T_15) : $signed(x_3); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_15 = 32'sh0 - $signed(y_3); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_3 = _fxxterm_T_12 ? $signed(_fxyterm_T_15) : $signed(y_3); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_11 = 32'h0 - 32'h1fd5baa; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_4_T = _fxxterm_T_12 ? _fxthetaterm_T_11 : 32'h1fd5baa; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_4_T_3 = $signed(theta_3) + $signed(_theta_4_T); // @[TestCORDIC.scala 216:30]
  wire [28:0] _GEN_4 = fxyterm_3[31:3]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_4_T = {{3{_GEN_4[28]}},_GEN_4}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_4_T_3 = $signed(x_3) - $signed(_x_4_T); // @[TestCORDIC.scala 217:22]
  wire [28:0] _GEN_5 = fxxterm_3[31:3]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_4_T = {{3{_GEN_5[28]}},_GEN_5}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_4_T_3 = $signed(_y_4_T) + $signed(y_3); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_16 = $signed(theta_4) > $signed(z0s_4); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_19 = 32'sh0 - $signed(x_4); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_4 = $signed(theta_4) > $signed(z0s_4) ? $signed(_fxxterm_T_19) : $signed(x_4); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_19 = 32'sh0 - $signed(y_4); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_4 = _fxxterm_T_16 ? $signed(_fxyterm_T_19) : $signed(y_4); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_14 = 32'h0 - 32'hffaade; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_5_T = _fxxterm_T_16 ? _fxthetaterm_T_14 : 32'hffaade; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_5_T_3 = $signed(theta_4) + $signed(_theta_5_T); // @[TestCORDIC.scala 216:30]
  wire [27:0] _GEN_6 = fxyterm_4[31:4]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_5_T = {{4{_GEN_6[27]}},_GEN_6}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_5_T_3 = $signed(x_4) - $signed(_x_5_T); // @[TestCORDIC.scala 217:22]
  wire [27:0] _GEN_7 = fxxterm_4[31:4]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_5_T = {{4{_GEN_7[27]}},_GEN_7}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_5_T_3 = $signed(_y_5_T) + $signed(y_4); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_20 = $signed(theta_5) > $signed(z0s_5); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_23 = 32'sh0 - $signed(x_5); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_5 = $signed(theta_5) > $signed(z0s_5) ? $signed(_fxxterm_T_23) : $signed(x_5); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_23 = 32'sh0 - $signed(y_5); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_5 = _fxxterm_T_20 ? $signed(_fxyterm_T_23) : $signed(y_5); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_17 = 32'h0 - 32'h7ff557; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_6_T = _fxxterm_T_20 ? _fxthetaterm_T_17 : 32'h7ff557; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_6_T_3 = $signed(theta_5) + $signed(_theta_6_T); // @[TestCORDIC.scala 216:30]
  wire [26:0] _GEN_8 = fxyterm_5[31:5]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_6_T = {{5{_GEN_8[26]}},_GEN_8}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_6_T_3 = $signed(x_5) - $signed(_x_6_T); // @[TestCORDIC.scala 217:22]
  wire [26:0] _GEN_9 = fxxterm_5[31:5]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_6_T = {{5{_GEN_9[26]}},_GEN_9}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_6_T_3 = $signed(_y_6_T) + $signed(y_5); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_24 = $signed(theta_6) > $signed(z0s_6); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_27 = 32'sh0 - $signed(x_6); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_6 = $signed(theta_6) > $signed(z0s_6) ? $signed(_fxxterm_T_27) : $signed(x_6); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_27 = 32'sh0 - $signed(y_6); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_6 = _fxxterm_T_24 ? $signed(_fxyterm_T_27) : $signed(y_6); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_20 = 32'h0 - 32'h3ffeaa; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_7_T = _fxxterm_T_24 ? _fxthetaterm_T_20 : 32'h3ffeaa; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_7_T_3 = $signed(theta_6) + $signed(_theta_7_T); // @[TestCORDIC.scala 216:30]
  wire [25:0] _GEN_10 = fxyterm_6[31:6]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_7_T = {{6{_GEN_10[25]}},_GEN_10}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_7_T_3 = $signed(x_6) - $signed(_x_7_T); // @[TestCORDIC.scala 217:22]
  wire [25:0] _GEN_11 = fxxterm_6[31:6]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_7_T = {{6{_GEN_11[25]}},_GEN_11}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_7_T_3 = $signed(_y_7_T) + $signed(y_6); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_28 = $signed(theta_7) > $signed(z0s_7); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_31 = 32'sh0 - $signed(x_7); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_7 = $signed(theta_7) > $signed(z0s_7) ? $signed(_fxxterm_T_31) : $signed(x_7); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_31 = 32'sh0 - $signed(y_7); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_7 = _fxxterm_T_28 ? $signed(_fxyterm_T_31) : $signed(y_7); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_23 = 32'h0 - 32'h1fffd5; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_8_T = _fxxterm_T_28 ? _fxthetaterm_T_23 : 32'h1fffd5; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_8_T_3 = $signed(theta_7) + $signed(_theta_8_T); // @[TestCORDIC.scala 216:30]
  wire [24:0] _GEN_12 = fxyterm_7[31:7]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_8_T = {{7{_GEN_12[24]}},_GEN_12}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_8_T_3 = $signed(x_7) - $signed(_x_8_T); // @[TestCORDIC.scala 217:22]
  wire [24:0] _GEN_13 = fxxterm_7[31:7]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_8_T = {{7{_GEN_13[24]}},_GEN_13}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_8_T_3 = $signed(_y_8_T) + $signed(y_7); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_32 = $signed(theta_8) > $signed(z0s_8); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_35 = 32'sh0 - $signed(x_8); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_8 = $signed(theta_8) > $signed(z0s_8) ? $signed(_fxxterm_T_35) : $signed(x_8); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_35 = 32'sh0 - $signed(y_8); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_8 = _fxxterm_T_32 ? $signed(_fxyterm_T_35) : $signed(y_8); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_26 = 32'h0 - 32'hffffa; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_9_T = _fxxterm_T_32 ? _fxthetaterm_T_26 : 32'hffffa; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_9_T_3 = $signed(theta_8) + $signed(_theta_9_T); // @[TestCORDIC.scala 216:30]
  wire [23:0] _GEN_14 = fxyterm_8[31:8]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_9_T = {{8{_GEN_14[23]}},_GEN_14}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_9_T_3 = $signed(x_8) - $signed(_x_9_T); // @[TestCORDIC.scala 217:22]
  wire [23:0] _GEN_15 = fxxterm_8[31:8]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_9_T = {{8{_GEN_15[23]}},_GEN_15}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_9_T_3 = $signed(_y_9_T) + $signed(y_8); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_36 = $signed(theta_9) > $signed(z0s_9); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_39 = 32'sh0 - $signed(x_9); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_9 = $signed(theta_9) > $signed(z0s_9) ? $signed(_fxxterm_T_39) : $signed(x_9); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_39 = 32'sh0 - $signed(y_9); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_9 = _fxxterm_T_36 ? $signed(_fxyterm_T_39) : $signed(y_9); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_29 = 32'h0 - 32'h7ffff; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_10_T = _fxxterm_T_36 ? _fxthetaterm_T_29 : 32'h7ffff; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_10_T_3 = $signed(theta_9) + $signed(_theta_10_T); // @[TestCORDIC.scala 216:30]
  wire [22:0] _GEN_16 = fxyterm_9[31:9]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_10_T = {{9{_GEN_16[22]}},_GEN_16}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_10_T_3 = $signed(x_9) - $signed(_x_10_T); // @[TestCORDIC.scala 217:22]
  wire [22:0] _GEN_17 = fxxterm_9[31:9]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_10_T = {{9{_GEN_17[22]}},_GEN_17}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_10_T_3 = $signed(_y_10_T) + $signed(y_9); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_40 = $signed(theta_10) > $signed(z0s_10); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_43 = 32'sh0 - $signed(x_10); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_10 = $signed(theta_10) > $signed(z0s_10) ? $signed(_fxxterm_T_43) : $signed(x_10); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_43 = 32'sh0 - $signed(y_10); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_10 = _fxxterm_T_40 ? $signed(_fxyterm_T_43) : $signed(y_10); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_32 = 32'h0 - 32'h3ffff; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_11_T = _fxxterm_T_40 ? _fxthetaterm_T_32 : 32'h3ffff; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_11_T_3 = $signed(theta_10) + $signed(_theta_11_T); // @[TestCORDIC.scala 216:30]
  wire [21:0] _GEN_18 = fxyterm_10[31:10]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_11_T = {{10{_GEN_18[21]}},_GEN_18}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_11_T_3 = $signed(x_10) - $signed(_x_11_T); // @[TestCORDIC.scala 217:22]
  wire [21:0] _GEN_19 = fxxterm_10[31:10]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_11_T = {{10{_GEN_19[21]}},_GEN_19}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_11_T_3 = $signed(_y_11_T) + $signed(y_10); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_44 = $signed(theta_11) > $signed(z0s_11); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_47 = 32'sh0 - $signed(x_11); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_11 = $signed(theta_11) > $signed(z0s_11) ? $signed(_fxxterm_T_47) : $signed(x_11); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_47 = 32'sh0 - $signed(y_11); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_11 = _fxxterm_T_44 ? $signed(_fxyterm_T_47) : $signed(y_11); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_35 = 32'h0 - 32'h1ffff; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_12_T = _fxxterm_T_44 ? _fxthetaterm_T_35 : 32'h1ffff; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_12_T_3 = $signed(theta_11) + $signed(_theta_12_T); // @[TestCORDIC.scala 216:30]
  wire [20:0] _GEN_20 = fxyterm_11[31:11]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_12_T = {{11{_GEN_20[20]}},_GEN_20}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_12_T_3 = $signed(x_11) - $signed(_x_12_T); // @[TestCORDIC.scala 217:22]
  wire [20:0] _GEN_21 = fxxterm_11[31:11]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_12_T = {{11{_GEN_21[20]}},_GEN_21}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_12_T_3 = $signed(_y_12_T) + $signed(y_11); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_48 = $signed(theta_12) > $signed(z0s_12); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_51 = 32'sh0 - $signed(x_12); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_12 = $signed(theta_12) > $signed(z0s_12) ? $signed(_fxxterm_T_51) : $signed(x_12); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_51 = 32'sh0 - $signed(y_12); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_12 = _fxxterm_T_48 ? $signed(_fxyterm_T_51) : $signed(y_12); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_38 = 32'h0 - 32'h10000; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_13_T = _fxxterm_T_48 ? _fxthetaterm_T_38 : 32'h10000; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_13_T_3 = $signed(theta_12) + $signed(_theta_13_T); // @[TestCORDIC.scala 216:30]
  wire [19:0] _GEN_22 = fxyterm_12[31:12]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_13_T = {{12{_GEN_22[19]}},_GEN_22}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_13_T_3 = $signed(x_12) - $signed(_x_13_T); // @[TestCORDIC.scala 217:22]
  wire [19:0] _GEN_23 = fxxterm_12[31:12]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_13_T = {{12{_GEN_23[19]}},_GEN_23}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_13_T_3 = $signed(_y_13_T) + $signed(y_12); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_52 = $signed(theta_13) > $signed(z0s_13); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_55 = 32'sh0 - $signed(x_13); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_13 = $signed(theta_13) > $signed(z0s_13) ? $signed(_fxxterm_T_55) : $signed(x_13); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_55 = 32'sh0 - $signed(y_13); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_13 = _fxxterm_T_52 ? $signed(_fxyterm_T_55) : $signed(y_13); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_41 = 32'h0 - 32'h8000; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_14_T = _fxxterm_T_52 ? _fxthetaterm_T_41 : 32'h8000; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_14_T_3 = $signed(theta_13) + $signed(_theta_14_T); // @[TestCORDIC.scala 216:30]
  wire [18:0] _GEN_24 = fxyterm_13[31:13]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_14_T = {{13{_GEN_24[18]}},_GEN_24}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_14_T_3 = $signed(x_13) - $signed(_x_14_T); // @[TestCORDIC.scala 217:22]
  wire [18:0] _GEN_25 = fxxterm_13[31:13]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_14_T = {{13{_GEN_25[18]}},_GEN_25}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_14_T_3 = $signed(_y_14_T) + $signed(y_13); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_56 = $signed(theta_14) > $signed(z0s_14); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_59 = 32'sh0 - $signed(x_14); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_14 = $signed(theta_14) > $signed(z0s_14) ? $signed(_fxxterm_T_59) : $signed(x_14); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_59 = 32'sh0 - $signed(y_14); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_14 = _fxxterm_T_56 ? $signed(_fxyterm_T_59) : $signed(y_14); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_44 = 32'h0 - 32'h4000; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_15_T = _fxxterm_T_56 ? _fxthetaterm_T_44 : 32'h4000; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_15_T_3 = $signed(theta_14) + $signed(_theta_15_T); // @[TestCORDIC.scala 216:30]
  wire [17:0] _GEN_26 = fxyterm_14[31:14]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_15_T = {{14{_GEN_26[17]}},_GEN_26}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_15_T_3 = $signed(x_14) - $signed(_x_15_T); // @[TestCORDIC.scala 217:22]
  wire [17:0] _GEN_27 = fxxterm_14[31:14]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_15_T = {{14{_GEN_27[17]}},_GEN_27}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_15_T_3 = $signed(_y_15_T) + $signed(y_14); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_60 = $signed(theta_15) > $signed(z0s_15); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_63 = 32'sh0 - $signed(x_15); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_15 = $signed(theta_15) > $signed(z0s_15) ? $signed(_fxxterm_T_63) : $signed(x_15); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_63 = 32'sh0 - $signed(y_15); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_15 = _fxxterm_T_60 ? $signed(_fxyterm_T_63) : $signed(y_15); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_47 = 32'h0 - 32'h2000; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_16_T = _fxxterm_T_60 ? _fxthetaterm_T_47 : 32'h2000; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_16_T_3 = $signed(theta_15) + $signed(_theta_16_T); // @[TestCORDIC.scala 216:30]
  wire [16:0] _GEN_28 = fxyterm_15[31:15]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_16_T = {{15{_GEN_28[16]}},_GEN_28}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_16_T_3 = $signed(x_15) - $signed(_x_16_T); // @[TestCORDIC.scala 217:22]
  wire [16:0] _GEN_29 = fxxterm_15[31:15]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_16_T = {{15{_GEN_29[16]}},_GEN_29}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_16_T_3 = $signed(_y_16_T) + $signed(y_15); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_64 = $signed(theta_16) > $signed(z0s_16); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_67 = 32'sh0 - $signed(x_16); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_16 = $signed(theta_16) > $signed(z0s_16) ? $signed(_fxxterm_T_67) : $signed(x_16); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_67 = 32'sh0 - $signed(y_16); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_16 = _fxxterm_T_64 ? $signed(_fxyterm_T_67) : $signed(y_16); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_50 = 32'h0 - 32'h1000; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_17_T = _fxxterm_T_64 ? _fxthetaterm_T_50 : 32'h1000; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_17_T_3 = $signed(theta_16) + $signed(_theta_17_T); // @[TestCORDIC.scala 216:30]
  wire [15:0] _GEN_30 = fxyterm_16[31:16]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_17_T = {{16{_GEN_30[15]}},_GEN_30}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_17_T_3 = $signed(x_16) - $signed(_x_17_T); // @[TestCORDIC.scala 217:22]
  wire [15:0] _GEN_31 = fxxterm_16[31:16]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_17_T = {{16{_GEN_31[15]}},_GEN_31}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_17_T_3 = $signed(_y_17_T) + $signed(y_16); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_68 = $signed(theta_17) > $signed(z0s_17); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_71 = 32'sh0 - $signed(x_17); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_17 = $signed(theta_17) > $signed(z0s_17) ? $signed(_fxxterm_T_71) : $signed(x_17); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_71 = 32'sh0 - $signed(y_17); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_17 = _fxxterm_T_68 ? $signed(_fxyterm_T_71) : $signed(y_17); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_53 = 32'h0 - 32'h800; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_18_T = _fxxterm_T_68 ? _fxthetaterm_T_53 : 32'h800; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_18_T_3 = $signed(theta_17) + $signed(_theta_18_T); // @[TestCORDIC.scala 216:30]
  wire [14:0] _GEN_32 = fxyterm_17[31:17]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_18_T = {{17{_GEN_32[14]}},_GEN_32}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_18_T_3 = $signed(x_17) - $signed(_x_18_T); // @[TestCORDIC.scala 217:22]
  wire [14:0] _GEN_33 = fxxterm_17[31:17]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_18_T = {{17{_GEN_33[14]}},_GEN_33}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_18_T_3 = $signed(_y_18_T) + $signed(y_17); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_72 = $signed(theta_18) > $signed(z0s_18); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_75 = 32'sh0 - $signed(x_18); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_18 = $signed(theta_18) > $signed(z0s_18) ? $signed(_fxxterm_T_75) : $signed(x_18); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_75 = 32'sh0 - $signed(y_18); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_18 = _fxxterm_T_72 ? $signed(_fxyterm_T_75) : $signed(y_18); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_56 = 32'h0 - 32'h400; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_19_T = _fxxterm_T_72 ? _fxthetaterm_T_56 : 32'h400; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_19_T_3 = $signed(theta_18) + $signed(_theta_19_T); // @[TestCORDIC.scala 216:30]
  wire [13:0] _GEN_34 = fxyterm_18[31:18]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_19_T = {{18{_GEN_34[13]}},_GEN_34}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_19_T_3 = $signed(x_18) - $signed(_x_19_T); // @[TestCORDIC.scala 217:22]
  wire [13:0] _GEN_35 = fxxterm_18[31:18]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_19_T = {{18{_GEN_35[13]}},_GEN_35}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_19_T_3 = $signed(_y_19_T) + $signed(y_18); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_76 = $signed(theta_19) > $signed(z0s_19); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_79 = 32'sh0 - $signed(x_19); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_19 = $signed(theta_19) > $signed(z0s_19) ? $signed(_fxxterm_T_79) : $signed(x_19); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_79 = 32'sh0 - $signed(y_19); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_19 = _fxxterm_T_76 ? $signed(_fxyterm_T_79) : $signed(y_19); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_59 = 32'h0 - 32'h200; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_20_T = _fxxterm_T_76 ? _fxthetaterm_T_59 : 32'h200; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_20_T_3 = $signed(theta_19) + $signed(_theta_20_T); // @[TestCORDIC.scala 216:30]
  wire [12:0] _GEN_36 = fxyterm_19[31:19]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_20_T = {{19{_GEN_36[12]}},_GEN_36}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_20_T_3 = $signed(x_19) - $signed(_x_20_T); // @[TestCORDIC.scala 217:22]
  wire [12:0] _GEN_37 = fxxterm_19[31:19]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_20_T = {{19{_GEN_37[12]}},_GEN_37}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_20_T_3 = $signed(_y_20_T) + $signed(y_19); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_80 = $signed(theta_20) > $signed(z0s_20); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_83 = 32'sh0 - $signed(x_20); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_20 = $signed(theta_20) > $signed(z0s_20) ? $signed(_fxxterm_T_83) : $signed(x_20); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_83 = 32'sh0 - $signed(y_20); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_20 = _fxxterm_T_80 ? $signed(_fxyterm_T_83) : $signed(y_20); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_62 = 32'h0 - 32'h100; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_21_T = _fxxterm_T_80 ? _fxthetaterm_T_62 : 32'h100; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_21_T_3 = $signed(theta_20) + $signed(_theta_21_T); // @[TestCORDIC.scala 216:30]
  wire [11:0] _GEN_38 = fxyterm_20[31:20]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_21_T = {{20{_GEN_38[11]}},_GEN_38}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_21_T_3 = $signed(x_20) - $signed(_x_21_T); // @[TestCORDIC.scala 217:22]
  wire [11:0] _GEN_39 = fxxterm_20[31:20]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_21_T = {{20{_GEN_39[11]}},_GEN_39}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_21_T_3 = $signed(_y_21_T) + $signed(y_20); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_84 = $signed(theta_21) > $signed(z0s_21); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_87 = 32'sh0 - $signed(x_21); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_21 = $signed(theta_21) > $signed(z0s_21) ? $signed(_fxxterm_T_87) : $signed(x_21); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_87 = 32'sh0 - $signed(y_21); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_21 = _fxxterm_T_84 ? $signed(_fxyterm_T_87) : $signed(y_21); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_65 = 32'h0 - 32'h80; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_22_T = _fxxterm_T_84 ? _fxthetaterm_T_65 : 32'h80; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_22_T_3 = $signed(theta_21) + $signed(_theta_22_T); // @[TestCORDIC.scala 216:30]
  wire [10:0] _GEN_40 = fxyterm_21[31:21]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_22_T = {{21{_GEN_40[10]}},_GEN_40}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_22_T_3 = $signed(x_21) - $signed(_x_22_T); // @[TestCORDIC.scala 217:22]
  wire [10:0] _GEN_41 = fxxterm_21[31:21]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_22_T = {{21{_GEN_41[10]}},_GEN_41}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_22_T_3 = $signed(_y_22_T) + $signed(y_21); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_88 = $signed(theta_22) > $signed(z0s_22); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_91 = 32'sh0 - $signed(x_22); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_22 = $signed(theta_22) > $signed(z0s_22) ? $signed(_fxxterm_T_91) : $signed(x_22); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_91 = 32'sh0 - $signed(y_22); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_22 = _fxxterm_T_88 ? $signed(_fxyterm_T_91) : $signed(y_22); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_68 = 32'h0 - 32'h40; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_23_T = _fxxterm_T_88 ? _fxthetaterm_T_68 : 32'h40; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_23_T_3 = $signed(theta_22) + $signed(_theta_23_T); // @[TestCORDIC.scala 216:30]
  wire [9:0] _GEN_42 = fxyterm_22[31:22]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_23_T = {{22{_GEN_42[9]}},_GEN_42}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_23_T_3 = $signed(x_22) - $signed(_x_23_T); // @[TestCORDIC.scala 217:22]
  wire [9:0] _GEN_43 = fxxterm_22[31:22]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_23_T = {{22{_GEN_43[9]}},_GEN_43}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_23_T_3 = $signed(_y_23_T) + $signed(y_22); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_92 = $signed(theta_23) > $signed(z0s_23); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_95 = 32'sh0 - $signed(x_23); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_23 = $signed(theta_23) > $signed(z0s_23) ? $signed(_fxxterm_T_95) : $signed(x_23); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_95 = 32'sh0 - $signed(y_23); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_23 = _fxxterm_T_92 ? $signed(_fxyterm_T_95) : $signed(y_23); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_71 = 32'h0 - 32'h20; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_24_T = _fxxterm_T_92 ? _fxthetaterm_T_71 : 32'h20; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_24_T_3 = $signed(theta_23) + $signed(_theta_24_T); // @[TestCORDIC.scala 216:30]
  wire [8:0] _GEN_44 = fxyterm_23[31:23]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_24_T = {{23{_GEN_44[8]}},_GEN_44}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_24_T_3 = $signed(x_23) - $signed(_x_24_T); // @[TestCORDIC.scala 217:22]
  wire [8:0] _GEN_45 = fxxterm_23[31:23]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_24_T = {{23{_GEN_45[8]}},_GEN_45}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_24_T_3 = $signed(_y_24_T) + $signed(y_23); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_96 = $signed(theta_24) > $signed(z0s_24); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_99 = 32'sh0 - $signed(x_24); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_24 = $signed(theta_24) > $signed(z0s_24) ? $signed(_fxxterm_T_99) : $signed(x_24); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_99 = 32'sh0 - $signed(y_24); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_24 = _fxxterm_T_96 ? $signed(_fxyterm_T_99) : $signed(y_24); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_74 = 32'h0 - 32'h10; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_25_T = _fxxterm_T_96 ? _fxthetaterm_T_74 : 32'h10; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_25_T_3 = $signed(theta_24) + $signed(_theta_25_T); // @[TestCORDIC.scala 216:30]
  wire [7:0] _GEN_46 = fxyterm_24[31:24]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_25_T = {{24{_GEN_46[7]}},_GEN_46}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_25_T_3 = $signed(x_24) - $signed(_x_25_T); // @[TestCORDIC.scala 217:22]
  wire [7:0] _GEN_47 = fxxterm_24[31:24]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_25_T = {{24{_GEN_47[7]}},_GEN_47}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_25_T_3 = $signed(_y_25_T) + $signed(y_24); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_100 = $signed(theta_25) > $signed(z0s_25); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_103 = 32'sh0 - $signed(x_25); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_25 = $signed(theta_25) > $signed(z0s_25) ? $signed(_fxxterm_T_103) : $signed(x_25); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_103 = 32'sh0 - $signed(y_25); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_25 = _fxxterm_T_100 ? $signed(_fxyterm_T_103) : $signed(y_25); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_77 = 32'h0 - 32'h8; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_26_T = _fxxterm_T_100 ? _fxthetaterm_T_77 : 32'h8; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_26_T_3 = $signed(theta_25) + $signed(_theta_26_T); // @[TestCORDIC.scala 216:30]
  wire [6:0] _GEN_48 = fxyterm_25[31:25]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_26_T = {{25{_GEN_48[6]}},_GEN_48}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_26_T_3 = $signed(x_25) - $signed(_x_26_T); // @[TestCORDIC.scala 217:22]
  wire [6:0] _GEN_49 = fxxterm_25[31:25]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_26_T = {{25{_GEN_49[6]}},_GEN_49}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_26_T_3 = $signed(_y_26_T) + $signed(y_25); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_104 = $signed(theta_26) > $signed(z0s_26); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_107 = 32'sh0 - $signed(x_26); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_26 = $signed(theta_26) > $signed(z0s_26) ? $signed(_fxxterm_T_107) : $signed(x_26); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_107 = 32'sh0 - $signed(y_26); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_26 = _fxxterm_T_104 ? $signed(_fxyterm_T_107) : $signed(y_26); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_80 = 32'h0 - 32'h4; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_27_T = _fxxterm_T_104 ? _fxthetaterm_T_80 : 32'h4; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_27_T_3 = $signed(theta_26) + $signed(_theta_27_T); // @[TestCORDIC.scala 216:30]
  wire [5:0] _GEN_50 = fxyterm_26[31:26]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_27_T = {{26{_GEN_50[5]}},_GEN_50}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_27_T_3 = $signed(x_26) - $signed(_x_27_T); // @[TestCORDIC.scala 217:22]
  wire [5:0] _GEN_51 = fxxterm_26[31:26]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_27_T = {{26{_GEN_51[5]}},_GEN_51}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_27_T_3 = $signed(_y_27_T) + $signed(y_26); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_108 = $signed(theta_27) > $signed(z0s_27); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_111 = 32'sh0 - $signed(x_27); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_27 = $signed(theta_27) > $signed(z0s_27) ? $signed(_fxxterm_T_111) : $signed(x_27); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_111 = 32'sh0 - $signed(y_27); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_27 = _fxxterm_T_108 ? $signed(_fxyterm_T_111) : $signed(y_27); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_83 = 32'h0 - 32'h2; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_28_T = _fxxterm_T_108 ? _fxthetaterm_T_83 : 32'h2; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_28_T_3 = $signed(theta_27) + $signed(_theta_28_T); // @[TestCORDIC.scala 216:30]
  wire [4:0] _GEN_52 = fxyterm_27[31:27]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_28_T = {{27{_GEN_52[4]}},_GEN_52}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_28_T_3 = $signed(x_27) - $signed(_x_28_T); // @[TestCORDIC.scala 217:22]
  wire [4:0] _GEN_53 = fxxterm_27[31:27]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_28_T = {{27{_GEN_53[4]}},_GEN_53}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_28_T_3 = $signed(_y_28_T) + $signed(y_27); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_112 = $signed(theta_28) > $signed(z0s_28); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_115 = 32'sh0 - $signed(x_28); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_28 = $signed(theta_28) > $signed(z0s_28) ? $signed(_fxxterm_T_115) : $signed(x_28); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_115 = 32'sh0 - $signed(y_28); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_28 = _fxxterm_T_112 ? $signed(_fxyterm_T_115) : $signed(y_28); // @[TestCORDIC.scala 213:22]
  wire [31:0] _fxthetaterm_T_86 = 32'h0 - 32'h1; // @[TestCORDIC.scala 214:46]
  wire [31:0] _theta_29_T = _fxxterm_T_112 ? _fxthetaterm_T_86 : 32'h1; // @[TestCORDIC.scala 216:44]
  wire [31:0] _theta_29_T_3 = $signed(theta_28) + $signed(_theta_29_T); // @[TestCORDIC.scala 216:30]
  wire [3:0] _GEN_54 = fxyterm_28[31:28]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_29_T = {{28{_GEN_54[3]}},_GEN_54}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_29_T_3 = $signed(x_28) - $signed(_x_29_T); // @[TestCORDIC.scala 217:22]
  wire [3:0] _GEN_55 = fxxterm_28[31:28]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_29_T = {{28{_GEN_55[3]}},_GEN_55}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_29_T_3 = $signed(_y_29_T) + $signed(y_28); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_116 = $signed(theta_29) > $signed(z0s_29); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_119 = 32'sh0 - $signed(x_29); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_29 = $signed(theta_29) > $signed(z0s_29) ? $signed(_fxxterm_T_119) : $signed(x_29); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_119 = 32'sh0 - $signed(y_29); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_29 = _fxxterm_T_116 ? $signed(_fxyterm_T_119) : $signed(y_29); // @[TestCORDIC.scala 213:22]
  wire [32:0] _theta_30_T_1 = {{1{theta_29[31]}},theta_29}; // @[TestCORDIC.scala 216:30]
  wire [31:0] _theta_30_T_3 = _theta_30_T_1[31:0]; // @[TestCORDIC.scala 216:30]
  wire [2:0] _GEN_56 = fxyterm_29[31:29]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_30_T = {{29{_GEN_56[2]}},_GEN_56}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_30_T_3 = $signed(x_29) - $signed(_x_30_T); // @[TestCORDIC.scala 217:22]
  wire [2:0] _GEN_57 = fxxterm_29[31:29]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_30_T = {{29{_GEN_57[2]}},_GEN_57}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_30_T_3 = $signed(_y_30_T) + $signed(y_29); // @[TestCORDIC.scala 218:46]
  wire  _fxxterm_T_120 = $signed(theta_30) > $signed(z0s_30); // @[TestCORDIC.scala 212:32]
  wire [31:0] _fxxterm_T_123 = 32'sh0 - $signed(x_30); // @[TestCORDIC.scala 212:42]
  wire [31:0] fxxterm_30 = $signed(theta_30) > $signed(z0s_30) ? $signed(_fxxterm_T_123) : $signed(x_30); // @[TestCORDIC.scala 212:22]
  wire [31:0] _fxyterm_T_123 = 32'sh0 - $signed(y_30); // @[TestCORDIC.scala 213:42]
  wire [31:0] fxyterm_30 = _fxxterm_T_120 ? $signed(_fxyterm_T_123) : $signed(y_30); // @[TestCORDIC.scala 213:22]
  wire [1:0] _GEN_58 = fxyterm_30[31:30]; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_31_T = {{30{_GEN_58[1]}},_GEN_58}; // @[TestCORDIC.scala 217:33]
  wire [31:0] _x_31_T_3 = $signed(x_30) - $signed(_x_31_T); // @[TestCORDIC.scala 217:22]
  wire [1:0] _GEN_59 = fxxterm_30[31:30]; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_31_T = {{30{_GEN_59[1]}},_GEN_59}; // @[TestCORDIC.scala 218:26]
  wire [31:0] _y_31_T_3 = $signed(_y_31_T) + $signed(y_30); // @[TestCORDIC.scala 218:46]
  FloatToFixed32 tofixedx0 ( // @[TestCORDIC.scala 187:25]
    .io_in(tofixedx0_io_in),
    .io_out(tofixedx0_io_out)
  );
  FloatToFixed32 tofixedy0 ( // @[TestCORDIC.scala 188:25]
    .io_in(tofixedy0_io_in),
    .io_out(tofixedy0_io_out)
  );
  FloatToFixed32 tofixedz0 ( // @[TestCORDIC.scala 189:25]
    .io_in(tofixedz0_io_in),
    .io_out(tofixedz0_io_out)
  );
  FixedToFloat32 tofloatxout ( // @[TestCORDIC.scala 222:27]
    .io_in(tofloatxout_io_in),
    .io_out(tofloatxout_io_out)
  );
  FixedToFloat32 tofloatyout ( // @[TestCORDIC.scala 223:27]
    .io_in(tofloatyout_io_in),
    .io_out(tofloatyout_io_out)
  );
  FixedToFloat32 tofloatzout ( // @[TestCORDIC.scala 224:27]
    .io_in(tofloatzout_io_in),
    .io_out(tofloatzout_io_out)
  );
  assign io_out_x = tofloatxout_io_out; // @[TestCORDIC.scala 230:12]
  assign io_out_y = tofloatyout_io_out; // @[TestCORDIC.scala 231:12]
  assign io_out_z = tofloatzout_io_out; // @[TestCORDIC.scala 232:12]
  assign tofixedx0_io_in = io_in_x0; // @[TestCORDIC.scala 190:19]
  assign tofixedy0_io_in = io_in_y0; // @[TestCORDIC.scala 191:19]
  assign tofixedz0_io_in = io_in_z0; // @[TestCORDIC.scala 192:19]
  assign tofloatxout_io_in = x_31; // @[TestCORDIC.scala 226:30]
  assign tofloatyout_io_in = y_31; // @[TestCORDIC.scala 227:30]
  assign tofloatzout_io_in = z0s_31; // @[TestCORDIC.scala 228:32]
  always @(posedge clock) begin
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_0 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_0 <= tofixedx0_io_out; // @[TestCORDIC.scala 206:8]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_1 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_1 <= _x_1_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_2 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_2 <= _x_2_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_3 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_3 <= _x_3_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_4 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_4 <= _x_4_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_5 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_5 <= _x_5_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_6 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_6 <= _x_6_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_7 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_7 <= _x_7_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_8 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_8 <= _x_8_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_9 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_9 <= _x_9_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_10 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_10 <= _x_10_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_11 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_11 <= _x_11_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_12 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_12 <= _x_12_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_13 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_13 <= _x_13_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_14 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_14 <= _x_14_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_15 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_15 <= _x_15_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_16 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_16 <= _x_16_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_17 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_17 <= _x_17_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_18 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_18 <= _x_18_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_19 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_19 <= _x_19_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_20 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_20 <= _x_20_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_21 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_21 <= _x_21_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_22 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_22 <= _x_22_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_23 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_23 <= _x_23_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_24 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_24 <= _x_24_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_25 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_25 <= _x_25_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_26 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_26 <= _x_26_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_27 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_27 <= _x_27_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_28 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_28 <= _x_28_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_29 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_29 <= _x_29_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_30 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_30 <= _x_30_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 194:18]
      x_31 <= 32'sh0; // @[TestCORDIC.scala 194:18]
    end else begin
      x_31 <= _x_31_T_3; // @[TestCORDIC.scala 217:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_0 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_0 <= tofixedy0_io_out; // @[TestCORDIC.scala 207:8]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_1 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_1 <= _y_1_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_2 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_2 <= _y_2_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_3 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_3 <= _y_3_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_4 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_4 <= _y_4_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_5 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_5 <= _y_5_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_6 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_6 <= _y_6_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_7 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_7 <= _y_7_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_8 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_8 <= _y_8_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_9 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_9 <= _y_9_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_10 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_10 <= _y_10_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_11 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_11 <= _y_11_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_12 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_12 <= _y_12_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_13 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_13 <= _y_13_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_14 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_14 <= _y_14_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_15 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_15 <= _y_15_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_16 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_16 <= _y_16_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_17 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_17 <= _y_17_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_18 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_18 <= _y_18_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_19 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_19 <= _y_19_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_20 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_20 <= _y_20_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_21 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_21 <= _y_21_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_22 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_22 <= _y_22_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_23 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_23 <= _y_23_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_24 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_24 <= _y_24_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_25 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_25 <= _y_25_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_26 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_26 <= _y_26_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_27 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_27 <= _y_27_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_28 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_28 <= _y_28_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_29 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_29 <= _y_29_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_30 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_30 <= _y_30_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 195:18]
      y_31 <= 32'sh0; // @[TestCORDIC.scala 195:18]
    end else begin
      y_31 <= _y_31_T_3; // @[TestCORDIC.scala 218:14]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_1 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_1 <= _theta_1_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_2 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_2 <= _theta_2_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_3 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_3 <= _theta_3_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_4 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_4 <= _theta_4_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_5 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_5 <= _theta_5_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_6 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_6 <= _theta_6_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_7 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_7 <= _theta_7_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_8 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_8 <= _theta_8_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_9 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_9 <= _theta_9_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_10 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_10 <= _theta_10_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_11 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_11 <= _theta_11_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_12 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_12 <= _theta_12_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_13 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_13 <= _theta_13_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_14 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_14 <= _theta_14_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_15 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_15 <= _theta_15_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_16 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_16 <= _theta_16_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_17 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_17 <= _theta_17_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_18 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_18 <= _theta_18_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_19 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_19 <= _theta_19_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_20 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_20 <= _theta_20_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_21 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_21 <= _theta_21_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_22 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_22 <= _theta_22_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_23 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_23 <= _theta_23_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_24 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_24 <= _theta_24_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_25 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_25 <= _theta_25_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_26 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_26 <= _theta_26_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_27 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_27 <= _theta_27_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_28 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_28 <= _theta_28_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_29 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_29 <= _theta_29_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 196:22]
      theta_30 <= 32'sh0; // @[TestCORDIC.scala 196:22]
    end else begin
      theta_30 <= _theta_30_T_3; // @[TestCORDIC.scala 216:18]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_0 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_0 <= tofixedz0_io_out; // @[TestCORDIC.scala 208:10]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_1 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_1 <= z0s_0; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_2 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_2 <= z0s_1; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_3 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_3 <= z0s_2; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_4 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_4 <= z0s_3; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_5 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_5 <= z0s_4; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_6 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_6 <= z0s_5; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_7 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_7 <= z0s_6; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_8 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_8 <= z0s_7; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_9 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_9 <= z0s_8; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_10 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_10 <= z0s_9; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_11 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_11 <= z0s_10; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_12 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_12 <= z0s_11; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_13 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_13 <= z0s_12; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_14 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_14 <= z0s_13; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_15 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_15 <= z0s_14; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_16 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_16 <= z0s_15; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_17 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_17 <= z0s_16; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_18 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_18 <= z0s_17; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_19 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_19 <= z0s_18; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_20 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_20 <= z0s_19; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_21 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_21 <= z0s_20; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_22 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_22 <= z0s_21; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_23 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_23 <= z0s_22; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_24 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_24 <= z0s_23; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_25 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_25 <= z0s_24; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_26 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_26 <= z0s_25; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_27 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_27 <= z0s_26; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_28 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_28 <= z0s_27; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_29 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_29 <= z0s_28; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_30 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_30 <= z0s_29; // @[TestCORDIC.scala 219:16]
    end
    if (reset) begin // @[TestCORDIC.scala 197:20]
      z0s_31 <= 32'sh0; // @[TestCORDIC.scala 197:20]
    end else begin
      z0s_31 <= z0s_30; // @[TestCORDIC.scala 219:16]
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
  x_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  x_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  x_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  x_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  x_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  x_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  x_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  x_8 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  x_9 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  x_10 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  x_11 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  x_12 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  x_13 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  x_14 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  x_15 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  x_16 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  x_17 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  x_18 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  x_19 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  x_20 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  x_21 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  x_22 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  x_23 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  x_24 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  x_25 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  x_26 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  x_27 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  x_28 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  x_29 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  x_30 = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  x_31 = _RAND_31[31:0];
  _RAND_32 = {1{`RANDOM}};
  y_0 = _RAND_32[31:0];
  _RAND_33 = {1{`RANDOM}};
  y_1 = _RAND_33[31:0];
  _RAND_34 = {1{`RANDOM}};
  y_2 = _RAND_34[31:0];
  _RAND_35 = {1{`RANDOM}};
  y_3 = _RAND_35[31:0];
  _RAND_36 = {1{`RANDOM}};
  y_4 = _RAND_36[31:0];
  _RAND_37 = {1{`RANDOM}};
  y_5 = _RAND_37[31:0];
  _RAND_38 = {1{`RANDOM}};
  y_6 = _RAND_38[31:0];
  _RAND_39 = {1{`RANDOM}};
  y_7 = _RAND_39[31:0];
  _RAND_40 = {1{`RANDOM}};
  y_8 = _RAND_40[31:0];
  _RAND_41 = {1{`RANDOM}};
  y_9 = _RAND_41[31:0];
  _RAND_42 = {1{`RANDOM}};
  y_10 = _RAND_42[31:0];
  _RAND_43 = {1{`RANDOM}};
  y_11 = _RAND_43[31:0];
  _RAND_44 = {1{`RANDOM}};
  y_12 = _RAND_44[31:0];
  _RAND_45 = {1{`RANDOM}};
  y_13 = _RAND_45[31:0];
  _RAND_46 = {1{`RANDOM}};
  y_14 = _RAND_46[31:0];
  _RAND_47 = {1{`RANDOM}};
  y_15 = _RAND_47[31:0];
  _RAND_48 = {1{`RANDOM}};
  y_16 = _RAND_48[31:0];
  _RAND_49 = {1{`RANDOM}};
  y_17 = _RAND_49[31:0];
  _RAND_50 = {1{`RANDOM}};
  y_18 = _RAND_50[31:0];
  _RAND_51 = {1{`RANDOM}};
  y_19 = _RAND_51[31:0];
  _RAND_52 = {1{`RANDOM}};
  y_20 = _RAND_52[31:0];
  _RAND_53 = {1{`RANDOM}};
  y_21 = _RAND_53[31:0];
  _RAND_54 = {1{`RANDOM}};
  y_22 = _RAND_54[31:0];
  _RAND_55 = {1{`RANDOM}};
  y_23 = _RAND_55[31:0];
  _RAND_56 = {1{`RANDOM}};
  y_24 = _RAND_56[31:0];
  _RAND_57 = {1{`RANDOM}};
  y_25 = _RAND_57[31:0];
  _RAND_58 = {1{`RANDOM}};
  y_26 = _RAND_58[31:0];
  _RAND_59 = {1{`RANDOM}};
  y_27 = _RAND_59[31:0];
  _RAND_60 = {1{`RANDOM}};
  y_28 = _RAND_60[31:0];
  _RAND_61 = {1{`RANDOM}};
  y_29 = _RAND_61[31:0];
  _RAND_62 = {1{`RANDOM}};
  y_30 = _RAND_62[31:0];
  _RAND_63 = {1{`RANDOM}};
  y_31 = _RAND_63[31:0];
  _RAND_64 = {1{`RANDOM}};
  theta_1 = _RAND_64[31:0];
  _RAND_65 = {1{`RANDOM}};
  theta_2 = _RAND_65[31:0];
  _RAND_66 = {1{`RANDOM}};
  theta_3 = _RAND_66[31:0];
  _RAND_67 = {1{`RANDOM}};
  theta_4 = _RAND_67[31:0];
  _RAND_68 = {1{`RANDOM}};
  theta_5 = _RAND_68[31:0];
  _RAND_69 = {1{`RANDOM}};
  theta_6 = _RAND_69[31:0];
  _RAND_70 = {1{`RANDOM}};
  theta_7 = _RAND_70[31:0];
  _RAND_71 = {1{`RANDOM}};
  theta_8 = _RAND_71[31:0];
  _RAND_72 = {1{`RANDOM}};
  theta_9 = _RAND_72[31:0];
  _RAND_73 = {1{`RANDOM}};
  theta_10 = _RAND_73[31:0];
  _RAND_74 = {1{`RANDOM}};
  theta_11 = _RAND_74[31:0];
  _RAND_75 = {1{`RANDOM}};
  theta_12 = _RAND_75[31:0];
  _RAND_76 = {1{`RANDOM}};
  theta_13 = _RAND_76[31:0];
  _RAND_77 = {1{`RANDOM}};
  theta_14 = _RAND_77[31:0];
  _RAND_78 = {1{`RANDOM}};
  theta_15 = _RAND_78[31:0];
  _RAND_79 = {1{`RANDOM}};
  theta_16 = _RAND_79[31:0];
  _RAND_80 = {1{`RANDOM}};
  theta_17 = _RAND_80[31:0];
  _RAND_81 = {1{`RANDOM}};
  theta_18 = _RAND_81[31:0];
  _RAND_82 = {1{`RANDOM}};
  theta_19 = _RAND_82[31:0];
  _RAND_83 = {1{`RANDOM}};
  theta_20 = _RAND_83[31:0];
  _RAND_84 = {1{`RANDOM}};
  theta_21 = _RAND_84[31:0];
  _RAND_85 = {1{`RANDOM}};
  theta_22 = _RAND_85[31:0];
  _RAND_86 = {1{`RANDOM}};
  theta_23 = _RAND_86[31:0];
  _RAND_87 = {1{`RANDOM}};
  theta_24 = _RAND_87[31:0];
  _RAND_88 = {1{`RANDOM}};
  theta_25 = _RAND_88[31:0];
  _RAND_89 = {1{`RANDOM}};
  theta_26 = _RAND_89[31:0];
  _RAND_90 = {1{`RANDOM}};
  theta_27 = _RAND_90[31:0];
  _RAND_91 = {1{`RANDOM}};
  theta_28 = _RAND_91[31:0];
  _RAND_92 = {1{`RANDOM}};
  theta_29 = _RAND_92[31:0];
  _RAND_93 = {1{`RANDOM}};
  theta_30 = _RAND_93[31:0];
  _RAND_94 = {1{`RANDOM}};
  z0s_0 = _RAND_94[31:0];
  _RAND_95 = {1{`RANDOM}};
  z0s_1 = _RAND_95[31:0];
  _RAND_96 = {1{`RANDOM}};
  z0s_2 = _RAND_96[31:0];
  _RAND_97 = {1{`RANDOM}};
  z0s_3 = _RAND_97[31:0];
  _RAND_98 = {1{`RANDOM}};
  z0s_4 = _RAND_98[31:0];
  _RAND_99 = {1{`RANDOM}};
  z0s_5 = _RAND_99[31:0];
  _RAND_100 = {1{`RANDOM}};
  z0s_6 = _RAND_100[31:0];
  _RAND_101 = {1{`RANDOM}};
  z0s_7 = _RAND_101[31:0];
  _RAND_102 = {1{`RANDOM}};
  z0s_8 = _RAND_102[31:0];
  _RAND_103 = {1{`RANDOM}};
  z0s_9 = _RAND_103[31:0];
  _RAND_104 = {1{`RANDOM}};
  z0s_10 = _RAND_104[31:0];
  _RAND_105 = {1{`RANDOM}};
  z0s_11 = _RAND_105[31:0];
  _RAND_106 = {1{`RANDOM}};
  z0s_12 = _RAND_106[31:0];
  _RAND_107 = {1{`RANDOM}};
  z0s_13 = _RAND_107[31:0];
  _RAND_108 = {1{`RANDOM}};
  z0s_14 = _RAND_108[31:0];
  _RAND_109 = {1{`RANDOM}};
  z0s_15 = _RAND_109[31:0];
  _RAND_110 = {1{`RANDOM}};
  z0s_16 = _RAND_110[31:0];
  _RAND_111 = {1{`RANDOM}};
  z0s_17 = _RAND_111[31:0];
  _RAND_112 = {1{`RANDOM}};
  z0s_18 = _RAND_112[31:0];
  _RAND_113 = {1{`RANDOM}};
  z0s_19 = _RAND_113[31:0];
  _RAND_114 = {1{`RANDOM}};
  z0s_20 = _RAND_114[31:0];
  _RAND_115 = {1{`RANDOM}};
  z0s_21 = _RAND_115[31:0];
  _RAND_116 = {1{`RANDOM}};
  z0s_22 = _RAND_116[31:0];
  _RAND_117 = {1{`RANDOM}};
  z0s_23 = _RAND_117[31:0];
  _RAND_118 = {1{`RANDOM}};
  z0s_24 = _RAND_118[31:0];
  _RAND_119 = {1{`RANDOM}};
  z0s_25 = _RAND_119[31:0];
  _RAND_120 = {1{`RANDOM}};
  z0s_26 = _RAND_120[31:0];
  _RAND_121 = {1{`RANDOM}};
  z0s_27 = _RAND_121[31:0];
  _RAND_122 = {1{`RANDOM}};
  z0s_28 = _RAND_122[31:0];
  _RAND_123 = {1{`RANDOM}};
  z0s_29 = _RAND_123[31:0];
  _RAND_124 = {1{`RANDOM}};
  z0s_30 = _RAND_124[31:0];
  _RAND_125 = {1{`RANDOM}};
  z0s_31 = _RAND_125[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule


