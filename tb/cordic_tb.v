`timescale 1us / 1us
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/20/2024 04:19:42 PM
// Design Name: 
// Module Name: example_sim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module FloatToFixed32(
  input         clock,
  input         reset,
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
  wire [31:0] _bx_T = io_in & 32'hffff0000; // @[TestCORDIC.scala 36:20]
  wire  _bx_T_1 = _bx_T == 32'h0; // @[TestCORDIC.scala 36:37]
  wire [47:0] _bx_T_2 = {io_in, 16'h0}; // @[TestCORDIC.scala 36:49]
  wire [47:0] bx = _bx_T == 32'h0 ? _bx_T_2 : {{16'd0}, io_in}; // @[TestCORDIC.scala 36:15]
  wire [47:0] _cx_T = bx & 48'hff000000; // @[TestCORDIC.scala 37:20]
  wire  _cx_T_1 = _cx_T == 48'h0; // @[TestCORDIC.scala 37:37]
  wire [55:0] _cx_T_2 = {bx, 8'h0}; // @[TestCORDIC.scala 37:49]
  wire [55:0] cx = _cx_T == 48'h0 ? _cx_T_2 : {{8'd0}, bx}; // @[TestCORDIC.scala 37:15]
  wire [55:0] _dx_T = cx & 56'hf0000000; // @[TestCORDIC.scala 38:20]
  wire  _dx_T_1 = _dx_T == 56'h0; // @[TestCORDIC.scala 38:37]
  wire [59:0] _dx_T_2 = {cx, 4'h0}; // @[TestCORDIC.scala 38:49]
  wire [59:0] dx = _dx_T == 56'h0 ? _dx_T_2 : {{4'd0}, cx}; // @[TestCORDIC.scala 38:15]
  wire [59:0] _ex_T = dx & 60'hc0000000; // @[TestCORDIC.scala 39:20]
  wire  _ex_T_1 = _ex_T == 60'h0; // @[TestCORDIC.scala 39:37]
  wire [61:0] _ex_T_2 = {dx, 2'h0}; // @[TestCORDIC.scala 39:49]
  wire [61:0] ex = _ex_T == 60'h0 ? _ex_T_2 : {{2'd0}, dx}; // @[TestCORDIC.scala 39:15]
  wire [3:0] _io_out_T_10 = {_bx_T_1,_cx_T_1,_dx_T_1,_ex_T_1}; // @[TestCORDIC.scala 41:112]
  wire [61:0] _io_out_T_11 = ex & 62'h80000000; // @[TestCORDIC.scala 42:44]
  assign io_out = {_io_out_T_10,_io_out_T_11 == 62'h0}; // @[TestCORDIC.scala 42:36]
endmodule
module FixedToFloat32(
  input         clock,
  input         reset,
  input  [31:0] io_in,
  output [31:0] io_out
);
  wire [31:0] clz32_io_in; // @[TestCORDIC.scala 62:21]
  wire [4:0] clz32_io_out; // @[TestCORDIC.scala 62:21]
  wire [31:0] _data_T_2 = ~io_in; // @[TestCORDIC.scala 59:35]
  wire [31:0] _data_T_4 = _data_T_2 + 32'h1; // @[TestCORDIC.scala 59:50]
  wire [31:0] data = io_in[31] ? _data_T_4 : io_in; // @[TestCORDIC.scala 59:14]
  wire [3:0] _exp_T_2 = 4'sh4 - 4'sh1; // @[TestCORDIC.scala 66:16]
  wire [4:0] _GEN_0 = {{1{_exp_T_2[3]}},_exp_T_2}; // @[TestCORDIC.scala 66:23]
  wire [4:0] _exp_T_6 = $signed(_GEN_0) - $signed(clz32_io_out); // @[TestCORDIC.scala 66:23]
  wire [7:0] _GEN_1 = {{3{_exp_T_6[4]}},_exp_T_6}; // @[TestCORDIC.scala 66:46]
  wire [4:0] _frac_T_1 = clz32_io_out + 5'h1; // @[TestCORDIC.scala 67:42]
  wire [62:0] _GEN_2 = {{31'd0}, data}; // @[TestCORDIC.scala 67:18]
  wire [62:0] _frac_T_2 = _GEN_2 << _frac_T_1; // @[TestCORDIC.scala 67:18]
  wire [5:0] _frac_T_4 = 6'h20 - 6'h17; // @[TestCORDIC.scala 67:60]
  wire [62:0] _frac_T_5 = _frac_T_2 >> _frac_T_4; // @[TestCORDIC.scala 67:51]
  wire [7:0] _io_out_T_1 = $signed(_GEN_1) + 8'sh7f; // @[TestCORDIC.scala 69:30]
  wire [8:0] _io_out_T_2 = {io_in[31],_io_out_T_1}; // @[TestCORDIC.scala 69:23]
  wire [63:0] frac = {{1'd0}, _frac_T_5}; // @[TestCORDIC.scala 56:18 67:8]
  CLZ32 clz32 ( // @[TestCORDIC.scala 62:21]
    .io_in(clz32_io_in),
    .io_out(clz32_io_out)
  );
  assign io_out = {_io_out_T_2,frac[22:0]}; // @[TestCORDIC.scala 69:37]
  assign clz32_io_in = io_in[31] ? _data_T_4 : io_in; // @[TestCORDIC.scala 59:14]
endmodule


module example_sim();
   
    reg clock_;
    always #5 clock_ = ~clock_;
    
    reg reset_;
    
    wire [31:0] atanout_;
    reg [5:0] atansel_;

wire [31:0] fixed_;

    reg [31:0] halverin_;
    reg [4:0] halveramt_;
    wire [31:0] halverout_;
    
    
    reg [31:0] x0_, y0_, z0_;
    wire [31:0] xn_, yn_, zn_, dbgatanout_;
    wire [4:0] dbgcounter_;
    reg [31:0] cc_;
    wire output_ready_, pipe_ready_;
wire [31:0] pipeline_count_;
reg [31:0] testnum_;
wire [4:0] nlz_;
wire [31:0] floatout_;
reg [31:0] testin;
FloatToFixed32 fixeddut (.clock(clock_), .reset(reset_), .io_in(testin), .io_out(fixed_));
FixedToFloat32 floatdut (.clock(clock_), .reset(reset_), .io_in(fixed_), .io_out(floatout_));

    CORDIC cordicdut(
    .clock(clock_),
    .reset(reset_),
    .io_in_x0(x0_),
    .io_in_y0(y0_),
    .io_in_z0(z0_),
    .io_out_x(xn_),
    .io_out_y(yn_),
    .io_out_z(zn_),
    .io_out_output_ready(output_ready_),
    .io_out_pipe_ready(pipe_ready_),
    .io_out_pipeline_count(pipeline_count_)
    );



 integer idx;
integer cyclecount;
 initial begin
    clock_ = 1'b0;
    reset_ = 1'b1;
#10;
	testnum_ = 32'h00F12345;

    x0_ = 32'd1058764014;
    y0_ = 32'h00000000;
    z0_ = 32'h3f490fdb;

    reset_ = 1'b0;
#10;
/*
    x0_ = 32'd1058764014;
    y0_ = 32'h00000000;
    z0_ = 32'h3f490fdb;
    #10;
    x0_ = 32'd1058764014;
    y0_ = 32'h00000000;
    z0_ = 32'h3f060a92;
*/
/*
testin = 32'h404168a9; #10;
testin = 32'h3e8c77fd; #10;
testin = 32'h3fa44dd4; #10;
testin = 32'h3fe728be; #10;
testin = 32'hbf2cf6cb; #10;
testin = 32'h40490a61; #10;
testin = 32'h3e6186ac; #10;
testin = 32'hc00b5707; #10;
testin = 32'hc00fa437; #10;
testin = 32'h4027bbc1; #10;
testin = 32'hc00997e4; #10;
testin = 32'hc02a37cf; #10;
testin = 32'hc049abf1; #10;
testin = 32'h3fc7b474; #10;
testin = 32'h3c137ced; #10;
testin = 32'h40118233; #10;
testin = 32'hbfdb8a58; #10;
testin = 32'h4034b084; #10;
testin = 32'hbfe0e849; #10;
testin = 32'h3f72b749; #10;
testin = 32'h40398b4a; #10;
testin = 32'h401ac02f; #10;
testin = 32'h3fd3550c; #10;
testin = 32'h3f075f61; #10;
testin = 32'h3f228e09; #10;
testin = 32'h3fd25aec; #10;
testin = 32'h3e375f37; #10;
testin = 32'hc045de9d; #10;
testin = 32'h3f3a6a5b; #10;
testin = 32'hc04b916a; #10;
testin = 32'hbecc30c2; #10;
testin = 32'h3f076ac5; #10;
testin = 32'h3ea13126; #10;
testin = 32'hc01587bd; #10;
testin = 32'hbf62e5fb; #10;
testin = 32'h40371101; #10;
testin = 32'hc01aa5eb; #10;
testin = 32'h4023877b; #10;
testin = 32'hc0226e95; #10;
testin = 32'hbfb84326; #10;
testin = 32'h3ffa355a; #10;
testin = 32'hbfbbbbd4; #10;
testin = 32'hbf60c34b; #10;
testin = 32'h4001974b; #10;
testin = 32'hc0482c3f; #10;
testin = 32'h40168b39; #10;
testin = 32'h3f89e1de; #10;
testin = 32'hbfcf91b9; #10;
testin = 32'h3ffa265d; #10;
testin = 32'h4022a559; #10;
testin = 32'h40230d85; #10;
testin = 32'h3fd0ebd3; #10;
testin = 32'h3fde79f4; #10;
testin = 32'h3f7a3def; #10;
testin = 32'hbf87b59b; #10;
testin = 32'hbf59204b; #10;
testin = 32'hbf19ae74; #10;
testin = 32'h4015c3b5; #10;
testin = 32'hbf37f884; #10;
testin = 32'hc045f995; #10;
testin = 32'h40185ada; #10;
testin = 32'h4006a456; #10;
testin = 32'h3f2826ab; #10;
testin = 32'hbf069e40; #10;
testin = 32'h403f4527; #10;
testin = 32'h403f78bb; #10;
testin = 32'hbf62fc78; #10;
testin = 32'hc0298952; #10;
testin = 32'h4014d7a7; #10;
testin = 32'hbe505246; #10;
testin = 32'hbf5e095b; #10;
testin = 32'h3f87938a; #10;
testin = 32'h3fc68b01; #10;
testin = 32'h3fbceacb; #10;
testin = 32'hbe0c77eb; #10;
testin = 32'h3fd283a0; #10;
testin = 32'h3f1b603e; #10;
testin = 32'hc011ff1f; #10;
testin = 32'hc04caf9b; #10;
testin = 32'hbf28f545; #10;
testin = 32'hc03d8254; #10;
testin = 32'h40248678; #10;
testin = 32'hc00feff7; #10;
testin = 32'h3fffc669; #10;
testin = 32'h3ea76b2a; #10;
testin = 32'hbdb446ac; #10;
testin = 32'hc0048d6d; #10;
testin = 32'h403caa57; #10;
testin = 32'hbf781c3e; #10;
testin = 32'h3edce804; #10;
testin = 32'h4044d951; #10;
testin = 32'hbfe7a988; #10;
testin = 32'hbf2f9ce3; #10;
testin = 32'h3f02e9b1; #10;
testin = 32'h3f62b0ea; #10;
testin = 32'hbf6b2a81; #10;
testin = 32'h3e9054c2; #10;
testin = 32'h404e15ab; #10;
testin = 32'hbeb15b20; #10;
testin = 32'hbf1d193f; #10;
testin = 32'hbe51807e; #10;
testin = 32'h40007ad4; #10;
testin = 32'hc031a51a; #10;
testin = 32'hbfeff62d; #10;
testin = 32'h3e863d56; #10;
testin = 32'h3e9ddfb5; #10;
testin = 32'h403f6f48; #10;
testin = 32'hc01688d5; #10;
testin = 32'h3f9fcace; #10;
testin = 32'h4040e83c; #10;
testin = 32'h3e56268e; #10;
testin = 32'h3fc11743; #10;
testin = 32'h40174625; #10;
testin = 32'h3f973602; #10;
testin = 32'h3e923235; #10;
testin = 32'hbf07d411; #10;
testin = 32'hc0082fc3; #10;
testin = 32'h3fb7c2d0; #10;
testin = 32'hbf4dccf0; #10;
testin = 32'h3dfe3784; #10;
testin = 32'hbfad544c; #10;
testin = 32'hbf7309ea; #10;
testin = 32'h3fc48b0d; #10;
testin = 32'h3f972e60; #10;
testin = 32'h40322081; #10;
testin = 32'hbf4cdb36; #10;
testin = 32'hc03d5bff; #10;
testin = 32'hbe1fd75f; #10;

*/

    for(idx = 0; idx < 512; idx = idx + 1) begin

        atansel_ = idx[4:0];
        cc_ = idx[31:0];
        #10;
    end
    
 end
    
endmodule

