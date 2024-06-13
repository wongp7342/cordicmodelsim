module multiplier(
  input  [23:0] io_in_a,
  input  [23:0] io_in_b,
  output [47:0] io_out_s
);
  assign io_out_s = io_in_a * io_in_b; // @[BinaryDesigns.scala 81:23]
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
  input  [7:0] io_in_a,
  input  [7:0] io_in_b,
  output [7:0] io_out_s,
  output       io_out_c
);
  wire [8:0] _result_T = io_in_a + io_in_b; // @[BinaryDesigns.scala 55:23]
  wire [9:0] _result_T_1 = {{1'd0}, _result_T}; // @[BinaryDesigns.scala 55:34]
  wire [8:0] result = _result_T_1[8:0]; // @[BinaryDesigns.scala 54:22 55:12]
  assign io_out_s = result[7:0]; // @[BinaryDesigns.scala 56:23]
  assign io_out_c = result[8]; // @[BinaryDesigns.scala 57:23]
endmodule
module FP_multiplier_10ccs(
  input         clock,
  input         reset,
  input  [31:0] io_in_a,
  input  [31:0] io_in_b,
  output [31:0] io_out_s
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
  reg [63:0] _RAND_32;
  reg [63:0] _RAND_33;
  reg [63:0] _RAND_34;
  reg [63:0] _RAND_35;
  reg [63:0] _RAND_36;
  reg [63:0] _RAND_37;
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
`endif // RANDOMIZE_REG_INIT
  wire [23:0] multiplier_io_in_a; // @[FloatingPointDesigns.scala 1726:28]
  wire [23:0] multiplier_io_in_b; // @[FloatingPointDesigns.scala 1726:28]
  wire [47:0] multiplier_io_out_s; // @[FloatingPointDesigns.scala 1726:28]
  wire [7:0] subber_io_in_a; // @[FloatingPointDesigns.scala 1733:24]
  wire [7:0] subber_io_in_b; // @[FloatingPointDesigns.scala 1733:24]
  wire [7:0] subber_io_out_s; // @[FloatingPointDesigns.scala 1733:24]
  wire  subber_io_out_c; // @[FloatingPointDesigns.scala 1733:24]
  wire [7:0] complementN_io_in; // @[FloatingPointDesigns.scala 1742:29]
  wire [7:0] complementN_io_out; // @[FloatingPointDesigns.scala 1742:29]
  wire [7:0] adderN_io_in_a; // @[FloatingPointDesigns.scala 1759:24]
  wire [7:0] adderN_io_in_b; // @[FloatingPointDesigns.scala 1759:24]
  wire [7:0] adderN_io_out_s; // @[FloatingPointDesigns.scala 1759:24]
  wire  adderN_io_out_c; // @[FloatingPointDesigns.scala 1759:24]
  wire  s_0 = io_in_a[31]; // @[FloatingPointDesigns.scala 1692:20]
  wire  s_1 = io_in_b[31]; // @[FloatingPointDesigns.scala 1693:20]
  wire [8:0] _T_2 = 9'h100 - 9'h2; // @[FloatingPointDesigns.scala 1697:64]
  wire [8:0] _GEN_63 = {{1'd0}, io_in_a[30:23]}; // @[FloatingPointDesigns.scala 1697:36]
  wire [7:0] _GEN_0 = io_in_a[30:23] < 8'h1 ? 8'h1 : io_in_a[30:23]; // @[FloatingPointDesigns.scala 1699:45 1700:14 1702:14]
  wire [8:0] _GEN_1 = _GEN_63 > _T_2 ? _T_2 : {{1'd0}, _GEN_0}; // @[FloatingPointDesigns.scala 1697:71 1698:14]
  wire [8:0] _GEN_64 = {{1'd0}, io_in_b[30:23]}; // @[FloatingPointDesigns.scala 1704:36]
  wire [7:0] _GEN_2 = io_in_b[30:23] < 8'h1 ? 8'h1 : io_in_b[30:23]; // @[FloatingPointDesigns.scala 1706:45 1707:14 1709:14]
  wire [8:0] _GEN_3 = _GEN_64 > _T_2 ? _T_2 : {{1'd0}, _GEN_2}; // @[FloatingPointDesigns.scala 1704:71 1705:14]
  wire [22:0] frac_0 = io_in_a[22:0]; // @[FloatingPointDesigns.scala 1714:23]
  wire [22:0] frac_1 = io_in_b[22:0]; // @[FloatingPointDesigns.scala 1715:23]
  wire [23:0] new_frac_0 = {1'h1,frac_0}; // @[FloatingPointDesigns.scala 1719:24]
  wire [23:0] new_frac_1 = {1'h1,frac_1}; // @[FloatingPointDesigns.scala 1720:24]
  reg  s_reg_0_0; // @[FloatingPointDesigns.scala 1722:24]
  reg  s_reg_0_1; // @[FloatingPointDesigns.scala 1722:24]
  reg  s_reg_1_0; // @[FloatingPointDesigns.scala 1722:24]
  reg  s_reg_1_1; // @[FloatingPointDesigns.scala 1722:24]
  reg  s_reg_2_0; // @[FloatingPointDesigns.scala 1722:24]
  reg  s_reg_2_1; // @[FloatingPointDesigns.scala 1722:24]
  reg  s_reg_3_0; // @[FloatingPointDesigns.scala 1722:24]
  reg  s_reg_3_1; // @[FloatingPointDesigns.scala 1722:24]
  reg  s_reg_4_0; // @[FloatingPointDesigns.scala 1722:24]
  reg  s_reg_4_1; // @[FloatingPointDesigns.scala 1722:24]
  reg [7:0] exp_reg_0_0; // @[FloatingPointDesigns.scala 1723:26]
  reg [7:0] exp_reg_0_1; // @[FloatingPointDesigns.scala 1723:26]
  reg [7:0] exp_reg_1_0; // @[FloatingPointDesigns.scala 1723:26]
  reg [7:0] exp_reg_1_1; // @[FloatingPointDesigns.scala 1723:26]
  reg [7:0] exp_reg_2_0; // @[FloatingPointDesigns.scala 1723:26]
  reg [7:0] exp_reg_2_1; // @[FloatingPointDesigns.scala 1723:26]
  reg [7:0] exp_reg_3_0; // @[FloatingPointDesigns.scala 1723:26]
  reg [7:0] exp_reg_3_1; // @[FloatingPointDesigns.scala 1723:26]
  reg [7:0] exp_reg_4_0; // @[FloatingPointDesigns.scala 1723:26]
  reg [7:0] exp_reg_4_1; // @[FloatingPointDesigns.scala 1723:26]
  reg [7:0] exp_reg_5_0; // @[FloatingPointDesigns.scala 1723:26]
  reg [7:0] exp_reg_5_1; // @[FloatingPointDesigns.scala 1723:26]
  reg [7:0] exp_reg_6_0; // @[FloatingPointDesigns.scala 1723:26]
  reg [7:0] exp_reg_6_1; // @[FloatingPointDesigns.scala 1723:26]
  reg [7:0] exp_reg_7_0; // @[FloatingPointDesigns.scala 1723:26]
  reg [7:0] exp_reg_7_1; // @[FloatingPointDesigns.scala 1723:26]
  reg [7:0] exp_reg_8_0; // @[FloatingPointDesigns.scala 1723:26]
  reg [7:0] exp_reg_8_1; // @[FloatingPointDesigns.scala 1723:26]
  reg [23:0] new_frac_reg_0_0; // @[FloatingPointDesigns.scala 1724:31]
  reg [23:0] new_frac_reg_0_1; // @[FloatingPointDesigns.scala 1724:31]
  reg [23:0] new_frac_reg_1_0; // @[FloatingPointDesigns.scala 1724:31]
  reg [23:0] new_frac_reg_1_1; // @[FloatingPointDesigns.scala 1724:31]
  reg [47:0] multipplier_out_s_reg_0; // @[FloatingPointDesigns.scala 1730:40]
  reg [47:0] multipplier_out_s_reg_1; // @[FloatingPointDesigns.scala 1730:40]
  reg [47:0] multipplier_out_s_reg_2; // @[FloatingPointDesigns.scala 1730:40]
  reg [47:0] multipplier_out_s_reg_3; // @[FloatingPointDesigns.scala 1730:40]
  reg [47:0] multipplier_out_s_reg_4; // @[FloatingPointDesigns.scala 1730:40]
  reg [47:0] multipplier_out_s_reg_5; // @[FloatingPointDesigns.scala 1730:40]
  reg [7:0] subber_out_s_reg_0; // @[FloatingPointDesigns.scala 1738:35]
  reg [7:0] complementN_out_reg_0; // @[FloatingPointDesigns.scala 1745:38]
  reg [7:0] complementN_out_reg_1; // @[FloatingPointDesigns.scala 1745:38]
  reg [7:0] complementN_out_reg_2; // @[FloatingPointDesigns.scala 1745:38]
  wire  new_s = s_reg_4_0 ^ s_reg_4_1; // @[FloatingPointDesigns.scala 1748:26]
  reg  new_s_reg_0; // @[FloatingPointDesigns.scala 1750:28]
  reg  new_s_reg_1; // @[FloatingPointDesigns.scala 1750:28]
  reg  new_s_reg_2; // @[FloatingPointDesigns.scala 1750:28]
  reg  new_s_reg_3; // @[FloatingPointDesigns.scala 1750:28]
  wire  is_exp1_neg_wire = exp_reg_5_1 < 8'h7f; // @[FloatingPointDesigns.scala 1753:40]
  reg  is_exp1_neg_reg_0; // @[FloatingPointDesigns.scala 1755:34]
  reg  is_exp1_neg_reg_1; // @[FloatingPointDesigns.scala 1755:34]
  wire [7:0] _adderN_io_in_a_T_1 = exp_reg_6_0 + 8'h1; // @[FloatingPointDesigns.scala 1763:39]
  reg [7:0] adderN_out_s_reg_0; // @[FloatingPointDesigns.scala 1770:35]
  reg  adderN_out_c_reg_0; // @[FloatingPointDesigns.scala 1771:35]
  reg [7:0] new_exp_reg_0; // @[FloatingPointDesigns.scala 1773:30]
  reg [22:0] new_mant_reg_0; // @[FloatingPointDesigns.scala 1774:31]
  reg [31:0] reg_out_s; // @[FloatingPointDesigns.scala 1776:28]
  wire  _new_exp_reg_0_T_1 = ~adderN_out_c_reg_0; // @[FloatingPointDesigns.scala 1780:55]
  wire [7:0] _new_exp_reg_0_T_2 = ~adderN_out_c_reg_0 ? 8'h1 : adderN_out_s_reg_0; // @[FloatingPointDesigns.scala 1780:54]
  wire  _new_exp_reg_0_T_5 = adderN_out_c_reg_0 | adderN_out_s_reg_0 > 8'hfe; // @[FloatingPointDesigns.scala 1780:142]
  wire [7:0] _new_exp_reg_0_T_6 = adderN_out_c_reg_0 | adderN_out_s_reg_0 > 8'hfe ? 8'hfe : adderN_out_s_reg_0; // @[FloatingPointDesigns.scala 1780:114]
  wire [7:0] _new_exp_reg_0_T_7 = is_exp1_neg_reg_1 ? _new_exp_reg_0_T_2 : _new_exp_reg_0_T_6; // @[FloatingPointDesigns.scala 1780:30]
  wire [31:0] _reg_out_s_T_1 = {new_s_reg_3,new_exp_reg_0,new_mant_reg_0}; // @[FloatingPointDesigns.scala 1822:53]
  wire [7:0] exp_0 = _GEN_1[7:0]; // @[FloatingPointDesigns.scala 1696:19]
  wire [7:0] exp_1 = _GEN_3[7:0]; // @[FloatingPointDesigns.scala 1696:19]
  wire [47:0] _GEN_17 = multiplier_io_out_s; // @[FloatingPointDesigns.scala 1778:19 1790:32 1730:40]
  wire [7:0] _GEN_18 = subber_io_out_s; // @[FloatingPointDesigns.scala 1778:19 1791:27 1738:35]
  wire [7:0] _GEN_20 = complementN_io_out; // @[FloatingPointDesigns.scala 1778:19 1793:30 1745:38]
  wire [7:0] _GEN_23 = adderN_io_out_s; // @[FloatingPointDesigns.scala 1778:19 1796:27 1770:35]
  wire  _GEN_24 = adderN_io_out_c; // @[FloatingPointDesigns.scala 1778:19 1797:27 1771:35]
  multiplier multiplier ( // @[FloatingPointDesigns.scala 1726:28]
    .io_in_a(multiplier_io_in_a),
    .io_in_b(multiplier_io_in_b),
    .io_out_s(multiplier_io_out_s)
  );
  full_subber subber ( // @[FloatingPointDesigns.scala 1733:24]
    .io_in_a(subber_io_in_a),
    .io_in_b(subber_io_in_b),
    .io_out_s(subber_io_out_s),
    .io_out_c(subber_io_out_c)
  );
  twoscomplement complementN ( // @[FloatingPointDesigns.scala 1742:29]
    .io_in(complementN_io_in),
    .io_out(complementN_io_out)
  );
  full_adder adderN ( // @[FloatingPointDesigns.scala 1759:24]
    .io_in_a(adderN_io_in_a),
    .io_in_b(adderN_io_in_b),
    .io_out_s(adderN_io_out_s),
    .io_out_c(adderN_io_out_c)
  );
  assign io_out_s = reg_out_s; // @[FloatingPointDesigns.scala 1825:14]
  assign multiplier_io_in_a = new_frac_reg_1_0; // @[FloatingPointDesigns.scala 1727:24]
  assign multiplier_io_in_b = new_frac_reg_1_1; // @[FloatingPointDesigns.scala 1728:24]
  assign subber_io_in_a = 8'h7f; // @[FloatingPointDesigns.scala 1734:20]
  assign subber_io_in_b = exp_reg_2_1; // @[FloatingPointDesigns.scala 1735:20]
  assign complementN_io_in = subber_out_s_reg_0; // @[FloatingPointDesigns.scala 1743:23]
  assign adderN_io_in_a = multipplier_out_s_reg_4[47] ? _adderN_io_in_a_T_1 : exp_reg_6_0; // @[FloatingPointDesigns.scala 1762:70 1763:22 1766:22]
  assign adderN_io_in_b = complementN_out_reg_2; // @[FloatingPointDesigns.scala 1762:70 1764:22 1767:22]
  always @(posedge clock) begin
    if (reset) begin // @[FloatingPointDesigns.scala 1722:24]
      s_reg_0_0 <= 1'h0; // @[FloatingPointDesigns.scala 1722:24]
    end else begin
      s_reg_0_0 <= s_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1722:24]
      s_reg_0_1 <= 1'h0; // @[FloatingPointDesigns.scala 1722:24]
    end else begin
      s_reg_0_1 <= s_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1722:24]
      s_reg_1_0 <= 1'h0; // @[FloatingPointDesigns.scala 1722:24]
    end else begin
      s_reg_1_0 <= s_reg_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1722:24]
      s_reg_1_1 <= 1'h0; // @[FloatingPointDesigns.scala 1722:24]
    end else begin
      s_reg_1_1 <= s_reg_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1722:24]
      s_reg_2_0 <= 1'h0; // @[FloatingPointDesigns.scala 1722:24]
    end else begin
      s_reg_2_0 <= s_reg_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1722:24]
      s_reg_2_1 <= 1'h0; // @[FloatingPointDesigns.scala 1722:24]
    end else begin
      s_reg_2_1 <= s_reg_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1722:24]
      s_reg_3_0 <= 1'h0; // @[FloatingPointDesigns.scala 1722:24]
    end else begin
      s_reg_3_0 <= s_reg_2_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1722:24]
      s_reg_3_1 <= 1'h0; // @[FloatingPointDesigns.scala 1722:24]
    end else begin
      s_reg_3_1 <= s_reg_2_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1722:24]
      s_reg_4_0 <= 1'h0; // @[FloatingPointDesigns.scala 1722:24]
    end else begin
      s_reg_4_0 <= s_reg_3_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1722:24]
      s_reg_4_1 <= 1'h0; // @[FloatingPointDesigns.scala 1722:24]
    end else begin
      s_reg_4_1 <= s_reg_3_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_0_0 <= 8'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else begin
      exp_reg_0_0 <= exp_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_0_1 <= 8'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else begin
      exp_reg_0_1 <= exp_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_1_0 <= 8'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else begin
      exp_reg_1_0 <= exp_reg_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_1_1 <= 8'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else begin
      exp_reg_1_1 <= exp_reg_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_2_0 <= 8'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else begin
      exp_reg_2_0 <= exp_reg_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_2_1 <= 8'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else begin
      exp_reg_2_1 <= exp_reg_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_3_0 <= 8'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else begin
      exp_reg_3_0 <= exp_reg_2_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_3_1 <= 8'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else begin
      exp_reg_3_1 <= exp_reg_2_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_4_0 <= 8'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else begin
      exp_reg_4_0 <= exp_reg_3_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_4_1 <= 8'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else begin
      exp_reg_4_1 <= exp_reg_3_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_5_0 <= 8'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else begin
      exp_reg_5_0 <= exp_reg_4_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_5_1 <= 8'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else begin
      exp_reg_5_1 <= exp_reg_4_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_6_0 <= 8'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else begin
      exp_reg_6_0 <= exp_reg_5_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_6_1 <= 8'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else begin
      exp_reg_6_1 <= exp_reg_5_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_7_0 <= 8'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else begin
      exp_reg_7_0 <= exp_reg_6_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_7_1 <= 8'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else begin
      exp_reg_7_1 <= exp_reg_6_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_8_0 <= 8'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else begin
      exp_reg_8_0 <= exp_reg_7_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_8_1 <= 8'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else begin
      exp_reg_8_1 <= exp_reg_7_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1724:31]
      new_frac_reg_0_0 <= 24'h0; // @[FloatingPointDesigns.scala 1724:31]
    end else begin
      new_frac_reg_0_0 <= new_frac_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1724:31]
      new_frac_reg_0_1 <= 24'h0; // @[FloatingPointDesigns.scala 1724:31]
    end else begin
      new_frac_reg_0_1 <= new_frac_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1724:31]
      new_frac_reg_1_0 <= 24'h0; // @[FloatingPointDesigns.scala 1724:31]
    end else begin
      new_frac_reg_1_0 <= new_frac_reg_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1724:31]
      new_frac_reg_1_1 <= 24'h0; // @[FloatingPointDesigns.scala 1724:31]
    end else begin
      new_frac_reg_1_1 <= new_frac_reg_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1730:40]
      multipplier_out_s_reg_0 <= 48'h0; // @[FloatingPointDesigns.scala 1730:40]
    end else begin
      multipplier_out_s_reg_0 <= _GEN_17;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1730:40]
      multipplier_out_s_reg_1 <= 48'h0; // @[FloatingPointDesigns.scala 1730:40]
    end else begin
      multipplier_out_s_reg_1 <= multipplier_out_s_reg_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1730:40]
      multipplier_out_s_reg_2 <= 48'h0; // @[FloatingPointDesigns.scala 1730:40]
    end else begin
      multipplier_out_s_reg_2 <= multipplier_out_s_reg_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1730:40]
      multipplier_out_s_reg_3 <= 48'h0; // @[FloatingPointDesigns.scala 1730:40]
    end else begin
      multipplier_out_s_reg_3 <= multipplier_out_s_reg_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1730:40]
      multipplier_out_s_reg_4 <= 48'h0; // @[FloatingPointDesigns.scala 1730:40]
    end else begin
      multipplier_out_s_reg_4 <= multipplier_out_s_reg_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1730:40]
      multipplier_out_s_reg_5 <= 48'h0; // @[FloatingPointDesigns.scala 1730:40]
    end else begin
      multipplier_out_s_reg_5 <= multipplier_out_s_reg_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1738:35]
      subber_out_s_reg_0 <= 8'h0; // @[FloatingPointDesigns.scala 1738:35]
    end else begin
      subber_out_s_reg_0 <= _GEN_18;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1745:38]
      complementN_out_reg_0 <= 8'h0; // @[FloatingPointDesigns.scala 1745:38]
    end else begin
      complementN_out_reg_0 <= _GEN_20;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1745:38]
      complementN_out_reg_1 <= 8'h0; // @[FloatingPointDesigns.scala 1745:38]
    end else begin
      complementN_out_reg_1 <= complementN_out_reg_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1745:38]
      complementN_out_reg_2 <= 8'h0; // @[FloatingPointDesigns.scala 1745:38]
    end else begin
      complementN_out_reg_2 <= complementN_out_reg_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1750:28]
      new_s_reg_0 <= 1'h0; // @[FloatingPointDesigns.scala 1750:28]
    end else begin
      new_s_reg_0 <= new_s;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1750:28]
      new_s_reg_1 <= 1'h0; // @[FloatingPointDesigns.scala 1750:28]
    end else begin
      new_s_reg_1 <= new_s_reg_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1750:28]
      new_s_reg_2 <= 1'h0; // @[FloatingPointDesigns.scala 1750:28]
    end else begin
      new_s_reg_2 <= new_s_reg_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1750:28]
      new_s_reg_3 <= 1'h0; // @[FloatingPointDesigns.scala 1750:28]
    end else begin
      new_s_reg_3 <= new_s_reg_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1755:34]
      is_exp1_neg_reg_0 <= 1'h0; // @[FloatingPointDesigns.scala 1755:34]
    end else begin
      is_exp1_neg_reg_0 <= is_exp1_neg_wire;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1755:34]
      is_exp1_neg_reg_1 <= 1'h0; // @[FloatingPointDesigns.scala 1755:34]
    end else begin
      is_exp1_neg_reg_1 <= is_exp1_neg_reg_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1770:35]
      adderN_out_s_reg_0 <= 8'h0; // @[FloatingPointDesigns.scala 1770:35]
    end else begin
      adderN_out_s_reg_0 <= _GEN_23;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1771:35]
      adderN_out_c_reg_0 <= 1'h0; // @[FloatingPointDesigns.scala 1771:35]
    end else begin
      adderN_out_c_reg_0 <= _GEN_24;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1773:30]
      new_exp_reg_0 <= 8'h0; // @[FloatingPointDesigns.scala 1773:30]
    end else if (multipplier_out_s_reg_5[47]) begin // @[FloatingPointDesigns.scala 1779:72]
      new_exp_reg_0 <= _new_exp_reg_0_T_7; // @[FloatingPointDesigns.scala 1780:24]
    end else begin
      new_exp_reg_0 <= _new_exp_reg_0_T_7; // @[FloatingPointDesigns.scala 1783:24]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1774:31]
      new_mant_reg_0 <= 23'h0; // @[FloatingPointDesigns.scala 1774:31]
    end else if (multipplier_out_s_reg_5[47]) begin // @[FloatingPointDesigns.scala 1779:72]
      if (is_exp1_neg_reg_1) begin // @[FloatingPointDesigns.scala 1781:31]
        if (_new_exp_reg_0_T_1) begin // @[FloatingPointDesigns.scala 1781:55]
          new_mant_reg_0 <= 23'h0;
        end else begin
          new_mant_reg_0 <= multipplier_out_s_reg_5[46:24];
        end
      end else if (_new_exp_reg_0_T_5) begin // @[FloatingPointDesigns.scala 1781:160]
        new_mant_reg_0 <= 23'h7fffff;
      end else begin
        new_mant_reg_0 <= multipplier_out_s_reg_5[46:24];
      end
    end else if (is_exp1_neg_reg_1) begin // @[FloatingPointDesigns.scala 1784:31]
      if (_new_exp_reg_0_T_1) begin // @[FloatingPointDesigns.scala 1784:55]
        new_mant_reg_0 <= 23'h0;
      end else begin
        new_mant_reg_0 <= multipplier_out_s_reg_5[45:23];
      end
    end else if (_new_exp_reg_0_T_5) begin // @[FloatingPointDesigns.scala 1784:156]
      new_mant_reg_0 <= 23'h7fffff;
    end else begin
      new_mant_reg_0 <= multipplier_out_s_reg_5[45:23];
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1776:28]
      reg_out_s <= 32'h0; // @[FloatingPointDesigns.scala 1776:28]
    end else if (exp_reg_8_0 == 8'h0 | exp_reg_8_1 == 8'h0) begin // @[FloatingPointDesigns.scala 1819:60]
      reg_out_s <= 32'h0; // @[FloatingPointDesigns.scala 1820:19]
    end else begin
      reg_out_s <= _reg_out_s_T_1; // @[FloatingPointDesigns.scala 1822:19]
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
  s_reg_0_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  s_reg_0_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  s_reg_1_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  s_reg_1_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  s_reg_2_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  s_reg_2_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  s_reg_3_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  s_reg_3_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  s_reg_4_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  s_reg_4_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  exp_reg_0_0 = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  exp_reg_0_1 = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  exp_reg_1_0 = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  exp_reg_1_1 = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  exp_reg_2_0 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  exp_reg_2_1 = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  exp_reg_3_0 = _RAND_16[7:0];
  _RAND_17 = {1{`RANDOM}};
  exp_reg_3_1 = _RAND_17[7:0];
  _RAND_18 = {1{`RANDOM}};
  exp_reg_4_0 = _RAND_18[7:0];
  _RAND_19 = {1{`RANDOM}};
  exp_reg_4_1 = _RAND_19[7:0];
  _RAND_20 = {1{`RANDOM}};
  exp_reg_5_0 = _RAND_20[7:0];
  _RAND_21 = {1{`RANDOM}};
  exp_reg_5_1 = _RAND_21[7:0];
  _RAND_22 = {1{`RANDOM}};
  exp_reg_6_0 = _RAND_22[7:0];
  _RAND_23 = {1{`RANDOM}};
  exp_reg_6_1 = _RAND_23[7:0];
  _RAND_24 = {1{`RANDOM}};
  exp_reg_7_0 = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  exp_reg_7_1 = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  exp_reg_8_0 = _RAND_26[7:0];
  _RAND_27 = {1{`RANDOM}};
  exp_reg_8_1 = _RAND_27[7:0];
  _RAND_28 = {1{`RANDOM}};
  new_frac_reg_0_0 = _RAND_28[23:0];
  _RAND_29 = {1{`RANDOM}};
  new_frac_reg_0_1 = _RAND_29[23:0];
  _RAND_30 = {1{`RANDOM}};
  new_frac_reg_1_0 = _RAND_30[23:0];
  _RAND_31 = {1{`RANDOM}};
  new_frac_reg_1_1 = _RAND_31[23:0];
  _RAND_32 = {2{`RANDOM}};
  multipplier_out_s_reg_0 = _RAND_32[47:0];
  _RAND_33 = {2{`RANDOM}};
  multipplier_out_s_reg_1 = _RAND_33[47:0];
  _RAND_34 = {2{`RANDOM}};
  multipplier_out_s_reg_2 = _RAND_34[47:0];
  _RAND_35 = {2{`RANDOM}};
  multipplier_out_s_reg_3 = _RAND_35[47:0];
  _RAND_36 = {2{`RANDOM}};
  multipplier_out_s_reg_4 = _RAND_36[47:0];
  _RAND_37 = {2{`RANDOM}};
  multipplier_out_s_reg_5 = _RAND_37[47:0];
  _RAND_38 = {1{`RANDOM}};
  subber_out_s_reg_0 = _RAND_38[7:0];
  _RAND_39 = {1{`RANDOM}};
  complementN_out_reg_0 = _RAND_39[7:0];
  _RAND_40 = {1{`RANDOM}};
  complementN_out_reg_1 = _RAND_40[7:0];
  _RAND_41 = {1{`RANDOM}};
  complementN_out_reg_2 = _RAND_41[7:0];
  _RAND_42 = {1{`RANDOM}};
  new_s_reg_0 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  new_s_reg_1 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  new_s_reg_2 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  new_s_reg_3 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  is_exp1_neg_reg_0 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  is_exp1_neg_reg_1 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  adderN_out_s_reg_0 = _RAND_48[7:0];
  _RAND_49 = {1{`RANDOM}};
  adderN_out_c_reg_0 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  new_exp_reg_0 = _RAND_50[7:0];
  _RAND_51 = {1{`RANDOM}};
  new_mant_reg_0 = _RAND_51[22:0];
  _RAND_52 = {1{`RANDOM}};
  reg_out_s = _RAND_52[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module full_adder_6(
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
module FP_adder_13ccs(
  input         clock,
  input         reset,
  input  [31:0] io_in_a,
  input  [31:0] io_in_b,
  output [31:0] io_out_s
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
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
`endif // RANDOMIZE_REG_INIT
  wire [7:0] subber_io_in_a; // @[FloatingPointDesigns.scala 1461:24]
  wire [7:0] subber_io_in_b; // @[FloatingPointDesigns.scala 1461:24]
  wire [7:0] subber_io_out_s; // @[FloatingPointDesigns.scala 1461:24]
  wire  subber_io_out_c; // @[FloatingPointDesigns.scala 1461:24]
  wire [23:0] adder_io_in_a; // @[FloatingPointDesigns.scala 1467:23]
  wire [23:0] adder_io_in_b; // @[FloatingPointDesigns.scala 1467:23]
  wire [23:0] adder_io_out_s; // @[FloatingPointDesigns.scala 1467:23]
  wire  adder_io_out_c; // @[FloatingPointDesigns.scala 1467:23]
  wire [7:0] subber2_io_in_a; // @[FloatingPointDesigns.scala 1528:25]
  wire [7:0] subber2_io_in_b; // @[FloatingPointDesigns.scala 1528:25]
  wire [7:0] subber2_io_out_s; // @[FloatingPointDesigns.scala 1528:25]
  wire  subber2_io_out_c; // @[FloatingPointDesigns.scala 1528:25]
  wire  sign_0 = io_in_a[31]; // @[FloatingPointDesigns.scala 1390:23]
  wire  sign_1 = io_in_b[31]; // @[FloatingPointDesigns.scala 1391:23]
  wire [8:0] _T_2 = 9'h100 - 9'h2; // @[FloatingPointDesigns.scala 1394:64]
  wire [8:0] _GEN_167 = {{1'd0}, io_in_a[30:23]}; // @[FloatingPointDesigns.scala 1394:36]
  wire [7:0] _GEN_0 = io_in_a[30:23] < 8'h1 ? 8'h1 : io_in_a[30:23]; // @[FloatingPointDesigns.scala 1396:46 1397:14 1399:14]
  wire [8:0] _GEN_1 = _GEN_167 > _T_2 ? _T_2 : {{1'd0}, _GEN_0}; // @[FloatingPointDesigns.scala 1394:71 1395:14]
  wire [8:0] _GEN_168 = {{1'd0}, io_in_b[30:23]}; // @[FloatingPointDesigns.scala 1401:36]
  wire [7:0] _GEN_2 = io_in_b[30:23] < 8'h1 ? 8'h1 : io_in_b[30:23]; // @[FloatingPointDesigns.scala 1403:45 1404:14 1406:14]
  wire [8:0] _GEN_3 = _GEN_168 > _T_2 ? _T_2 : {{1'd0}, _GEN_2}; // @[FloatingPointDesigns.scala 1401:71 1402:14]
  wire [22:0] frac_0 = io_in_a[22:0]; // @[FloatingPointDesigns.scala 1411:23]
  wire [22:0] frac_1 = io_in_b[22:0]; // @[FloatingPointDesigns.scala 1412:23]
  wire [23:0] whole_frac_0 = {1'h1,frac_0}; // @[FloatingPointDesigns.scala 1416:26]
  wire [23:0] whole_frac_1 = {1'h1,frac_1}; // @[FloatingPointDesigns.scala 1417:26]
  reg  sign_reg_0_0; // @[FloatingPointDesigns.scala 1419:28]
  reg  sign_reg_0_1; // @[FloatingPointDesigns.scala 1419:28]
  reg  sign_reg_1_0; // @[FloatingPointDesigns.scala 1419:28]
  reg  sign_reg_1_1; // @[FloatingPointDesigns.scala 1419:28]
  reg  sign_reg_2_0; // @[FloatingPointDesigns.scala 1419:28]
  reg  sign_reg_2_1; // @[FloatingPointDesigns.scala 1419:28]
  reg  sign_reg_3_0; // @[FloatingPointDesigns.scala 1419:28]
  reg  sign_reg_3_1; // @[FloatingPointDesigns.scala 1419:28]
  reg  sign_reg_4_0; // @[FloatingPointDesigns.scala 1419:28]
  reg  sign_reg_4_1; // @[FloatingPointDesigns.scala 1419:28]
  reg  sign_reg_5_0; // @[FloatingPointDesigns.scala 1419:28]
  reg  sign_reg_5_1; // @[FloatingPointDesigns.scala 1419:28]
  reg  sign_reg_6_0; // @[FloatingPointDesigns.scala 1419:28]
  reg  sign_reg_6_1; // @[FloatingPointDesigns.scala 1419:28]
  reg  sign_reg_7_0; // @[FloatingPointDesigns.scala 1419:28]
  reg  sign_reg_7_1; // @[FloatingPointDesigns.scala 1419:28]
  reg  sign_reg_8_0; // @[FloatingPointDesigns.scala 1419:28]
  reg  sign_reg_8_1; // @[FloatingPointDesigns.scala 1419:28]
  reg  sign_reg_9_0; // @[FloatingPointDesigns.scala 1419:28]
  reg  sign_reg_9_1; // @[FloatingPointDesigns.scala 1419:28]
  reg  sign_reg_10_0; // @[FloatingPointDesigns.scala 1419:28]
  reg  sign_reg_10_1; // @[FloatingPointDesigns.scala 1419:28]
  reg [7:0] exp_reg_0_0; // @[FloatingPointDesigns.scala 1420:28]
  reg [7:0] exp_reg_0_1; // @[FloatingPointDesigns.scala 1420:28]
  reg [7:0] exp_reg_1_0; // @[FloatingPointDesigns.scala 1420:28]
  reg [7:0] exp_reg_1_1; // @[FloatingPointDesigns.scala 1420:28]
  reg [7:0] exp_reg_2_0; // @[FloatingPointDesigns.scala 1420:28]
  reg [7:0] exp_reg_2_1; // @[FloatingPointDesigns.scala 1420:28]
  reg [22:0] frac_reg_0_0; // @[FloatingPointDesigns.scala 1421:28]
  reg [22:0] frac_reg_0_1; // @[FloatingPointDesigns.scala 1421:28]
  reg [22:0] frac_reg_1_0; // @[FloatingPointDesigns.scala 1421:28]
  reg [22:0] frac_reg_1_1; // @[FloatingPointDesigns.scala 1421:28]
  reg [22:0] frac_reg_2_0; // @[FloatingPointDesigns.scala 1421:28]
  reg [22:0] frac_reg_2_1; // @[FloatingPointDesigns.scala 1421:28]
  reg [23:0] wfrac_reg_0_0; // @[FloatingPointDesigns.scala 1422:28]
  reg [23:0] wfrac_reg_0_1; // @[FloatingPointDesigns.scala 1422:28]
  reg [23:0] wfrac_reg_1_0; // @[FloatingPointDesigns.scala 1422:28]
  reg [23:0] wfrac_reg_1_1; // @[FloatingPointDesigns.scala 1422:28]
  reg [23:0] wfrac_reg_2_0; // @[FloatingPointDesigns.scala 1422:28]
  reg [23:0] wfrac_reg_2_1; // @[FloatingPointDesigns.scala 1422:28]
  reg [7:0] subber_out_s_reg_0; // @[FloatingPointDesigns.scala 1424:35]
  reg [7:0] subber_out_s_reg_1; // @[FloatingPointDesigns.scala 1424:35]
  reg  subber_out_c_reg_0; // @[FloatingPointDesigns.scala 1425:35]
  reg  subber_out_c_reg_1; // @[FloatingPointDesigns.scala 1425:35]
  reg [23:0] wire_temp_add_in_reg_0_0; // @[FloatingPointDesigns.scala 1427:39]
  reg [23:0] wire_temp_add_in_reg_0_1; // @[FloatingPointDesigns.scala 1427:39]
  reg [23:0] wire_temp_add_in_reg_1_0; // @[FloatingPointDesigns.scala 1427:39]
  reg [23:0] wire_temp_add_in_reg_1_1; // @[FloatingPointDesigns.scala 1427:39]
  reg  ref_s_reg_0; // @[FloatingPointDesigns.scala 1429:31]
  reg  ref_s_reg_1; // @[FloatingPointDesigns.scala 1429:31]
  reg  ref_s_reg_2; // @[FloatingPointDesigns.scala 1429:31]
  reg  ref_s_reg_3; // @[FloatingPointDesigns.scala 1429:31]
  reg  ref_s_reg_4; // @[FloatingPointDesigns.scala 1429:31]
  reg  ref_s_reg_5; // @[FloatingPointDesigns.scala 1429:31]
  reg  ref_s_reg_6; // @[FloatingPointDesigns.scala 1429:31]
  reg  ref_s_reg_7; // @[FloatingPointDesigns.scala 1429:31]
  reg [22:0] ref_frac_reg_0; // @[FloatingPointDesigns.scala 1430:31]
  reg [22:0] ref_frac_reg_1; // @[FloatingPointDesigns.scala 1430:31]
  reg [22:0] ref_frac_reg_2; // @[FloatingPointDesigns.scala 1430:31]
  reg [22:0] ref_frac_reg_3; // @[FloatingPointDesigns.scala 1430:31]
  reg [22:0] ref_frac_reg_4; // @[FloatingPointDesigns.scala 1430:31]
  reg [22:0] ref_frac_reg_5; // @[FloatingPointDesigns.scala 1430:31]
  reg [22:0] ref_frac_reg_6; // @[FloatingPointDesigns.scala 1430:31]
  reg [22:0] ref_frac_reg_7; // @[FloatingPointDesigns.scala 1430:31]
  reg [7:0] ref_exp_reg_0; // @[FloatingPointDesigns.scala 1431:31]
  reg [7:0] ref_exp_reg_1; // @[FloatingPointDesigns.scala 1431:31]
  reg [7:0] ref_exp_reg_2; // @[FloatingPointDesigns.scala 1431:31]
  reg [7:0] ref_exp_reg_3; // @[FloatingPointDesigns.scala 1431:31]
  reg [7:0] ref_exp_reg_4; // @[FloatingPointDesigns.scala 1431:31]
  reg [7:0] ref_exp_reg_5; // @[FloatingPointDesigns.scala 1431:31]
  reg [7:0] ref_exp_reg_6; // @[FloatingPointDesigns.scala 1431:31]
  reg [7:0] ref_exp_reg_7; // @[FloatingPointDesigns.scala 1431:31]
  reg [7:0] sub_exp_reg_0; // @[FloatingPointDesigns.scala 1432:31]
  reg [7:0] sub_exp_reg_1; // @[FloatingPointDesigns.scala 1432:31]
  reg [7:0] sub_exp_reg_2; // @[FloatingPointDesigns.scala 1432:31]
  reg [7:0] sub_exp_reg_3; // @[FloatingPointDesigns.scala 1432:31]
  reg [7:0] sub_exp_reg_4; // @[FloatingPointDesigns.scala 1432:31]
  reg [7:0] sub_exp_reg_5; // @[FloatingPointDesigns.scala 1432:31]
  reg [7:0] sub_exp_reg_6; // @[FloatingPointDesigns.scala 1432:31]
  reg [7:0] sub_exp_reg_7; // @[FloatingPointDesigns.scala 1432:31]
  reg [23:0] adder_io_out_s_reg_0; // @[FloatingPointDesigns.scala 1434:37]
  reg [23:0] adder_io_out_s_reg_1; // @[FloatingPointDesigns.scala 1434:37]
  reg [23:0] adder_io_out_s_reg_2; // @[FloatingPointDesigns.scala 1434:37]
  reg  adder_io_out_c_reg_0; // @[FloatingPointDesigns.scala 1435:37]
  reg  new_s_reg_0; // @[FloatingPointDesigns.scala 1437:35]
  reg  new_s_reg_1; // @[FloatingPointDesigns.scala 1437:35]
  reg  new_s_reg_2; // @[FloatingPointDesigns.scala 1437:35]
  reg  new_s_reg_3; // @[FloatingPointDesigns.scala 1437:35]
  reg  new_s_reg_4; // @[FloatingPointDesigns.scala 1437:35]
  reg  new_s_reg_5; // @[FloatingPointDesigns.scala 1437:35]
  reg [22:0] new_out_frac_reg_0; // @[FloatingPointDesigns.scala 1438:35]
  reg [7:0] new_out_exp_reg_0; // @[FloatingPointDesigns.scala 1439:35]
  reg  E_reg_0; // @[FloatingPointDesigns.scala 1440:24]
  reg  E_reg_1; // @[FloatingPointDesigns.scala 1440:24]
  reg  E_reg_2; // @[FloatingPointDesigns.scala 1440:24]
  reg  E_reg_3; // @[FloatingPointDesigns.scala 1440:24]
  reg  E_reg_4; // @[FloatingPointDesigns.scala 1440:24]
  reg  D_reg_0; // @[FloatingPointDesigns.scala 1441:24]
  reg  D_reg_1; // @[FloatingPointDesigns.scala 1441:24]
  reg  D_reg_2; // @[FloatingPointDesigns.scala 1441:24]
  reg  D_reg_3; // @[FloatingPointDesigns.scala 1441:24]
  reg  D_reg_4; // @[FloatingPointDesigns.scala 1441:24]
  reg [23:0] adder_result_reg_0; // @[FloatingPointDesigns.scala 1443:35]
  reg [23:0] adder_result_reg_1; // @[FloatingPointDesigns.scala 1443:35]
  reg [23:0] adder_result_reg_2; // @[FloatingPointDesigns.scala 1443:35]
  reg [5:0] leadingOne_reg_0; // @[FloatingPointDesigns.scala 1445:33]
  reg [5:0] leadingOne_reg_1; // @[FloatingPointDesigns.scala 1445:33]
  reg [31:0] io_in_a_reg_0; // @[FloatingPointDesigns.scala 1447:30]
  reg [31:0] io_in_a_reg_1; // @[FloatingPointDesigns.scala 1447:30]
  reg [31:0] io_in_a_reg_2; // @[FloatingPointDesigns.scala 1447:30]
  reg [31:0] io_in_a_reg_3; // @[FloatingPointDesigns.scala 1447:30]
  reg [31:0] io_in_a_reg_4; // @[FloatingPointDesigns.scala 1447:30]
  reg [31:0] io_in_a_reg_5; // @[FloatingPointDesigns.scala 1447:30]
  reg [31:0] io_in_a_reg_6; // @[FloatingPointDesigns.scala 1447:30]
  reg [31:0] io_in_a_reg_7; // @[FloatingPointDesigns.scala 1447:30]
  reg [31:0] io_in_a_reg_8; // @[FloatingPointDesigns.scala 1447:30]
  reg [31:0] io_in_a_reg_9; // @[FloatingPointDesigns.scala 1447:30]
  reg [31:0] io_in_a_reg_10; // @[FloatingPointDesigns.scala 1447:30]
  reg [31:0] io_in_b_reg_0; // @[FloatingPointDesigns.scala 1448:30]
  reg [31:0] io_in_b_reg_1; // @[FloatingPointDesigns.scala 1448:30]
  reg [31:0] io_in_b_reg_2; // @[FloatingPointDesigns.scala 1448:30]
  reg [31:0] io_in_b_reg_3; // @[FloatingPointDesigns.scala 1448:30]
  reg [31:0] io_in_b_reg_4; // @[FloatingPointDesigns.scala 1448:30]
  reg [31:0] io_in_b_reg_5; // @[FloatingPointDesigns.scala 1448:30]
  reg [31:0] io_in_b_reg_6; // @[FloatingPointDesigns.scala 1448:30]
  reg [31:0] io_in_b_reg_7; // @[FloatingPointDesigns.scala 1448:30]
  reg [31:0] io_in_b_reg_8; // @[FloatingPointDesigns.scala 1448:30]
  reg [31:0] io_in_b_reg_9; // @[FloatingPointDesigns.scala 1448:30]
  reg [31:0] io_in_b_reg_10; // @[FloatingPointDesigns.scala 1448:30]
  reg [7:0] subber2_out_s_reg_0; // @[FloatingPointDesigns.scala 1450:36]
  reg  subber2_out_c_reg_0; // @[FloatingPointDesigns.scala 1451:36]
  reg [7:0] cmpl_subber_out_s_reg_0; // @[FloatingPointDesigns.scala 1472:40]
  wire [7:0] _cmpl_subber_out_s_reg_0_T = ~subber_out_s_reg_0; // @[FloatingPointDesigns.scala 1474:41]
  wire [7:0] _cmpl_subber_out_s_reg_0_T_2 = 8'h1 + _cmpl_subber_out_s_reg_0_T; // @[FloatingPointDesigns.scala 1474:39]
  wire [23:0] _wire_temp_add_in_0_T = wfrac_reg_2_0 >> cmpl_subber_out_s_reg_0; // @[FloatingPointDesigns.scala 1482:46]
  wire [23:0] _wire_temp_add_in_1_T = wfrac_reg_2_1 >> subber_out_s_reg_1; // @[FloatingPointDesigns.scala 1490:46]
  reg [23:0] cmpl_wire_temp_add_in_reg_0_0; // @[FloatingPointDesigns.scala 1493:44]
  reg [23:0] cmpl_wire_temp_add_in_reg_0_1; // @[FloatingPointDesigns.scala 1493:44]
  wire [23:0] _cmpl_wire_temp_add_in_reg_0_0_T = ~wire_temp_add_in_reg_0_0; // @[FloatingPointDesigns.scala 1495:48]
  wire [23:0] _cmpl_wire_temp_add_in_reg_0_0_T_2 = 24'h1 + _cmpl_wire_temp_add_in_reg_0_0_T; // @[FloatingPointDesigns.scala 1495:46]
  wire [23:0] _cmpl_wire_temp_add_in_reg_0_1_T = ~wire_temp_add_in_reg_0_1; // @[FloatingPointDesigns.scala 1496:48]
  wire [23:0] _cmpl_wire_temp_add_in_reg_0_1_T_2 = 24'h1 + _cmpl_wire_temp_add_in_reg_0_1_T; // @[FloatingPointDesigns.scala 1496:46]
  wire [1:0] _adder_io_in_a_T = {sign_reg_4_1,sign_reg_4_0}; // @[FloatingPointDesigns.scala 1499:38]
  wire  _new_s_T = ~adder_io_out_c_reg_0; // @[FloatingPointDesigns.scala 1506:15]
  wire  new_s = ~adder_io_out_c_reg_0 & (sign_reg_5_0 | sign_reg_5_1) | sign_reg_5_0 & sign_reg_5_1; // @[FloatingPointDesigns.scala 1506:75]
  wire  _D_T_1 = sign_reg_5_0 ^ sign_reg_5_1; // @[FloatingPointDesigns.scala 1513:53]
  wire  D = _new_s_T | sign_reg_5_0 ^ sign_reg_5_1; // @[FloatingPointDesigns.scala 1513:35]
  wire  E = _new_s_T & ~adder_io_out_s_reg_0[23] | _new_s_T & ~_D_T_1 | adder_io_out_c_reg_0 & adder_io_out_s_reg_0[23]
     & _D_T_1; // @[FloatingPointDesigns.scala 1515:134]
  reg [23:0] cmpl_adder_io_out_s_reg_0; // @[FloatingPointDesigns.scala 1517:42]
  wire [23:0] _cmpl_adder_io_out_s_reg_0_T = ~adder_io_out_s_reg_1; // @[FloatingPointDesigns.scala 1520:43]
  wire [23:0] _cmpl_adder_io_out_s_reg_0_T_2 = 24'h1 + _cmpl_adder_io_out_s_reg_0_T; // @[FloatingPointDesigns.scala 1520:41]
  wire [1:0] _adder_result_T = {sign_reg_7_1,sign_reg_7_0}; // @[FloatingPointDesigns.scala 1524:53]
  wire [1:0] _leadingOne_T_25 = adder_result_reg_0[2] ? 2'h2 : {{1'd0}, adder_result_reg_0[1]}; // @[FloatingPointDesigns.scala 1527:70]
  wire [1:0] _leadingOne_T_26 = adder_result_reg_0[3] ? 2'h3 : _leadingOne_T_25; // @[FloatingPointDesigns.scala 1527:70]
  wire [2:0] _leadingOne_T_27 = adder_result_reg_0[4] ? 3'h4 : {{1'd0}, _leadingOne_T_26}; // @[FloatingPointDesigns.scala 1527:70]
  wire [2:0] _leadingOne_T_28 = adder_result_reg_0[5] ? 3'h5 : _leadingOne_T_27; // @[FloatingPointDesigns.scala 1527:70]
  wire [2:0] _leadingOne_T_29 = adder_result_reg_0[6] ? 3'h6 : _leadingOne_T_28; // @[FloatingPointDesigns.scala 1527:70]
  wire [2:0] _leadingOne_T_30 = adder_result_reg_0[7] ? 3'h7 : _leadingOne_T_29; // @[FloatingPointDesigns.scala 1527:70]
  wire [3:0] _leadingOne_T_31 = adder_result_reg_0[8] ? 4'h8 : {{1'd0}, _leadingOne_T_30}; // @[FloatingPointDesigns.scala 1527:70]
  wire [3:0] _leadingOne_T_32 = adder_result_reg_0[9] ? 4'h9 : _leadingOne_T_31; // @[FloatingPointDesigns.scala 1527:70]
  wire [3:0] _leadingOne_T_33 = adder_result_reg_0[10] ? 4'ha : _leadingOne_T_32; // @[FloatingPointDesigns.scala 1527:70]
  wire [3:0] _leadingOne_T_34 = adder_result_reg_0[11] ? 4'hb : _leadingOne_T_33; // @[FloatingPointDesigns.scala 1527:70]
  wire [3:0] _leadingOne_T_35 = adder_result_reg_0[12] ? 4'hc : _leadingOne_T_34; // @[FloatingPointDesigns.scala 1527:70]
  wire [3:0] _leadingOne_T_36 = adder_result_reg_0[13] ? 4'hd : _leadingOne_T_35; // @[FloatingPointDesigns.scala 1527:70]
  wire [3:0] _leadingOne_T_37 = adder_result_reg_0[14] ? 4'he : _leadingOne_T_36; // @[FloatingPointDesigns.scala 1527:70]
  wire [3:0] _leadingOne_T_38 = adder_result_reg_0[15] ? 4'hf : _leadingOne_T_37; // @[FloatingPointDesigns.scala 1527:70]
  wire [4:0] _leadingOne_T_39 = adder_result_reg_0[16] ? 5'h10 : {{1'd0}, _leadingOne_T_38}; // @[FloatingPointDesigns.scala 1527:70]
  wire [4:0] _leadingOne_T_40 = adder_result_reg_0[17] ? 5'h11 : _leadingOne_T_39; // @[FloatingPointDesigns.scala 1527:70]
  wire [4:0] _leadingOne_T_41 = adder_result_reg_0[18] ? 5'h12 : _leadingOne_T_40; // @[FloatingPointDesigns.scala 1527:70]
  wire [4:0] _leadingOne_T_42 = adder_result_reg_0[19] ? 5'h13 : _leadingOne_T_41; // @[FloatingPointDesigns.scala 1527:70]
  wire [4:0] _leadingOne_T_43 = adder_result_reg_0[20] ? 5'h14 : _leadingOne_T_42; // @[FloatingPointDesigns.scala 1527:70]
  wire [4:0] _leadingOne_T_44 = adder_result_reg_0[21] ? 5'h15 : _leadingOne_T_43; // @[FloatingPointDesigns.scala 1527:70]
  wire [4:0] _leadingOne_T_45 = adder_result_reg_0[22] ? 5'h16 : _leadingOne_T_44; // @[FloatingPointDesigns.scala 1527:70]
  wire [4:0] _leadingOne_T_46 = adder_result_reg_0[23] ? 5'h17 : _leadingOne_T_45; // @[FloatingPointDesigns.scala 1527:70]
  wire [5:0] leadingOne = _leadingOne_T_46 + 5'h1; // @[FloatingPointDesigns.scala 1527:77]
  wire [5:0] _subber2_io_in_b_T_1 = 6'h18 - leadingOne_reg_0; // @[FloatingPointDesigns.scala 1530:42]
  wire [7:0] exp_0 = _GEN_1[7:0]; // @[FloatingPointDesigns.scala 1392:19]
  wire [7:0] exp_1 = _GEN_3[7:0]; // @[FloatingPointDesigns.scala 1392:19]
  wire [7:0] _GEN_24 = subber_io_out_s; // @[FloatingPointDesigns.scala 1534:19 1543:27 1424:35]
  wire  _GEN_25 = subber_io_out_c; // @[FloatingPointDesigns.scala 1534:19 1544:27 1425:35]
  wire [23:0] _GEN_35 = adder_io_out_s; // @[FloatingPointDesigns.scala 1534:19 1559:29 1434:37]
  wire  _GEN_36 = adder_io_out_c; // @[FloatingPointDesigns.scala 1534:19 1560:29 1435:37]
  wire [7:0] _GEN_39 = subber2_io_out_s; // @[FloatingPointDesigns.scala 1534:19 1566:28 1450:36]
  wire  _GEN_40 = subber2_io_out_c; // @[FloatingPointDesigns.scala 1534:19 1567:28 1451:36]
  reg [31:0] reg_out_s; // @[FloatingPointDesigns.scala 1601:28]
  wire [8:0] _GEN_169 = {{1'd0}, ref_exp_reg_7}; // @[FloatingPointDesigns.scala 1618:29]
  wire [23:0] _new_out_frac_reg_0_T_2 = 24'h800000 - 24'h1; // @[FloatingPointDesigns.scala 1620:60]
  wire [7:0] _new_out_exp_reg_0_T_3 = ref_exp_reg_7 + 8'h1; // @[FloatingPointDesigns.scala 1622:48]
  wire [8:0] _GEN_142 = _GEN_169 == _T_2 ? _T_2 : {{1'd0}, _new_out_exp_reg_0_T_3}; // @[FloatingPointDesigns.scala 1618:66 1619:30 1622:30]
  wire [23:0] _GEN_143 = _GEN_169 == _T_2 ? _new_out_frac_reg_0_T_2 : {{1'd0}, adder_result_reg_2[23:1]}; // @[FloatingPointDesigns.scala 1618:66 1620:31 1623:31]
  wire [5:0] _new_out_frac_reg_0_T_6 = 6'h18 - leadingOne_reg_1; // @[FloatingPointDesigns.scala 1636:94]
  wire [85:0] _GEN_4 = {{63'd0}, adder_result_reg_2[22:0]}; // @[FloatingPointDesigns.scala 1636:73]
  wire [85:0] _new_out_frac_reg_0_T_7 = _GEN_4 << _new_out_frac_reg_0_T_6; // @[FloatingPointDesigns.scala 1636:73]
  wire [7:0] _GEN_144 = subber2_out_c_reg_0 ? 8'h1 : subber2_out_s_reg_0; // @[FloatingPointDesigns.scala 1631:46 1632:32 1635:32]
  wire [85:0] _GEN_145 = subber2_out_c_reg_0 ? 86'h0 : _new_out_frac_reg_0_T_7; // @[FloatingPointDesigns.scala 1631:46 1633:33 1636:33]
  wire [7:0] _GEN_146 = leadingOne_reg_1 == 6'h1 & adder_result_reg_2 == 24'h0 & ((sign_reg_10_0 ^ sign_reg_10_1) &
    io_in_a_reg_10[30:0] == io_in_b_reg_10[30:0]) ? 8'h0 : _GEN_144; // @[FloatingPointDesigns.scala 1627:184 1628:30]
  wire [85:0] _GEN_147 = leadingOne_reg_1 == 6'h1 & adder_result_reg_2 == 24'h0 & ((sign_reg_10_0 ^ sign_reg_10_1) &
    io_in_a_reg_10[30:0] == io_in_b_reg_10[30:0]) ? 86'h0 : _GEN_145; // @[FloatingPointDesigns.scala 1627:184 1629:31]
  wire  _GEN_148 = D_reg_4 ? new_s_reg_4 : new_s_reg_5; // @[FloatingPointDesigns.scala 1625:36 1626:22 1437:35]
  wire [7:0] _GEN_149 = D_reg_4 ? _GEN_146 : new_out_exp_reg_0; // @[FloatingPointDesigns.scala 1439:35 1625:36]
  wire [85:0] _GEN_150 = D_reg_4 ? _GEN_147 : {{63'd0}, new_out_frac_reg_0}; // @[FloatingPointDesigns.scala 1438:35 1625:36]
  wire  _GEN_151 = ~D_reg_4 ? new_s_reg_4 : _GEN_148; // @[FloatingPointDesigns.scala 1616:36 1617:22]
  wire [8:0] _GEN_152 = ~D_reg_4 ? _GEN_142 : {{1'd0}, _GEN_149}; // @[FloatingPointDesigns.scala 1616:36]
  wire [85:0] _GEN_153 = ~D_reg_4 ? {{62'd0}, _GEN_143} : _GEN_150; // @[FloatingPointDesigns.scala 1616:36]
  wire [8:0] _GEN_155 = E_reg_4 ? {{1'd0}, ref_exp_reg_7} : _GEN_152; // @[FloatingPointDesigns.scala 1612:36 1614:28]
  wire [85:0] _GEN_156 = E_reg_4 ? {{63'd0}, adder_result_reg_2[22:0]} : _GEN_153; // @[FloatingPointDesigns.scala 1612:36 1615:29]
  wire [85:0] _GEN_158 = sub_exp_reg_7 >= 8'h17 ? {{63'd0}, ref_frac_reg_7} : _GEN_156; // @[FloatingPointDesigns.scala 1608:48 1610:29]
  wire [8:0] _GEN_159 = sub_exp_reg_7 >= 8'h17 ? {{1'd0}, ref_exp_reg_7} : _GEN_155; // @[FloatingPointDesigns.scala 1608:48 1611:28]
  wire [8:0] _GEN_161 = io_in_a_reg_10[30:0] == 31'h0 & io_in_b_reg_10[30:0] == 31'h0 ? 9'h0 : _GEN_159; // @[FloatingPointDesigns.scala 1604:86 1606:28]
  wire [85:0] _GEN_162 = io_in_a_reg_10[30:0] == 31'h0 & io_in_b_reg_10[30:0] == 31'h0 ? 86'h0 : _GEN_158; // @[FloatingPointDesigns.scala 1604:86 1607:29]
  wire [31:0] _reg_out_s_T_1 = {new_s_reg_5,new_out_exp_reg_0,new_out_frac_reg_0}; // @[FloatingPointDesigns.scala 1640:55]
  wire [85:0] _GEN_170 = reset ? 86'h0 : _GEN_162; // @[FloatingPointDesigns.scala 1438:{35,35}]
  wire [8:0] _GEN_171 = reset ? 9'h0 : _GEN_161; // @[FloatingPointDesigns.scala 1439:{35,35}]
  full_subber subber ( // @[FloatingPointDesigns.scala 1461:24]
    .io_in_a(subber_io_in_a),
    .io_in_b(subber_io_in_b),
    .io_out_s(subber_io_out_s),
    .io_out_c(subber_io_out_c)
  );
  full_adder_6 adder ( // @[FloatingPointDesigns.scala 1467:23]
    .io_in_a(adder_io_in_a),
    .io_in_b(adder_io_in_b),
    .io_out_s(adder_io_out_s),
    .io_out_c(adder_io_out_c)
  );
  full_subber subber2 ( // @[FloatingPointDesigns.scala 1528:25]
    .io_in_a(subber2_io_in_a),
    .io_in_b(subber2_io_in_b),
    .io_out_s(subber2_io_out_s),
    .io_out_c(subber2_io_out_c)
  );
  assign io_out_s = reg_out_s; // @[FloatingPointDesigns.scala 1602:14]
  assign subber_io_in_a = exp_reg_0_0; // @[FloatingPointDesigns.scala 1462:20]
  assign subber_io_in_b = exp_reg_0_1; // @[FloatingPointDesigns.scala 1463:20]
  assign adder_io_in_a = _adder_io_in_a_T == 2'h1 ? cmpl_wire_temp_add_in_reg_0_0 : wire_temp_add_in_reg_1_0; // @[FloatingPointDesigns.scala 1499:25]
  assign adder_io_in_b = _adder_io_in_a_T == 2'h2 ? cmpl_wire_temp_add_in_reg_0_1 : wire_temp_add_in_reg_1_1; // @[FloatingPointDesigns.scala 1500:25]
  assign subber2_io_in_a = ref_exp_reg_6; // @[FloatingPointDesigns.scala 1529:21]
  assign subber2_io_in_b = {{2'd0}, _subber2_io_in_b_T_1}; // @[FloatingPointDesigns.scala 1530:21]
  always @(posedge clock) begin
    if (reset) begin // @[FloatingPointDesigns.scala 1419:28]
      sign_reg_0_0 <= 1'h0; // @[FloatingPointDesigns.scala 1419:28]
    end else begin
      sign_reg_0_0 <= sign_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1419:28]
      sign_reg_0_1 <= 1'h0; // @[FloatingPointDesigns.scala 1419:28]
    end else begin
      sign_reg_0_1 <= sign_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1419:28]
      sign_reg_1_0 <= 1'h0; // @[FloatingPointDesigns.scala 1419:28]
    end else begin
      sign_reg_1_0 <= sign_reg_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1419:28]
      sign_reg_1_1 <= 1'h0; // @[FloatingPointDesigns.scala 1419:28]
    end else begin
      sign_reg_1_1 <= sign_reg_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1419:28]
      sign_reg_2_0 <= 1'h0; // @[FloatingPointDesigns.scala 1419:28]
    end else begin
      sign_reg_2_0 <= sign_reg_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1419:28]
      sign_reg_2_1 <= 1'h0; // @[FloatingPointDesigns.scala 1419:28]
    end else begin
      sign_reg_2_1 <= sign_reg_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1419:28]
      sign_reg_3_0 <= 1'h0; // @[FloatingPointDesigns.scala 1419:28]
    end else begin
      sign_reg_3_0 <= sign_reg_2_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1419:28]
      sign_reg_3_1 <= 1'h0; // @[FloatingPointDesigns.scala 1419:28]
    end else begin
      sign_reg_3_1 <= sign_reg_2_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1419:28]
      sign_reg_4_0 <= 1'h0; // @[FloatingPointDesigns.scala 1419:28]
    end else begin
      sign_reg_4_0 <= sign_reg_3_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1419:28]
      sign_reg_4_1 <= 1'h0; // @[FloatingPointDesigns.scala 1419:28]
    end else begin
      sign_reg_4_1 <= sign_reg_3_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1419:28]
      sign_reg_5_0 <= 1'h0; // @[FloatingPointDesigns.scala 1419:28]
    end else begin
      sign_reg_5_0 <= sign_reg_4_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1419:28]
      sign_reg_5_1 <= 1'h0; // @[FloatingPointDesigns.scala 1419:28]
    end else begin
      sign_reg_5_1 <= sign_reg_4_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1419:28]
      sign_reg_6_0 <= 1'h0; // @[FloatingPointDesigns.scala 1419:28]
    end else begin
      sign_reg_6_0 <= sign_reg_5_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1419:28]
      sign_reg_6_1 <= 1'h0; // @[FloatingPointDesigns.scala 1419:28]
    end else begin
      sign_reg_6_1 <= sign_reg_5_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1419:28]
      sign_reg_7_0 <= 1'h0; // @[FloatingPointDesigns.scala 1419:28]
    end else begin
      sign_reg_7_0 <= sign_reg_6_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1419:28]
      sign_reg_7_1 <= 1'h0; // @[FloatingPointDesigns.scala 1419:28]
    end else begin
      sign_reg_7_1 <= sign_reg_6_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1419:28]
      sign_reg_8_0 <= 1'h0; // @[FloatingPointDesigns.scala 1419:28]
    end else begin
      sign_reg_8_0 <= sign_reg_7_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1419:28]
      sign_reg_8_1 <= 1'h0; // @[FloatingPointDesigns.scala 1419:28]
    end else begin
      sign_reg_8_1 <= sign_reg_7_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1419:28]
      sign_reg_9_0 <= 1'h0; // @[FloatingPointDesigns.scala 1419:28]
    end else begin
      sign_reg_9_0 <= sign_reg_8_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1419:28]
      sign_reg_9_1 <= 1'h0; // @[FloatingPointDesigns.scala 1419:28]
    end else begin
      sign_reg_9_1 <= sign_reg_8_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1419:28]
      sign_reg_10_0 <= 1'h0; // @[FloatingPointDesigns.scala 1419:28]
    end else begin
      sign_reg_10_0 <= sign_reg_9_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1419:28]
      sign_reg_10_1 <= 1'h0; // @[FloatingPointDesigns.scala 1419:28]
    end else begin
      sign_reg_10_1 <= sign_reg_9_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1420:28]
      exp_reg_0_0 <= 8'h0; // @[FloatingPointDesigns.scala 1420:28]
    end else begin
      exp_reg_0_0 <= exp_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1420:28]
      exp_reg_0_1 <= 8'h0; // @[FloatingPointDesigns.scala 1420:28]
    end else begin
      exp_reg_0_1 <= exp_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1420:28]
      exp_reg_1_0 <= 8'h0; // @[FloatingPointDesigns.scala 1420:28]
    end else begin
      exp_reg_1_0 <= exp_reg_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1420:28]
      exp_reg_1_1 <= 8'h0; // @[FloatingPointDesigns.scala 1420:28]
    end else begin
      exp_reg_1_1 <= exp_reg_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1420:28]
      exp_reg_2_0 <= 8'h0; // @[FloatingPointDesigns.scala 1420:28]
    end else begin
      exp_reg_2_0 <= exp_reg_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1420:28]
      exp_reg_2_1 <= 8'h0; // @[FloatingPointDesigns.scala 1420:28]
    end else begin
      exp_reg_2_1 <= exp_reg_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1421:28]
      frac_reg_0_0 <= 23'h0; // @[FloatingPointDesigns.scala 1421:28]
    end else begin
      frac_reg_0_0 <= frac_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1421:28]
      frac_reg_0_1 <= 23'h0; // @[FloatingPointDesigns.scala 1421:28]
    end else begin
      frac_reg_0_1 <= frac_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1421:28]
      frac_reg_1_0 <= 23'h0; // @[FloatingPointDesigns.scala 1421:28]
    end else begin
      frac_reg_1_0 <= frac_reg_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1421:28]
      frac_reg_1_1 <= 23'h0; // @[FloatingPointDesigns.scala 1421:28]
    end else begin
      frac_reg_1_1 <= frac_reg_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1421:28]
      frac_reg_2_0 <= 23'h0; // @[FloatingPointDesigns.scala 1421:28]
    end else begin
      frac_reg_2_0 <= frac_reg_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1421:28]
      frac_reg_2_1 <= 23'h0; // @[FloatingPointDesigns.scala 1421:28]
    end else begin
      frac_reg_2_1 <= frac_reg_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1422:28]
      wfrac_reg_0_0 <= 24'h0; // @[FloatingPointDesigns.scala 1422:28]
    end else begin
      wfrac_reg_0_0 <= whole_frac_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1422:28]
      wfrac_reg_0_1 <= 24'h0; // @[FloatingPointDesigns.scala 1422:28]
    end else begin
      wfrac_reg_0_1 <= whole_frac_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1422:28]
      wfrac_reg_1_0 <= 24'h0; // @[FloatingPointDesigns.scala 1422:28]
    end else begin
      wfrac_reg_1_0 <= wfrac_reg_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1422:28]
      wfrac_reg_1_1 <= 24'h0; // @[FloatingPointDesigns.scala 1422:28]
    end else begin
      wfrac_reg_1_1 <= wfrac_reg_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1422:28]
      wfrac_reg_2_0 <= 24'h0; // @[FloatingPointDesigns.scala 1422:28]
    end else begin
      wfrac_reg_2_0 <= wfrac_reg_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1422:28]
      wfrac_reg_2_1 <= 24'h0; // @[FloatingPointDesigns.scala 1422:28]
    end else begin
      wfrac_reg_2_1 <= wfrac_reg_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1424:35]
      subber_out_s_reg_0 <= 8'h0; // @[FloatingPointDesigns.scala 1424:35]
    end else begin
      subber_out_s_reg_0 <= _GEN_24;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1424:35]
      subber_out_s_reg_1 <= 8'h0; // @[FloatingPointDesigns.scala 1424:35]
    end else begin
      subber_out_s_reg_1 <= subber_out_s_reg_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1425:35]
      subber_out_c_reg_0 <= 1'h0; // @[FloatingPointDesigns.scala 1425:35]
    end else begin
      subber_out_c_reg_0 <= _GEN_25;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1425:35]
      subber_out_c_reg_1 <= 1'h0; // @[FloatingPointDesigns.scala 1425:35]
    end else begin
      subber_out_c_reg_1 <= subber_out_c_reg_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1427:39]
      wire_temp_add_in_reg_0_0 <= 24'h0; // @[FloatingPointDesigns.scala 1427:39]
    end else if (subber_out_c_reg_1) begin // @[FloatingPointDesigns.scala 1477:39]
      wire_temp_add_in_reg_0_0 <= _wire_temp_add_in_0_T; // @[FloatingPointDesigns.scala 1482:27]
    end else begin
      wire_temp_add_in_reg_0_0 <= wfrac_reg_2_0; // @[FloatingPointDesigns.scala 1489:27]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1427:39]
      wire_temp_add_in_reg_0_1 <= 24'h0; // @[FloatingPointDesigns.scala 1427:39]
    end else if (subber_out_c_reg_1) begin // @[FloatingPointDesigns.scala 1477:39]
      wire_temp_add_in_reg_0_1 <= wfrac_reg_2_1; // @[FloatingPointDesigns.scala 1483:27]
    end else begin
      wire_temp_add_in_reg_0_1 <= _wire_temp_add_in_1_T; // @[FloatingPointDesigns.scala 1490:27]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1427:39]
      wire_temp_add_in_reg_1_0 <= 24'h0; // @[FloatingPointDesigns.scala 1427:39]
    end else begin
      wire_temp_add_in_reg_1_0 <= wire_temp_add_in_reg_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1427:39]
      wire_temp_add_in_reg_1_1 <= 24'h0; // @[FloatingPointDesigns.scala 1427:39]
    end else begin
      wire_temp_add_in_reg_1_1 <= wire_temp_add_in_reg_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1429:31]
      ref_s_reg_0 <= 1'h0; // @[FloatingPointDesigns.scala 1429:31]
    end else if (subber_out_c_reg_1) begin // @[FloatingPointDesigns.scala 1477:39]
      ref_s_reg_0 <= sign_reg_2_1; // @[FloatingPointDesigns.scala 1480:13]
    end else begin
      ref_s_reg_0 <= sign_reg_2_0; // @[FloatingPointDesigns.scala 1487:13]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1429:31]
      ref_s_reg_1 <= 1'h0; // @[FloatingPointDesigns.scala 1429:31]
    end else begin
      ref_s_reg_1 <= ref_s_reg_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1429:31]
      ref_s_reg_2 <= 1'h0; // @[FloatingPointDesigns.scala 1429:31]
    end else begin
      ref_s_reg_2 <= ref_s_reg_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1429:31]
      ref_s_reg_3 <= 1'h0; // @[FloatingPointDesigns.scala 1429:31]
    end else begin
      ref_s_reg_3 <= ref_s_reg_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1429:31]
      ref_s_reg_4 <= 1'h0; // @[FloatingPointDesigns.scala 1429:31]
    end else begin
      ref_s_reg_4 <= ref_s_reg_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1429:31]
      ref_s_reg_5 <= 1'h0; // @[FloatingPointDesigns.scala 1429:31]
    end else begin
      ref_s_reg_5 <= ref_s_reg_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1429:31]
      ref_s_reg_6 <= 1'h0; // @[FloatingPointDesigns.scala 1429:31]
    end else begin
      ref_s_reg_6 <= ref_s_reg_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1429:31]
      ref_s_reg_7 <= 1'h0; // @[FloatingPointDesigns.scala 1429:31]
    end else begin
      ref_s_reg_7 <= ref_s_reg_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1430:31]
      ref_frac_reg_0 <= 23'h0; // @[FloatingPointDesigns.scala 1430:31]
    end else if (subber_out_c_reg_1) begin // @[FloatingPointDesigns.scala 1477:39]
      ref_frac_reg_0 <= frac_reg_2_1; // @[FloatingPointDesigns.scala 1481:16]
    end else begin
      ref_frac_reg_0 <= frac_reg_2_0; // @[FloatingPointDesigns.scala 1488:16]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1430:31]
      ref_frac_reg_1 <= 23'h0; // @[FloatingPointDesigns.scala 1430:31]
    end else begin
      ref_frac_reg_1 <= ref_frac_reg_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1430:31]
      ref_frac_reg_2 <= 23'h0; // @[FloatingPointDesigns.scala 1430:31]
    end else begin
      ref_frac_reg_2 <= ref_frac_reg_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1430:31]
      ref_frac_reg_3 <= 23'h0; // @[FloatingPointDesigns.scala 1430:31]
    end else begin
      ref_frac_reg_3 <= ref_frac_reg_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1430:31]
      ref_frac_reg_4 <= 23'h0; // @[FloatingPointDesigns.scala 1430:31]
    end else begin
      ref_frac_reg_4 <= ref_frac_reg_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1430:31]
      ref_frac_reg_5 <= 23'h0; // @[FloatingPointDesigns.scala 1430:31]
    end else begin
      ref_frac_reg_5 <= ref_frac_reg_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1430:31]
      ref_frac_reg_6 <= 23'h0; // @[FloatingPointDesigns.scala 1430:31]
    end else begin
      ref_frac_reg_6 <= ref_frac_reg_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1430:31]
      ref_frac_reg_7 <= 23'h0; // @[FloatingPointDesigns.scala 1430:31]
    end else begin
      ref_frac_reg_7 <= ref_frac_reg_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1431:31]
      ref_exp_reg_0 <= 8'h0; // @[FloatingPointDesigns.scala 1431:31]
    end else if (subber_out_c_reg_1) begin // @[FloatingPointDesigns.scala 1477:39]
      ref_exp_reg_0 <= exp_reg_2_1; // @[FloatingPointDesigns.scala 1478:15]
    end else begin
      ref_exp_reg_0 <= exp_reg_2_0; // @[FloatingPointDesigns.scala 1485:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1431:31]
      ref_exp_reg_1 <= 8'h0; // @[FloatingPointDesigns.scala 1431:31]
    end else begin
      ref_exp_reg_1 <= ref_exp_reg_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1431:31]
      ref_exp_reg_2 <= 8'h0; // @[FloatingPointDesigns.scala 1431:31]
    end else begin
      ref_exp_reg_2 <= ref_exp_reg_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1431:31]
      ref_exp_reg_3 <= 8'h0; // @[FloatingPointDesigns.scala 1431:31]
    end else begin
      ref_exp_reg_3 <= ref_exp_reg_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1431:31]
      ref_exp_reg_4 <= 8'h0; // @[FloatingPointDesigns.scala 1431:31]
    end else begin
      ref_exp_reg_4 <= ref_exp_reg_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1431:31]
      ref_exp_reg_5 <= 8'h0; // @[FloatingPointDesigns.scala 1431:31]
    end else begin
      ref_exp_reg_5 <= ref_exp_reg_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1431:31]
      ref_exp_reg_6 <= 8'h0; // @[FloatingPointDesigns.scala 1431:31]
    end else begin
      ref_exp_reg_6 <= ref_exp_reg_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1431:31]
      ref_exp_reg_7 <= 8'h0; // @[FloatingPointDesigns.scala 1431:31]
    end else begin
      ref_exp_reg_7 <= ref_exp_reg_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1432:31]
      sub_exp_reg_0 <= 8'h0; // @[FloatingPointDesigns.scala 1432:31]
    end else if (subber_out_c_reg_1) begin // @[FloatingPointDesigns.scala 1477:39]
      sub_exp_reg_0 <= cmpl_subber_out_s_reg_0; // @[FloatingPointDesigns.scala 1479:15]
    end else begin
      sub_exp_reg_0 <= subber_out_s_reg_1; // @[FloatingPointDesigns.scala 1486:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1432:31]
      sub_exp_reg_1 <= 8'h0; // @[FloatingPointDesigns.scala 1432:31]
    end else begin
      sub_exp_reg_1 <= sub_exp_reg_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1432:31]
      sub_exp_reg_2 <= 8'h0; // @[FloatingPointDesigns.scala 1432:31]
    end else begin
      sub_exp_reg_2 <= sub_exp_reg_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1432:31]
      sub_exp_reg_3 <= 8'h0; // @[FloatingPointDesigns.scala 1432:31]
    end else begin
      sub_exp_reg_3 <= sub_exp_reg_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1432:31]
      sub_exp_reg_4 <= 8'h0; // @[FloatingPointDesigns.scala 1432:31]
    end else begin
      sub_exp_reg_4 <= sub_exp_reg_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1432:31]
      sub_exp_reg_5 <= 8'h0; // @[FloatingPointDesigns.scala 1432:31]
    end else begin
      sub_exp_reg_5 <= sub_exp_reg_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1432:31]
      sub_exp_reg_6 <= 8'h0; // @[FloatingPointDesigns.scala 1432:31]
    end else begin
      sub_exp_reg_6 <= sub_exp_reg_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1432:31]
      sub_exp_reg_7 <= 8'h0; // @[FloatingPointDesigns.scala 1432:31]
    end else begin
      sub_exp_reg_7 <= sub_exp_reg_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1434:37]
      adder_io_out_s_reg_0 <= 24'h0; // @[FloatingPointDesigns.scala 1434:37]
    end else begin
      adder_io_out_s_reg_0 <= _GEN_35;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1434:37]
      adder_io_out_s_reg_1 <= 24'h0; // @[FloatingPointDesigns.scala 1434:37]
    end else begin
      adder_io_out_s_reg_1 <= adder_io_out_s_reg_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1434:37]
      adder_io_out_s_reg_2 <= 24'h0; // @[FloatingPointDesigns.scala 1434:37]
    end else begin
      adder_io_out_s_reg_2 <= adder_io_out_s_reg_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1435:37]
      adder_io_out_c_reg_0 <= 1'h0; // @[FloatingPointDesigns.scala 1435:37]
    end else begin
      adder_io_out_c_reg_0 <= _GEN_36;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1437:35]
      new_s_reg_0 <= 1'h0; // @[FloatingPointDesigns.scala 1437:35]
    end else begin
      new_s_reg_0 <= new_s;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1437:35]
      new_s_reg_1 <= 1'h0; // @[FloatingPointDesigns.scala 1437:35]
    end else begin
      new_s_reg_1 <= new_s_reg_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1437:35]
      new_s_reg_2 <= 1'h0; // @[FloatingPointDesigns.scala 1437:35]
    end else begin
      new_s_reg_2 <= new_s_reg_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1437:35]
      new_s_reg_3 <= 1'h0; // @[FloatingPointDesigns.scala 1437:35]
    end else begin
      new_s_reg_3 <= new_s_reg_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1437:35]
      new_s_reg_4 <= 1'h0; // @[FloatingPointDesigns.scala 1437:35]
    end else begin
      new_s_reg_4 <= new_s_reg_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1437:35]
      new_s_reg_5 <= 1'h0; // @[FloatingPointDesigns.scala 1437:35]
    end else if (io_in_a_reg_10[30:0] == 31'h0 & io_in_b_reg_10[30:0] == 31'h0) begin // @[FloatingPointDesigns.scala 1604:86]
      new_s_reg_5 <= 1'h0; // @[FloatingPointDesigns.scala 1605:22]
    end else if (sub_exp_reg_7 >= 8'h17) begin // @[FloatingPointDesigns.scala 1608:48]
      new_s_reg_5 <= ref_s_reg_7; // @[FloatingPointDesigns.scala 1609:22]
    end else if (E_reg_4) begin // @[FloatingPointDesigns.scala 1612:36]
      new_s_reg_5 <= new_s_reg_4; // @[FloatingPointDesigns.scala 1613:22]
    end else begin
      new_s_reg_5 <= _GEN_151;
    end
    new_out_frac_reg_0 <= _GEN_170[22:0]; // @[FloatingPointDesigns.scala 1438:{35,35}]
    new_out_exp_reg_0 <= _GEN_171[7:0]; // @[FloatingPointDesigns.scala 1439:{35,35}]
    if (reset) begin // @[FloatingPointDesigns.scala 1440:24]
      E_reg_0 <= 1'h0; // @[FloatingPointDesigns.scala 1440:24]
    end else begin
      E_reg_0 <= E;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1440:24]
      E_reg_1 <= 1'h0; // @[FloatingPointDesigns.scala 1440:24]
    end else begin
      E_reg_1 <= E_reg_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1440:24]
      E_reg_2 <= 1'h0; // @[FloatingPointDesigns.scala 1440:24]
    end else begin
      E_reg_2 <= E_reg_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1440:24]
      E_reg_3 <= 1'h0; // @[FloatingPointDesigns.scala 1440:24]
    end else begin
      E_reg_3 <= E_reg_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1440:24]
      E_reg_4 <= 1'h0; // @[FloatingPointDesigns.scala 1440:24]
    end else begin
      E_reg_4 <= E_reg_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1441:24]
      D_reg_0 <= 1'h0; // @[FloatingPointDesigns.scala 1441:24]
    end else begin
      D_reg_0 <= D;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1441:24]
      D_reg_1 <= 1'h0; // @[FloatingPointDesigns.scala 1441:24]
    end else begin
      D_reg_1 <= D_reg_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1441:24]
      D_reg_2 <= 1'h0; // @[FloatingPointDesigns.scala 1441:24]
    end else begin
      D_reg_2 <= D_reg_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1441:24]
      D_reg_3 <= 1'h0; // @[FloatingPointDesigns.scala 1441:24]
    end else begin
      D_reg_3 <= D_reg_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1441:24]
      D_reg_4 <= 1'h0; // @[FloatingPointDesigns.scala 1441:24]
    end else begin
      D_reg_4 <= D_reg_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1443:35]
      adder_result_reg_0 <= 24'h0; // @[FloatingPointDesigns.scala 1443:35]
    end else if (new_s_reg_1 & ^_adder_result_T) begin // @[FloatingPointDesigns.scala 1524:24]
      adder_result_reg_0 <= cmpl_adder_io_out_s_reg_0;
    end else begin
      adder_result_reg_0 <= adder_io_out_s_reg_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1443:35]
      adder_result_reg_1 <= 24'h0; // @[FloatingPointDesigns.scala 1443:35]
    end else begin
      adder_result_reg_1 <= adder_result_reg_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1443:35]
      adder_result_reg_2 <= 24'h0; // @[FloatingPointDesigns.scala 1443:35]
    end else begin
      adder_result_reg_2 <= adder_result_reg_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1445:33]
      leadingOne_reg_0 <= 6'h0; // @[FloatingPointDesigns.scala 1445:33]
    end else begin
      leadingOne_reg_0 <= leadingOne;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1445:33]
      leadingOne_reg_1 <= 6'h0; // @[FloatingPointDesigns.scala 1445:33]
    end else begin
      leadingOne_reg_1 <= leadingOne_reg_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1447:30]
      io_in_a_reg_0 <= 32'h0; // @[FloatingPointDesigns.scala 1447:30]
    end else begin
      io_in_a_reg_0 <= io_in_a;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1447:30]
      io_in_a_reg_1 <= 32'h0; // @[FloatingPointDesigns.scala 1447:30]
    end else begin
      io_in_a_reg_1 <= io_in_a_reg_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1447:30]
      io_in_a_reg_2 <= 32'h0; // @[FloatingPointDesigns.scala 1447:30]
    end else begin
      io_in_a_reg_2 <= io_in_a_reg_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1447:30]
      io_in_a_reg_3 <= 32'h0; // @[FloatingPointDesigns.scala 1447:30]
    end else begin
      io_in_a_reg_3 <= io_in_a_reg_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1447:30]
      io_in_a_reg_4 <= 32'h0; // @[FloatingPointDesigns.scala 1447:30]
    end else begin
      io_in_a_reg_4 <= io_in_a_reg_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1447:30]
      io_in_a_reg_5 <= 32'h0; // @[FloatingPointDesigns.scala 1447:30]
    end else begin
      io_in_a_reg_5 <= io_in_a_reg_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1447:30]
      io_in_a_reg_6 <= 32'h0; // @[FloatingPointDesigns.scala 1447:30]
    end else begin
      io_in_a_reg_6 <= io_in_a_reg_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1447:30]
      io_in_a_reg_7 <= 32'h0; // @[FloatingPointDesigns.scala 1447:30]
    end else begin
      io_in_a_reg_7 <= io_in_a_reg_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1447:30]
      io_in_a_reg_8 <= 32'h0; // @[FloatingPointDesigns.scala 1447:30]
    end else begin
      io_in_a_reg_8 <= io_in_a_reg_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1447:30]
      io_in_a_reg_9 <= 32'h0; // @[FloatingPointDesigns.scala 1447:30]
    end else begin
      io_in_a_reg_9 <= io_in_a_reg_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1447:30]
      io_in_a_reg_10 <= 32'h0; // @[FloatingPointDesigns.scala 1447:30]
    end else begin
      io_in_a_reg_10 <= io_in_a_reg_9;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1448:30]
      io_in_b_reg_0 <= 32'h0; // @[FloatingPointDesigns.scala 1448:30]
    end else begin
      io_in_b_reg_0 <= io_in_b;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1448:30]
      io_in_b_reg_1 <= 32'h0; // @[FloatingPointDesigns.scala 1448:30]
    end else begin
      io_in_b_reg_1 <= io_in_b_reg_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1448:30]
      io_in_b_reg_2 <= 32'h0; // @[FloatingPointDesigns.scala 1448:30]
    end else begin
      io_in_b_reg_2 <= io_in_b_reg_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1448:30]
      io_in_b_reg_3 <= 32'h0; // @[FloatingPointDesigns.scala 1448:30]
    end else begin
      io_in_b_reg_3 <= io_in_b_reg_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1448:30]
      io_in_b_reg_4 <= 32'h0; // @[FloatingPointDesigns.scala 1448:30]
    end else begin
      io_in_b_reg_4 <= io_in_b_reg_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1448:30]
      io_in_b_reg_5 <= 32'h0; // @[FloatingPointDesigns.scala 1448:30]
    end else begin
      io_in_b_reg_5 <= io_in_b_reg_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1448:30]
      io_in_b_reg_6 <= 32'h0; // @[FloatingPointDesigns.scala 1448:30]
    end else begin
      io_in_b_reg_6 <= io_in_b_reg_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1448:30]
      io_in_b_reg_7 <= 32'h0; // @[FloatingPointDesigns.scala 1448:30]
    end else begin
      io_in_b_reg_7 <= io_in_b_reg_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1448:30]
      io_in_b_reg_8 <= 32'h0; // @[FloatingPointDesigns.scala 1448:30]
    end else begin
      io_in_b_reg_8 <= io_in_b_reg_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1448:30]
      io_in_b_reg_9 <= 32'h0; // @[FloatingPointDesigns.scala 1448:30]
    end else begin
      io_in_b_reg_9 <= io_in_b_reg_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1448:30]
      io_in_b_reg_10 <= 32'h0; // @[FloatingPointDesigns.scala 1448:30]
    end else begin
      io_in_b_reg_10 <= io_in_b_reg_9;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1450:36]
      subber2_out_s_reg_0 <= 8'h0; // @[FloatingPointDesigns.scala 1450:36]
    end else begin
      subber2_out_s_reg_0 <= _GEN_39;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1451:36]
      subber2_out_c_reg_0 <= 1'h0; // @[FloatingPointDesigns.scala 1451:36]
    end else begin
      subber2_out_c_reg_0 <= _GEN_40;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1472:40]
      cmpl_subber_out_s_reg_0 <= 8'h0; // @[FloatingPointDesigns.scala 1472:40]
    end else begin
      cmpl_subber_out_s_reg_0 <= _cmpl_subber_out_s_reg_0_T_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1493:44]
      cmpl_wire_temp_add_in_reg_0_0 <= 24'h0; // @[FloatingPointDesigns.scala 1493:44]
    end else begin
      cmpl_wire_temp_add_in_reg_0_0 <= _cmpl_wire_temp_add_in_reg_0_0_T_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1493:44]
      cmpl_wire_temp_add_in_reg_0_1 <= 24'h0; // @[FloatingPointDesigns.scala 1493:44]
    end else begin
      cmpl_wire_temp_add_in_reg_0_1 <= _cmpl_wire_temp_add_in_reg_0_1_T_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1517:42]
      cmpl_adder_io_out_s_reg_0 <= 24'h0; // @[FloatingPointDesigns.scala 1517:42]
    end else begin
      cmpl_adder_io_out_s_reg_0 <= _cmpl_adder_io_out_s_reg_0_T_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1601:28]
      reg_out_s <= 32'h0; // @[FloatingPointDesigns.scala 1601:28]
    end else begin
      reg_out_s <= _reg_out_s_T_1;
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
  sign_reg_0_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  sign_reg_0_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  sign_reg_1_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  sign_reg_1_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  sign_reg_2_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  sign_reg_2_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  sign_reg_3_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  sign_reg_3_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  sign_reg_4_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  sign_reg_4_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  sign_reg_5_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  sign_reg_5_1 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  sign_reg_6_0 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  sign_reg_6_1 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  sign_reg_7_0 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  sign_reg_7_1 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  sign_reg_8_0 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  sign_reg_8_1 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  sign_reg_9_0 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  sign_reg_9_1 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  sign_reg_10_0 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  sign_reg_10_1 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  exp_reg_0_0 = _RAND_22[7:0];
  _RAND_23 = {1{`RANDOM}};
  exp_reg_0_1 = _RAND_23[7:0];
  _RAND_24 = {1{`RANDOM}};
  exp_reg_1_0 = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  exp_reg_1_1 = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  exp_reg_2_0 = _RAND_26[7:0];
  _RAND_27 = {1{`RANDOM}};
  exp_reg_2_1 = _RAND_27[7:0];
  _RAND_28 = {1{`RANDOM}};
  frac_reg_0_0 = _RAND_28[22:0];
  _RAND_29 = {1{`RANDOM}};
  frac_reg_0_1 = _RAND_29[22:0];
  _RAND_30 = {1{`RANDOM}};
  frac_reg_1_0 = _RAND_30[22:0];
  _RAND_31 = {1{`RANDOM}};
  frac_reg_1_1 = _RAND_31[22:0];
  _RAND_32 = {1{`RANDOM}};
  frac_reg_2_0 = _RAND_32[22:0];
  _RAND_33 = {1{`RANDOM}};
  frac_reg_2_1 = _RAND_33[22:0];
  _RAND_34 = {1{`RANDOM}};
  wfrac_reg_0_0 = _RAND_34[23:0];
  _RAND_35 = {1{`RANDOM}};
  wfrac_reg_0_1 = _RAND_35[23:0];
  _RAND_36 = {1{`RANDOM}};
  wfrac_reg_1_0 = _RAND_36[23:0];
  _RAND_37 = {1{`RANDOM}};
  wfrac_reg_1_1 = _RAND_37[23:0];
  _RAND_38 = {1{`RANDOM}};
  wfrac_reg_2_0 = _RAND_38[23:0];
  _RAND_39 = {1{`RANDOM}};
  wfrac_reg_2_1 = _RAND_39[23:0];
  _RAND_40 = {1{`RANDOM}};
  subber_out_s_reg_0 = _RAND_40[7:0];
  _RAND_41 = {1{`RANDOM}};
  subber_out_s_reg_1 = _RAND_41[7:0];
  _RAND_42 = {1{`RANDOM}};
  subber_out_c_reg_0 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  subber_out_c_reg_1 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  wire_temp_add_in_reg_0_0 = _RAND_44[23:0];
  _RAND_45 = {1{`RANDOM}};
  wire_temp_add_in_reg_0_1 = _RAND_45[23:0];
  _RAND_46 = {1{`RANDOM}};
  wire_temp_add_in_reg_1_0 = _RAND_46[23:0];
  _RAND_47 = {1{`RANDOM}};
  wire_temp_add_in_reg_1_1 = _RAND_47[23:0];
  _RAND_48 = {1{`RANDOM}};
  ref_s_reg_0 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  ref_s_reg_1 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  ref_s_reg_2 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  ref_s_reg_3 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  ref_s_reg_4 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  ref_s_reg_5 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  ref_s_reg_6 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  ref_s_reg_7 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  ref_frac_reg_0 = _RAND_56[22:0];
  _RAND_57 = {1{`RANDOM}};
  ref_frac_reg_1 = _RAND_57[22:0];
  _RAND_58 = {1{`RANDOM}};
  ref_frac_reg_2 = _RAND_58[22:0];
  _RAND_59 = {1{`RANDOM}};
  ref_frac_reg_3 = _RAND_59[22:0];
  _RAND_60 = {1{`RANDOM}};
  ref_frac_reg_4 = _RAND_60[22:0];
  _RAND_61 = {1{`RANDOM}};
  ref_frac_reg_5 = _RAND_61[22:0];
  _RAND_62 = {1{`RANDOM}};
  ref_frac_reg_6 = _RAND_62[22:0];
  _RAND_63 = {1{`RANDOM}};
  ref_frac_reg_7 = _RAND_63[22:0];
  _RAND_64 = {1{`RANDOM}};
  ref_exp_reg_0 = _RAND_64[7:0];
  _RAND_65 = {1{`RANDOM}};
  ref_exp_reg_1 = _RAND_65[7:0];
  _RAND_66 = {1{`RANDOM}};
  ref_exp_reg_2 = _RAND_66[7:0];
  _RAND_67 = {1{`RANDOM}};
  ref_exp_reg_3 = _RAND_67[7:0];
  _RAND_68 = {1{`RANDOM}};
  ref_exp_reg_4 = _RAND_68[7:0];
  _RAND_69 = {1{`RANDOM}};
  ref_exp_reg_5 = _RAND_69[7:0];
  _RAND_70 = {1{`RANDOM}};
  ref_exp_reg_6 = _RAND_70[7:0];
  _RAND_71 = {1{`RANDOM}};
  ref_exp_reg_7 = _RAND_71[7:0];
  _RAND_72 = {1{`RANDOM}};
  sub_exp_reg_0 = _RAND_72[7:0];
  _RAND_73 = {1{`RANDOM}};
  sub_exp_reg_1 = _RAND_73[7:0];
  _RAND_74 = {1{`RANDOM}};
  sub_exp_reg_2 = _RAND_74[7:0];
  _RAND_75 = {1{`RANDOM}};
  sub_exp_reg_3 = _RAND_75[7:0];
  _RAND_76 = {1{`RANDOM}};
  sub_exp_reg_4 = _RAND_76[7:0];
  _RAND_77 = {1{`RANDOM}};
  sub_exp_reg_5 = _RAND_77[7:0];
  _RAND_78 = {1{`RANDOM}};
  sub_exp_reg_6 = _RAND_78[7:0];
  _RAND_79 = {1{`RANDOM}};
  sub_exp_reg_7 = _RAND_79[7:0];
  _RAND_80 = {1{`RANDOM}};
  adder_io_out_s_reg_0 = _RAND_80[23:0];
  _RAND_81 = {1{`RANDOM}};
  adder_io_out_s_reg_1 = _RAND_81[23:0];
  _RAND_82 = {1{`RANDOM}};
  adder_io_out_s_reg_2 = _RAND_82[23:0];
  _RAND_83 = {1{`RANDOM}};
  adder_io_out_c_reg_0 = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  new_s_reg_0 = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  new_s_reg_1 = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  new_s_reg_2 = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  new_s_reg_3 = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  new_s_reg_4 = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  new_s_reg_5 = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  new_out_frac_reg_0 = _RAND_90[22:0];
  _RAND_91 = {1{`RANDOM}};
  new_out_exp_reg_0 = _RAND_91[7:0];
  _RAND_92 = {1{`RANDOM}};
  E_reg_0 = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  E_reg_1 = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  E_reg_2 = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  E_reg_3 = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  E_reg_4 = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  D_reg_0 = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  D_reg_1 = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  D_reg_2 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  D_reg_3 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  D_reg_4 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  adder_result_reg_0 = _RAND_102[23:0];
  _RAND_103 = {1{`RANDOM}};
  adder_result_reg_1 = _RAND_103[23:0];
  _RAND_104 = {1{`RANDOM}};
  adder_result_reg_2 = _RAND_104[23:0];
  _RAND_105 = {1{`RANDOM}};
  leadingOne_reg_0 = _RAND_105[5:0];
  _RAND_106 = {1{`RANDOM}};
  leadingOne_reg_1 = _RAND_106[5:0];
  _RAND_107 = {1{`RANDOM}};
  io_in_a_reg_0 = _RAND_107[31:0];
  _RAND_108 = {1{`RANDOM}};
  io_in_a_reg_1 = _RAND_108[31:0];
  _RAND_109 = {1{`RANDOM}};
  io_in_a_reg_2 = _RAND_109[31:0];
  _RAND_110 = {1{`RANDOM}};
  io_in_a_reg_3 = _RAND_110[31:0];
  _RAND_111 = {1{`RANDOM}};
  io_in_a_reg_4 = _RAND_111[31:0];
  _RAND_112 = {1{`RANDOM}};
  io_in_a_reg_5 = _RAND_112[31:0];
  _RAND_113 = {1{`RANDOM}};
  io_in_a_reg_6 = _RAND_113[31:0];
  _RAND_114 = {1{`RANDOM}};
  io_in_a_reg_7 = _RAND_114[31:0];
  _RAND_115 = {1{`RANDOM}};
  io_in_a_reg_8 = _RAND_115[31:0];
  _RAND_116 = {1{`RANDOM}};
  io_in_a_reg_9 = _RAND_116[31:0];
  _RAND_117 = {1{`RANDOM}};
  io_in_a_reg_10 = _RAND_117[31:0];
  _RAND_118 = {1{`RANDOM}};
  io_in_b_reg_0 = _RAND_118[31:0];
  _RAND_119 = {1{`RANDOM}};
  io_in_b_reg_1 = _RAND_119[31:0];
  _RAND_120 = {1{`RANDOM}};
  io_in_b_reg_2 = _RAND_120[31:0];
  _RAND_121 = {1{`RANDOM}};
  io_in_b_reg_3 = _RAND_121[31:0];
  _RAND_122 = {1{`RANDOM}};
  io_in_b_reg_4 = _RAND_122[31:0];
  _RAND_123 = {1{`RANDOM}};
  io_in_b_reg_5 = _RAND_123[31:0];
  _RAND_124 = {1{`RANDOM}};
  io_in_b_reg_6 = _RAND_124[31:0];
  _RAND_125 = {1{`RANDOM}};
  io_in_b_reg_7 = _RAND_125[31:0];
  _RAND_126 = {1{`RANDOM}};
  io_in_b_reg_8 = _RAND_126[31:0];
  _RAND_127 = {1{`RANDOM}};
  io_in_b_reg_9 = _RAND_127[31:0];
  _RAND_128 = {1{`RANDOM}};
  io_in_b_reg_10 = _RAND_128[31:0];
  _RAND_129 = {1{`RANDOM}};
  subber2_out_s_reg_0 = _RAND_129[7:0];
  _RAND_130 = {1{`RANDOM}};
  subber2_out_c_reg_0 = _RAND_130[0:0];
  _RAND_131 = {1{`RANDOM}};
  cmpl_subber_out_s_reg_0 = _RAND_131[7:0];
  _RAND_132 = {1{`RANDOM}};
  cmpl_wire_temp_add_in_reg_0_0 = _RAND_132[23:0];
  _RAND_133 = {1{`RANDOM}};
  cmpl_wire_temp_add_in_reg_0_1 = _RAND_133[23:0];
  _RAND_134 = {1{`RANDOM}};
  cmpl_adder_io_out_s_reg_0 = _RAND_134[23:0];
  _RAND_135 = {1{`RANDOM}};
  reg_out_s = _RAND_135[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FP_subtractor_13ccs(
  input         clock,
  input         reset,
  input  [31:0] io_in_a,
  input  [31:0] io_in_b,
  output [31:0] io_out_s
);
  wire  FP_adder_clock; // @[FloatingPointDesigns.scala 1655:26]
  wire  FP_adder_reset; // @[FloatingPointDesigns.scala 1655:26]
  wire [31:0] FP_adder_io_in_a; // @[FloatingPointDesigns.scala 1655:26]
  wire [31:0] FP_adder_io_in_b; // @[FloatingPointDesigns.scala 1655:26]
  wire [31:0] FP_adder_io_out_s; // @[FloatingPointDesigns.scala 1655:26]
  wire  _adjusted_in_b_T_1 = ~io_in_b[31]; // @[FloatingPointDesigns.scala 1658:23]
  FP_adder_13ccs FP_adder ( // @[FloatingPointDesigns.scala 1655:26]
    .clock(FP_adder_clock),
    .reset(FP_adder_reset),
    .io_in_a(FP_adder_io_in_a),
    .io_in_b(FP_adder_io_in_b),
    .io_out_s(FP_adder_io_out_s)
  );
  assign io_out_s = FP_adder_io_out_s; // @[FloatingPointDesigns.scala 1662:14]
  assign FP_adder_clock = clock;
  assign FP_adder_reset = reset;
  assign FP_adder_io_in_a = io_in_a; // @[FloatingPointDesigns.scala 1660:22]
  assign FP_adder_io_in_b = {_adjusted_in_b_T_1,io_in_b[30:0]}; // @[FloatingPointDesigns.scala 1658:41]
endmodule
module FP_reciprocal_newfpu(
  input         clock,
  input         reset,
  output [31:0] io_out_s
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
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
  reg [31:0] _RAND_136;
  reg [31:0] _RAND_137;
  reg [31:0] _RAND_138;
  reg [31:0] _RAND_139;
  reg [31:0] _RAND_140;
  reg [31:0] _RAND_141;
  reg [31:0] _RAND_142;
  reg [31:0] _RAND_143;
  reg [31:0] _RAND_144;
  reg [31:0] _RAND_145;
  reg [31:0] _RAND_146;
  reg [31:0] _RAND_147;
  reg [31:0] _RAND_148;
  reg [31:0] _RAND_149;
  reg [31:0] _RAND_150;
  reg [31:0] _RAND_151;
  reg [31:0] _RAND_152;
  reg [31:0] _RAND_153;
  reg [31:0] _RAND_154;
  reg [31:0] _RAND_155;
  reg [31:0] _RAND_156;
  reg [31:0] _RAND_157;
  reg [31:0] _RAND_158;
  reg [31:0] _RAND_159;
  reg [31:0] _RAND_160;
  reg [31:0] _RAND_161;
  reg [31:0] _RAND_162;
  reg [31:0] _RAND_163;
  reg [31:0] _RAND_164;
  reg [31:0] _RAND_165;
  reg [31:0] _RAND_166;
  reg [31:0] _RAND_167;
  reg [31:0] _RAND_168;
  reg [31:0] _RAND_169;
  reg [31:0] _RAND_170;
  reg [31:0] _RAND_171;
  reg [31:0] _RAND_172;
  reg [31:0] _RAND_173;
  reg [31:0] _RAND_174;
  reg [31:0] _RAND_175;
  reg [31:0] _RAND_176;
  reg [31:0] _RAND_177;
  reg [31:0] _RAND_178;
  reg [31:0] _RAND_179;
  reg [31:0] _RAND_180;
  reg [31:0] _RAND_181;
  reg [31:0] _RAND_182;
  reg [31:0] _RAND_183;
  reg [31:0] _RAND_184;
  reg [31:0] _RAND_185;
  reg [31:0] _RAND_186;
  reg [31:0] _RAND_187;
  reg [31:0] _RAND_188;
  reg [31:0] _RAND_189;
  reg [31:0] _RAND_190;
  reg [31:0] _RAND_191;
  reg [31:0] _RAND_192;
  reg [31:0] _RAND_193;
  reg [31:0] _RAND_194;
  reg [31:0] _RAND_195;
  reg [31:0] _RAND_196;
  reg [31:0] _RAND_197;
  reg [31:0] _RAND_198;
  reg [31:0] _RAND_199;
  reg [31:0] _RAND_200;
  reg [31:0] _RAND_201;
  reg [31:0] _RAND_202;
  reg [31:0] _RAND_203;
  reg [31:0] _RAND_204;
  reg [31:0] _RAND_205;
  reg [31:0] _RAND_206;
  reg [31:0] _RAND_207;
  reg [31:0] _RAND_208;
  reg [31:0] _RAND_209;
  reg [31:0] _RAND_210;
  reg [31:0] _RAND_211;
  reg [31:0] _RAND_212;
  reg [31:0] _RAND_213;
  reg [31:0] _RAND_214;
  reg [31:0] _RAND_215;
  reg [31:0] _RAND_216;
  reg [31:0] _RAND_217;
  reg [31:0] _RAND_218;
  reg [31:0] _RAND_219;
  reg [31:0] _RAND_220;
  reg [31:0] _RAND_221;
  reg [31:0] _RAND_222;
  reg [31:0] _RAND_223;
  reg [31:0] _RAND_224;
  reg [31:0] _RAND_225;
  reg [31:0] _RAND_226;
  reg [31:0] _RAND_227;
  reg [31:0] _RAND_228;
  reg [31:0] _RAND_229;
  reg [31:0] _RAND_230;
  reg [31:0] _RAND_231;
  reg [31:0] _RAND_232;
  reg [31:0] _RAND_233;
  reg [31:0] _RAND_234;
  reg [31:0] _RAND_235;
  reg [31:0] _RAND_236;
  reg [31:0] _RAND_237;
  reg [31:0] _RAND_238;
  reg [31:0] _RAND_239;
  reg [31:0] _RAND_240;
  reg [31:0] _RAND_241;
  reg [31:0] _RAND_242;
  reg [31:0] _RAND_243;
  reg [31:0] _RAND_244;
  reg [31:0] _RAND_245;
  reg [31:0] _RAND_246;
  reg [31:0] _RAND_247;
  reg [31:0] _RAND_248;
  reg [31:0] _RAND_249;
  reg [31:0] _RAND_250;
  reg [31:0] _RAND_251;
  reg [31:0] _RAND_252;
  reg [31:0] _RAND_253;
  reg [31:0] _RAND_254;
  reg [31:0] _RAND_255;
  reg [31:0] _RAND_256;
  reg [31:0] _RAND_257;
  reg [31:0] _RAND_258;
  reg [31:0] _RAND_259;
  reg [31:0] _RAND_260;
  reg [31:0] _RAND_261;
  reg [31:0] _RAND_262;
  reg [31:0] _RAND_263;
  reg [31:0] _RAND_264;
  reg [31:0] _RAND_265;
  reg [31:0] _RAND_266;
  reg [31:0] _RAND_267;
  reg [31:0] _RAND_268;
  reg [31:0] _RAND_269;
  reg [31:0] _RAND_270;
  reg [31:0] _RAND_271;
  reg [31:0] _RAND_272;
  reg [31:0] _RAND_273;
  reg [31:0] _RAND_274;
  reg [31:0] _RAND_275;
  reg [31:0] _RAND_276;
  reg [31:0] _RAND_277;
  reg [31:0] _RAND_278;
  reg [31:0] _RAND_279;
  reg [31:0] _RAND_280;
  reg [31:0] _RAND_281;
  reg [31:0] _RAND_282;
  reg [31:0] _RAND_283;
  reg [31:0] _RAND_284;
  reg [31:0] _RAND_285;
  reg [31:0] _RAND_286;
  reg [31:0] _RAND_287;
  reg [31:0] _RAND_288;
  reg [31:0] _RAND_289;
  reg [31:0] _RAND_290;
  reg [31:0] _RAND_291;
  reg [31:0] _RAND_292;
  reg [31:0] _RAND_293;
  reg [31:0] _RAND_294;
  reg [31:0] _RAND_295;
  reg [31:0] _RAND_296;
  reg [31:0] _RAND_297;
  reg [31:0] _RAND_298;
  reg [31:0] _RAND_299;
  reg [31:0] _RAND_300;
  reg [31:0] _RAND_301;
  reg [31:0] _RAND_302;
  reg [31:0] _RAND_303;
  reg [31:0] _RAND_304;
  reg [31:0] _RAND_305;
  reg [31:0] _RAND_306;
  reg [31:0] _RAND_307;
  reg [31:0] _RAND_308;
  reg [31:0] _RAND_309;
  reg [31:0] _RAND_310;
  reg [31:0] _RAND_311;
  reg [31:0] _RAND_312;
  reg [31:0] _RAND_313;
  reg [31:0] _RAND_314;
  reg [31:0] _RAND_315;
  reg [31:0] _RAND_316;
  reg [31:0] _RAND_317;
  reg [31:0] _RAND_318;
  reg [31:0] _RAND_319;
  reg [31:0] _RAND_320;
  reg [31:0] _RAND_321;
  reg [31:0] _RAND_322;
  reg [31:0] _RAND_323;
  reg [31:0] _RAND_324;
  reg [31:0] _RAND_325;
  reg [31:0] _RAND_326;
  reg [31:0] _RAND_327;
  reg [31:0] _RAND_328;
  reg [31:0] _RAND_329;
`endif // RANDOMIZE_REG_INIT
  wire  FP_multiplier_10ccs_clock; // @[FloatingPointDesigns.scala 2010:65]
  wire  FP_multiplier_10ccs_reset; // @[FloatingPointDesigns.scala 2010:65]
  wire [31:0] FP_multiplier_10ccs_io_in_a; // @[FloatingPointDesigns.scala 2010:65]
  wire [31:0] FP_multiplier_10ccs_io_in_b; // @[FloatingPointDesigns.scala 2010:65]
  wire [31:0] FP_multiplier_10ccs_io_out_s; // @[FloatingPointDesigns.scala 2010:65]
  wire  FP_multiplier_10ccs_1_clock; // @[FloatingPointDesigns.scala 2010:65]
  wire  FP_multiplier_10ccs_1_reset; // @[FloatingPointDesigns.scala 2010:65]
  wire [31:0] FP_multiplier_10ccs_1_io_in_a; // @[FloatingPointDesigns.scala 2010:65]
  wire [31:0] FP_multiplier_10ccs_1_io_in_b; // @[FloatingPointDesigns.scala 2010:65]
  wire [31:0] FP_multiplier_10ccs_1_io_out_s; // @[FloatingPointDesigns.scala 2010:65]
  wire  FP_multiplier_10ccs_2_clock; // @[FloatingPointDesigns.scala 2010:65]
  wire  FP_multiplier_10ccs_2_reset; // @[FloatingPointDesigns.scala 2010:65]
  wire [31:0] FP_multiplier_10ccs_2_io_in_a; // @[FloatingPointDesigns.scala 2010:65]
  wire [31:0] FP_multiplier_10ccs_2_io_in_b; // @[FloatingPointDesigns.scala 2010:65]
  wire [31:0] FP_multiplier_10ccs_2_io_out_s; // @[FloatingPointDesigns.scala 2010:65]
  wire  FP_multiplier_10ccs_3_clock; // @[FloatingPointDesigns.scala 2010:65]
  wire  FP_multiplier_10ccs_3_reset; // @[FloatingPointDesigns.scala 2010:65]
  wire [31:0] FP_multiplier_10ccs_3_io_in_a; // @[FloatingPointDesigns.scala 2010:65]
  wire [31:0] FP_multiplier_10ccs_3_io_in_b; // @[FloatingPointDesigns.scala 2010:65]
  wire [31:0] FP_multiplier_10ccs_3_io_out_s; // @[FloatingPointDesigns.scala 2010:65]
  wire  FP_multiplier_10ccs_4_clock; // @[FloatingPointDesigns.scala 2010:65]
  wire  FP_multiplier_10ccs_4_reset; // @[FloatingPointDesigns.scala 2010:65]
  wire [31:0] FP_multiplier_10ccs_4_io_in_a; // @[FloatingPointDesigns.scala 2010:65]
  wire [31:0] FP_multiplier_10ccs_4_io_in_b; // @[FloatingPointDesigns.scala 2010:65]
  wire [31:0] FP_multiplier_10ccs_4_io_out_s; // @[FloatingPointDesigns.scala 2010:65]
  wire  FP_multiplier_10ccs_5_clock; // @[FloatingPointDesigns.scala 2010:65]
  wire  FP_multiplier_10ccs_5_reset; // @[FloatingPointDesigns.scala 2010:65]
  wire [31:0] FP_multiplier_10ccs_5_io_in_a; // @[FloatingPointDesigns.scala 2010:65]
  wire [31:0] FP_multiplier_10ccs_5_io_in_b; // @[FloatingPointDesigns.scala 2010:65]
  wire [31:0] FP_multiplier_10ccs_5_io_out_s; // @[FloatingPointDesigns.scala 2010:65]
  wire  FP_subtractor_13ccs_clock; // @[FloatingPointDesigns.scala 2011:50]
  wire  FP_subtractor_13ccs_reset; // @[FloatingPointDesigns.scala 2011:50]
  wire [31:0] FP_subtractor_13ccs_io_in_a; // @[FloatingPointDesigns.scala 2011:50]
  wire [31:0] FP_subtractor_13ccs_io_in_b; // @[FloatingPointDesigns.scala 2011:50]
  wire [31:0] FP_subtractor_13ccs_io_out_s; // @[FloatingPointDesigns.scala 2011:50]
  wire  FP_subtractor_13ccs_1_clock; // @[FloatingPointDesigns.scala 2011:50]
  wire  FP_subtractor_13ccs_1_reset; // @[FloatingPointDesigns.scala 2011:50]
  wire [31:0] FP_subtractor_13ccs_1_io_in_a; // @[FloatingPointDesigns.scala 2011:50]
  wire [31:0] FP_subtractor_13ccs_1_io_in_b; // @[FloatingPointDesigns.scala 2011:50]
  wire [31:0] FP_subtractor_13ccs_1_io_out_s; // @[FloatingPointDesigns.scala 2011:50]
  wire  multiplier4_clock; // @[FloatingPointDesigns.scala 2090:29]
  wire  multiplier4_reset; // @[FloatingPointDesigns.scala 2090:29]
  wire [31:0] multiplier4_io_in_a; // @[FloatingPointDesigns.scala 2090:29]
  wire [31:0] multiplier4_io_in_b; // @[FloatingPointDesigns.scala 2090:29]
  wire [31:0] multiplier4_io_out_s; // @[FloatingPointDesigns.scala 2090:29]
  wire  FP_multiplier_10ccs_6_clock; // @[FloatingPointDesigns.scala 2102:69]
  wire  FP_multiplier_10ccs_6_reset; // @[FloatingPointDesigns.scala 2102:69]
  wire [31:0] FP_multiplier_10ccs_6_io_in_a; // @[FloatingPointDesigns.scala 2102:69]
  wire [31:0] FP_multiplier_10ccs_6_io_in_b; // @[FloatingPointDesigns.scala 2102:69]
  wire [31:0] FP_multiplier_10ccs_6_io_out_s; // @[FloatingPointDesigns.scala 2102:69]
  wire  FP_multiplier_10ccs_7_clock; // @[FloatingPointDesigns.scala 2102:69]
  wire  FP_multiplier_10ccs_7_reset; // @[FloatingPointDesigns.scala 2102:69]
  wire [31:0] FP_multiplier_10ccs_7_io_in_a; // @[FloatingPointDesigns.scala 2102:69]
  wire [31:0] FP_multiplier_10ccs_7_io_in_b; // @[FloatingPointDesigns.scala 2102:69]
  wire [31:0] FP_multiplier_10ccs_7_io_out_s; // @[FloatingPointDesigns.scala 2102:69]
  wire  FP_multiplier_10ccs_8_clock; // @[FloatingPointDesigns.scala 2102:69]
  wire  FP_multiplier_10ccs_8_reset; // @[FloatingPointDesigns.scala 2102:69]
  wire [31:0] FP_multiplier_10ccs_8_io_in_a; // @[FloatingPointDesigns.scala 2102:69]
  wire [31:0] FP_multiplier_10ccs_8_io_in_b; // @[FloatingPointDesigns.scala 2102:69]
  wire [31:0] FP_multiplier_10ccs_8_io_out_s; // @[FloatingPointDesigns.scala 2102:69]
  wire  FP_multiplier_10ccs_9_clock; // @[FloatingPointDesigns.scala 2102:69]
  wire  FP_multiplier_10ccs_9_reset; // @[FloatingPointDesigns.scala 2102:69]
  wire [31:0] FP_multiplier_10ccs_9_io_in_a; // @[FloatingPointDesigns.scala 2102:69]
  wire [31:0] FP_multiplier_10ccs_9_io_in_b; // @[FloatingPointDesigns.scala 2102:69]
  wire [31:0] FP_multiplier_10ccs_9_io_out_s; // @[FloatingPointDesigns.scala 2102:69]
  wire  FP_multiplier_10ccs_10_clock; // @[FloatingPointDesigns.scala 2102:69]
  wire  FP_multiplier_10ccs_10_reset; // @[FloatingPointDesigns.scala 2102:69]
  wire [31:0] FP_multiplier_10ccs_10_io_in_a; // @[FloatingPointDesigns.scala 2102:69]
  wire [31:0] FP_multiplier_10ccs_10_io_in_b; // @[FloatingPointDesigns.scala 2102:69]
  wire [31:0] FP_multiplier_10ccs_10_io_out_s; // @[FloatingPointDesigns.scala 2102:69]
  wire  FP_multiplier_10ccs_11_clock; // @[FloatingPointDesigns.scala 2102:69]
  wire  FP_multiplier_10ccs_11_reset; // @[FloatingPointDesigns.scala 2102:69]
  wire [31:0] FP_multiplier_10ccs_11_io_in_a; // @[FloatingPointDesigns.scala 2102:69]
  wire [31:0] FP_multiplier_10ccs_11_io_in_b; // @[FloatingPointDesigns.scala 2102:69]
  wire [31:0] FP_multiplier_10ccs_11_io_out_s; // @[FloatingPointDesigns.scala 2102:69]
  wire  FP_subtractor_13ccs_2_clock; // @[FloatingPointDesigns.scala 2103:54]
  wire  FP_subtractor_13ccs_2_reset; // @[FloatingPointDesigns.scala 2103:54]
  wire [31:0] FP_subtractor_13ccs_2_io_in_a; // @[FloatingPointDesigns.scala 2103:54]
  wire [31:0] FP_subtractor_13ccs_2_io_in_b; // @[FloatingPointDesigns.scala 2103:54]
  wire [31:0] FP_subtractor_13ccs_2_io_out_s; // @[FloatingPointDesigns.scala 2103:54]
  wire  FP_subtractor_13ccs_3_clock; // @[FloatingPointDesigns.scala 2103:54]
  wire  FP_subtractor_13ccs_3_reset; // @[FloatingPointDesigns.scala 2103:54]
  wire [31:0] FP_subtractor_13ccs_3_io_in_a; // @[FloatingPointDesigns.scala 2103:54]
  wire [31:0] FP_subtractor_13ccs_3_io_in_b; // @[FloatingPointDesigns.scala 2103:54]
  wire [31:0] FP_subtractor_13ccs_3_io_out_s; // @[FloatingPointDesigns.scala 2103:54]
  wire  FP_subtractor_13ccs_4_clock; // @[FloatingPointDesigns.scala 2103:54]
  wire  FP_subtractor_13ccs_4_reset; // @[FloatingPointDesigns.scala 2103:54]
  wire [31:0] FP_subtractor_13ccs_4_io_in_a; // @[FloatingPointDesigns.scala 2103:54]
  wire [31:0] FP_subtractor_13ccs_4_io_in_b; // @[FloatingPointDesigns.scala 2103:54]
  wire [31:0] FP_subtractor_13ccs_4_io_out_s; // @[FloatingPointDesigns.scala 2103:54]
  wire [31:0] result = 32'h5f3759df - 32'h206487ed; // @[FloatingPointDesigns.scala 2002:25]
  reg [31:0] x_n_0; // @[FloatingPointDesigns.scala 2004:22]
  reg [31:0] x_n_1; // @[FloatingPointDesigns.scala 2004:22]
  reg [31:0] x_n_2; // @[FloatingPointDesigns.scala 2004:22]
  reg [31:0] x_n_4; // @[FloatingPointDesigns.scala 2004:22]
  reg [31:0] x_n_5; // @[FloatingPointDesigns.scala 2004:22]
  reg [31:0] x_n_6; // @[FloatingPointDesigns.scala 2004:22]
  reg [31:0] a_2_0; // @[FloatingPointDesigns.scala 2005:22]
  reg [31:0] a_2_1; // @[FloatingPointDesigns.scala 2005:22]
  reg [31:0] a_2_2; // @[FloatingPointDesigns.scala 2005:22]
  reg [31:0] a_2_3; // @[FloatingPointDesigns.scala 2005:22]
  reg [31:0] a_2_4; // @[FloatingPointDesigns.scala 2005:22]
  reg [31:0] a_2_5; // @[FloatingPointDesigns.scala 2005:22]
  reg [31:0] a_2_6; // @[FloatingPointDesigns.scala 2005:22]
  reg [31:0] a_2_7; // @[FloatingPointDesigns.scala 2005:22]
  reg [31:0] stage1_regs_0_0_0; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_0_0_1; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_0_0_2; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_0_0_3; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_0_0_4; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_0_0_5; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_0_0_6; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_0_0_7; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_0_0_8; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_0_1_0; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_0_1_1; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_0_1_2; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_0_1_3; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_0_1_4; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_0_1_5; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_0_1_6; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_0_1_7; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_0_1_8; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_1_0_0; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_1_0_1; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_1_0_2; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_1_0_3; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_1_0_4; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_1_0_5; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_1_0_6; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_1_0_7; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_1_0_8; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_1_1_0; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_1_1_1; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_1_1_2; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_1_1_3; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_1_1_4; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_1_1_5; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_1_1_6; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_1_1_7; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage1_regs_1_1_8; // @[FloatingPointDesigns.scala 2006:30]
  reg [31:0] stage2_regs_0_0_0; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_0_0_1; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_0_0_2; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_0_0_3; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_0_0_4; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_0_0_5; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_0_0_6; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_0_0_7; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_0_0_8; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_0_1_0; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_0_1_1; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_0_1_2; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_0_1_3; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_0_1_4; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_0_1_5; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_0_1_6; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_0_1_7; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_0_1_8; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_1_0_0; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_1_0_1; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_1_0_2; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_1_0_3; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_1_0_4; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_1_0_5; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_1_0_6; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_1_0_7; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_1_0_8; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_1_1_0; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_1_1_1; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_1_1_2; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_1_1_3; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_1_1_4; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_1_1_5; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_1_1_6; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_1_1_7; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage2_regs_1_1_8; // @[FloatingPointDesigns.scala 2007:30]
  reg [31:0] stage3_regs_0_0_0; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_0_0_1; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_0_0_2; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_0_0_3; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_0_0_4; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_0_0_5; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_0_0_6; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_0_0_7; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_0_0_8; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_0_0_9; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_0_0_10; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_0_0_11; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_0_1_0; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_0_1_1; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_0_1_2; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_0_1_3; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_0_1_4; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_0_1_5; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_0_1_6; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_0_1_7; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_0_1_8; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_0_1_9; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_0_1_10; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_0_1_11; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_1_0_0; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_1_0_1; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_1_0_2; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_1_0_3; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_1_0_4; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_1_0_5; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_1_0_6; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_1_0_7; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_1_0_8; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_1_0_9; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_1_0_10; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_1_0_11; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_1_1_0; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_1_1_1; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_1_1_2; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_1_1_3; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_1_1_4; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_1_1_5; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_1_1_6; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_1_1_7; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_1_1_8; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_1_1_9; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_1_1_10; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage3_regs_1_1_11; // @[FloatingPointDesigns.scala 2008:30]
  reg [31:0] stage4_regs_0_1_0; // @[FloatingPointDesigns.scala 2009:30]
  reg [31:0] stage4_regs_0_1_1; // @[FloatingPointDesigns.scala 2009:30]
  reg [31:0] stage4_regs_0_1_2; // @[FloatingPointDesigns.scala 2009:30]
  reg [31:0] stage4_regs_0_1_3; // @[FloatingPointDesigns.scala 2009:30]
  reg [31:0] stage4_regs_0_1_4; // @[FloatingPointDesigns.scala 2009:30]
  reg [31:0] stage4_regs_0_1_5; // @[FloatingPointDesigns.scala 2009:30]
  reg [31:0] stage4_regs_0_1_6; // @[FloatingPointDesigns.scala 2009:30]
  reg [31:0] stage4_regs_0_1_7; // @[FloatingPointDesigns.scala 2009:30]
  reg [31:0] stage4_regs_0_1_8; // @[FloatingPointDesigns.scala 2009:30]
  reg [31:0] stage4_regs_1_1_0; // @[FloatingPointDesigns.scala 2009:30]
  reg [31:0] stage4_regs_1_1_1; // @[FloatingPointDesigns.scala 2009:30]
  reg [31:0] stage4_regs_1_1_2; // @[FloatingPointDesigns.scala 2009:30]
  reg [31:0] stage4_regs_1_1_3; // @[FloatingPointDesigns.scala 2009:30]
  reg [31:0] stage4_regs_1_1_4; // @[FloatingPointDesigns.scala 2009:30]
  reg [31:0] stage4_regs_1_1_5; // @[FloatingPointDesigns.scala 2009:30]
  reg [31:0] stage4_regs_1_1_6; // @[FloatingPointDesigns.scala 2009:30]
  reg [31:0] stage4_regs_1_1_7; // @[FloatingPointDesigns.scala 2009:30]
  reg [31:0] stage4_regs_1_1_8; // @[FloatingPointDesigns.scala 2009:30]
  wire [7:0] _a_2_0_T_3 = 8'h81 - 8'h1; // @[FloatingPointDesigns.scala 2035:75]
  wire [31:0] _a_2_0_T_6 = {1'h0,_a_2_0_T_3,23'h490fdb}; // @[FloatingPointDesigns.scala 2035:82]
  wire [31:0] _GEN_139 = FP_multiplier_10ccs_2_io_out_s; // @[FloatingPointDesigns.scala 2004:22 2042:28 2043:26]
  reg [31:0] a_2_isr_to_r; // @[FloatingPointDesigns.scala 2080:31]
  reg [31:0] transition_regs_0; // @[FloatingPointDesigns.scala 2081:34]
  reg [31:0] transition_regs_1; // @[FloatingPointDesigns.scala 2081:34]
  reg [31:0] transition_regs_2; // @[FloatingPointDesigns.scala 2081:34]
  reg [31:0] transition_regs_3; // @[FloatingPointDesigns.scala 2081:34]
  reg [31:0] transition_regs_4; // @[FloatingPointDesigns.scala 2081:34]
  reg [31:0] transition_regs_5; // @[FloatingPointDesigns.scala 2081:34]
  reg [31:0] transition_regs_6; // @[FloatingPointDesigns.scala 2081:34]
  reg [31:0] transition_regs_7; // @[FloatingPointDesigns.scala 2081:34]
  reg [31:0] transition_regs_8; // @[FloatingPointDesigns.scala 2081:34]
  wire [7:0] _a_2_isr_to_r_T_3 = stage4_regs_1_1_8[30:23] + 8'h1; // @[FloatingPointDesigns.scala 2083:115]
  wire [31:0] _a_2_isr_to_r_T_6 = {stage4_regs_1_1_8[31],_a_2_isr_to_r_T_3,stage4_regs_1_1_8[22:0]}; // @[FloatingPointDesigns.scala 2083:122]
  reg [31:0] x_n_r_0; // @[FloatingPointDesigns.scala 2097:24]
  reg [31:0] x_n_r_1; // @[FloatingPointDesigns.scala 2097:24]
  reg [31:0] x_n_r_3; // @[FloatingPointDesigns.scala 2097:24]
  reg [31:0] x_n_r_4; // @[FloatingPointDesigns.scala 2097:24]
  reg [31:0] x_n_r_6; // @[FloatingPointDesigns.scala 2097:24]
  reg [31:0] x_n_r_7; // @[FloatingPointDesigns.scala 2097:24]
  reg [31:0] a_2_r_0; // @[FloatingPointDesigns.scala 2098:24]
  reg [31:0] a_2_r_1; // @[FloatingPointDesigns.scala 2098:24]
  reg [31:0] a_2_r_2; // @[FloatingPointDesigns.scala 2098:24]
  reg [31:0] a_2_r_3; // @[FloatingPointDesigns.scala 2098:24]
  reg [31:0] a_2_r_4; // @[FloatingPointDesigns.scala 2098:24]
  reg [31:0] a_2_r_5; // @[FloatingPointDesigns.scala 2098:24]
  reg [31:0] a_2_r_6; // @[FloatingPointDesigns.scala 2098:24]
  reg [31:0] a_2_r_7; // @[FloatingPointDesigns.scala 2098:24]
  reg [31:0] a_2_r_8; // @[FloatingPointDesigns.scala 2098:24]
  reg [31:0] stage1_regs_r_0_0_0; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_0_0_1; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_0_0_2; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_0_0_3; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_0_0_4; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_0_0_5; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_0_0_6; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_0_0_7; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_0_0_8; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_0_1_0; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_0_1_1; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_0_1_2; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_0_1_3; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_0_1_4; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_0_1_5; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_0_1_6; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_0_1_7; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_0_1_8; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_1_0_0; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_1_0_1; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_1_0_2; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_1_0_3; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_1_0_4; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_1_0_5; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_1_0_6; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_1_0_7; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_1_0_8; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_1_1_0; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_1_1_1; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_1_1_2; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_1_1_3; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_1_1_4; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_1_1_5; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_1_1_6; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_1_1_7; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_1_1_8; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_2_0_0; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_2_0_1; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_2_0_2; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_2_0_3; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_2_0_4; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_2_0_5; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_2_0_6; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_2_0_7; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_2_0_8; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_2_1_0; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_2_1_1; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_2_1_2; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_2_1_3; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_2_1_4; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_2_1_5; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_2_1_6; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_2_1_7; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage1_regs_r_2_1_8; // @[FloatingPointDesigns.scala 2099:32]
  reg [31:0] stage2_regs_r_0_0_0; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_0_0_1; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_0_0_2; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_0_0_3; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_0_0_4; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_0_0_5; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_0_0_6; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_0_0_7; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_0_0_8; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_0_0_9; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_0_0_10; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_0_0_11; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_0_1_0; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_0_1_1; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_0_1_2; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_0_1_3; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_0_1_4; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_0_1_5; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_0_1_6; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_0_1_7; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_0_1_8; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_0_1_9; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_0_1_10; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_0_1_11; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_1_0_0; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_1_0_1; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_1_0_2; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_1_0_3; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_1_0_4; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_1_0_5; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_1_0_6; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_1_0_7; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_1_0_8; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_1_0_9; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_1_0_10; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_1_0_11; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_1_1_0; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_1_1_1; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_1_1_2; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_1_1_3; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_1_1_4; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_1_1_5; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_1_1_6; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_1_1_7; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_1_1_8; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_1_1_9; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_1_1_10; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_1_1_11; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_2_0_0; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_2_0_1; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_2_0_2; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_2_0_3; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_2_0_4; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_2_0_5; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_2_0_6; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_2_0_7; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_2_0_8; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_2_0_9; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_2_0_10; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_2_0_11; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_2_1_0; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_2_1_1; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_2_1_2; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_2_1_3; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_2_1_4; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_2_1_5; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_2_1_6; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_2_1_7; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_2_1_8; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_2_1_9; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_2_1_10; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage2_regs_r_2_1_11; // @[FloatingPointDesigns.scala 2100:32]
  reg [31:0] stage3_regs_r_0_1_0; // @[FloatingPointDesigns.scala 2101:32]
  reg [31:0] stage3_regs_r_0_1_1; // @[FloatingPointDesigns.scala 2101:32]
  reg [31:0] stage3_regs_r_0_1_2; // @[FloatingPointDesigns.scala 2101:32]
  reg [31:0] stage3_regs_r_0_1_3; // @[FloatingPointDesigns.scala 2101:32]
  reg [31:0] stage3_regs_r_0_1_4; // @[FloatingPointDesigns.scala 2101:32]
  reg [31:0] stage3_regs_r_0_1_5; // @[FloatingPointDesigns.scala 2101:32]
  reg [31:0] stage3_regs_r_0_1_6; // @[FloatingPointDesigns.scala 2101:32]
  reg [31:0] stage3_regs_r_0_1_7; // @[FloatingPointDesigns.scala 2101:32]
  reg [31:0] stage3_regs_r_0_1_8; // @[FloatingPointDesigns.scala 2101:32]
  reg [31:0] stage3_regs_r_1_1_0; // @[FloatingPointDesigns.scala 2101:32]
  reg [31:0] stage3_regs_r_1_1_1; // @[FloatingPointDesigns.scala 2101:32]
  reg [31:0] stage3_regs_r_1_1_2; // @[FloatingPointDesigns.scala 2101:32]
  reg [31:0] stage3_regs_r_1_1_3; // @[FloatingPointDesigns.scala 2101:32]
  reg [31:0] stage3_regs_r_1_1_4; // @[FloatingPointDesigns.scala 2101:32]
  reg [31:0] stage3_regs_r_1_1_5; // @[FloatingPointDesigns.scala 2101:32]
  reg [31:0] stage3_regs_r_1_1_6; // @[FloatingPointDesigns.scala 2101:32]
  reg [31:0] stage3_regs_r_1_1_7; // @[FloatingPointDesigns.scala 2101:32]
  reg [31:0] stage3_regs_r_1_1_8; // @[FloatingPointDesigns.scala 2101:32]
  reg [31:0] stage3_regs_r_2_1_0; // @[FloatingPointDesigns.scala 2101:32]
  reg [31:0] stage3_regs_r_2_1_1; // @[FloatingPointDesigns.scala 2101:32]
  reg [31:0] stage3_regs_r_2_1_2; // @[FloatingPointDesigns.scala 2101:32]
  reg [31:0] stage3_regs_r_2_1_3; // @[FloatingPointDesigns.scala 2101:32]
  reg [31:0] stage3_regs_r_2_1_4; // @[FloatingPointDesigns.scala 2101:32]
  reg [31:0] stage3_regs_r_2_1_5; // @[FloatingPointDesigns.scala 2101:32]
  reg [31:0] stage3_regs_r_2_1_6; // @[FloatingPointDesigns.scala 2101:32]
  reg [31:0] stage3_regs_r_2_1_7; // @[FloatingPointDesigns.scala 2101:32]
  reg [31:0] stage3_regs_r_2_1_8; // @[FloatingPointDesigns.scala 2101:32]
  wire [31:0] _GEN_209 = multiplier4_io_out_s; // @[FloatingPointDesigns.scala 2097:24 2122:28 2123:28]
  wire [31:0] _GEN_265 = FP_multiplier_10ccs_7_io_out_s; // @[FloatingPointDesigns.scala 2097:24 2131:28 2132:28]
  wire [31:0] _GEN_321 = FP_multiplier_10ccs_9_io_out_s; // @[FloatingPointDesigns.scala 2097:24 2131:28 2132:28]
  FP_multiplier_10ccs FP_multiplier_10ccs ( // @[FloatingPointDesigns.scala 2010:65]
    .clock(FP_multiplier_10ccs_clock),
    .reset(FP_multiplier_10ccs_reset),
    .io_in_a(FP_multiplier_10ccs_io_in_a),
    .io_in_b(FP_multiplier_10ccs_io_in_b),
    .io_out_s(FP_multiplier_10ccs_io_out_s)
  );
  FP_multiplier_10ccs FP_multiplier_10ccs_1 ( // @[FloatingPointDesigns.scala 2010:65]
    .clock(FP_multiplier_10ccs_1_clock),
    .reset(FP_multiplier_10ccs_1_reset),
    .io_in_a(FP_multiplier_10ccs_1_io_in_a),
    .io_in_b(FP_multiplier_10ccs_1_io_in_b),
    .io_out_s(FP_multiplier_10ccs_1_io_out_s)
  );
  FP_multiplier_10ccs FP_multiplier_10ccs_2 ( // @[FloatingPointDesigns.scala 2010:65]
    .clock(FP_multiplier_10ccs_2_clock),
    .reset(FP_multiplier_10ccs_2_reset),
    .io_in_a(FP_multiplier_10ccs_2_io_in_a),
    .io_in_b(FP_multiplier_10ccs_2_io_in_b),
    .io_out_s(FP_multiplier_10ccs_2_io_out_s)
  );
  FP_multiplier_10ccs FP_multiplier_10ccs_3 ( // @[FloatingPointDesigns.scala 2010:65]
    .clock(FP_multiplier_10ccs_3_clock),
    .reset(FP_multiplier_10ccs_3_reset),
    .io_in_a(FP_multiplier_10ccs_3_io_in_a),
    .io_in_b(FP_multiplier_10ccs_3_io_in_b),
    .io_out_s(FP_multiplier_10ccs_3_io_out_s)
  );
  FP_multiplier_10ccs FP_multiplier_10ccs_4 ( // @[FloatingPointDesigns.scala 2010:65]
    .clock(FP_multiplier_10ccs_4_clock),
    .reset(FP_multiplier_10ccs_4_reset),
    .io_in_a(FP_multiplier_10ccs_4_io_in_a),
    .io_in_b(FP_multiplier_10ccs_4_io_in_b),
    .io_out_s(FP_multiplier_10ccs_4_io_out_s)
  );
  FP_multiplier_10ccs FP_multiplier_10ccs_5 ( // @[FloatingPointDesigns.scala 2010:65]
    .clock(FP_multiplier_10ccs_5_clock),
    .reset(FP_multiplier_10ccs_5_reset),
    .io_in_a(FP_multiplier_10ccs_5_io_in_a),
    .io_in_b(FP_multiplier_10ccs_5_io_in_b),
    .io_out_s(FP_multiplier_10ccs_5_io_out_s)
  );
  FP_subtractor_13ccs FP_subtractor_13ccs ( // @[FloatingPointDesigns.scala 2011:50]
    .clock(FP_subtractor_13ccs_clock),
    .reset(FP_subtractor_13ccs_reset),
    .io_in_a(FP_subtractor_13ccs_io_in_a),
    .io_in_b(FP_subtractor_13ccs_io_in_b),
    .io_out_s(FP_subtractor_13ccs_io_out_s)
  );
  FP_subtractor_13ccs FP_subtractor_13ccs_1 ( // @[FloatingPointDesigns.scala 2011:50]
    .clock(FP_subtractor_13ccs_1_clock),
    .reset(FP_subtractor_13ccs_1_reset),
    .io_in_a(FP_subtractor_13ccs_1_io_in_a),
    .io_in_b(FP_subtractor_13ccs_1_io_in_b),
    .io_out_s(FP_subtractor_13ccs_1_io_out_s)
  );
  FP_multiplier_10ccs multiplier4 ( // @[FloatingPointDesigns.scala 2090:29]
    .clock(multiplier4_clock),
    .reset(multiplier4_reset),
    .io_in_a(multiplier4_io_in_a),
    .io_in_b(multiplier4_io_in_b),
    .io_out_s(multiplier4_io_out_s)
  );
  FP_multiplier_10ccs FP_multiplier_10ccs_6 ( // @[FloatingPointDesigns.scala 2102:69]
    .clock(FP_multiplier_10ccs_6_clock),
    .reset(FP_multiplier_10ccs_6_reset),
    .io_in_a(FP_multiplier_10ccs_6_io_in_a),
    .io_in_b(FP_multiplier_10ccs_6_io_in_b),
    .io_out_s(FP_multiplier_10ccs_6_io_out_s)
  );
  FP_multiplier_10ccs FP_multiplier_10ccs_7 ( // @[FloatingPointDesigns.scala 2102:69]
    .clock(FP_multiplier_10ccs_7_clock),
    .reset(FP_multiplier_10ccs_7_reset),
    .io_in_a(FP_multiplier_10ccs_7_io_in_a),
    .io_in_b(FP_multiplier_10ccs_7_io_in_b),
    .io_out_s(FP_multiplier_10ccs_7_io_out_s)
  );
  FP_multiplier_10ccs FP_multiplier_10ccs_8 ( // @[FloatingPointDesigns.scala 2102:69]
    .clock(FP_multiplier_10ccs_8_clock),
    .reset(FP_multiplier_10ccs_8_reset),
    .io_in_a(FP_multiplier_10ccs_8_io_in_a),
    .io_in_b(FP_multiplier_10ccs_8_io_in_b),
    .io_out_s(FP_multiplier_10ccs_8_io_out_s)
  );
  FP_multiplier_10ccs FP_multiplier_10ccs_9 ( // @[FloatingPointDesigns.scala 2102:69]
    .clock(FP_multiplier_10ccs_9_clock),
    .reset(FP_multiplier_10ccs_9_reset),
    .io_in_a(FP_multiplier_10ccs_9_io_in_a),
    .io_in_b(FP_multiplier_10ccs_9_io_in_b),
    .io_out_s(FP_multiplier_10ccs_9_io_out_s)
  );
  FP_multiplier_10ccs FP_multiplier_10ccs_10 ( // @[FloatingPointDesigns.scala 2102:69]
    .clock(FP_multiplier_10ccs_10_clock),
    .reset(FP_multiplier_10ccs_10_reset),
    .io_in_a(FP_multiplier_10ccs_10_io_in_a),
    .io_in_b(FP_multiplier_10ccs_10_io_in_b),
    .io_out_s(FP_multiplier_10ccs_10_io_out_s)
  );
  FP_multiplier_10ccs FP_multiplier_10ccs_11 ( // @[FloatingPointDesigns.scala 2102:69]
    .clock(FP_multiplier_10ccs_11_clock),
    .reset(FP_multiplier_10ccs_11_reset),
    .io_in_a(FP_multiplier_10ccs_11_io_in_a),
    .io_in_b(FP_multiplier_10ccs_11_io_in_b),
    .io_out_s(FP_multiplier_10ccs_11_io_out_s)
  );
  FP_subtractor_13ccs FP_subtractor_13ccs_2 ( // @[FloatingPointDesigns.scala 2103:54]
    .clock(FP_subtractor_13ccs_2_clock),
    .reset(FP_subtractor_13ccs_2_reset),
    .io_in_a(FP_subtractor_13ccs_2_io_in_a),
    .io_in_b(FP_subtractor_13ccs_2_io_in_b),
    .io_out_s(FP_subtractor_13ccs_2_io_out_s)
  );
  FP_subtractor_13ccs FP_subtractor_13ccs_3 ( // @[FloatingPointDesigns.scala 2103:54]
    .clock(FP_subtractor_13ccs_3_clock),
    .reset(FP_subtractor_13ccs_3_reset),
    .io_in_a(FP_subtractor_13ccs_3_io_in_a),
    .io_in_b(FP_subtractor_13ccs_3_io_in_b),
    .io_out_s(FP_subtractor_13ccs_3_io_out_s)
  );
  FP_subtractor_13ccs FP_subtractor_13ccs_4 ( // @[FloatingPointDesigns.scala 2103:54]
    .clock(FP_subtractor_13ccs_4_clock),
    .reset(FP_subtractor_13ccs_4_reset),
    .io_in_a(FP_subtractor_13ccs_4_io_in_a),
    .io_in_b(FP_subtractor_13ccs_4_io_in_b),
    .io_out_s(FP_subtractor_13ccs_4_io_out_s)
  );
  assign io_out_s = {stage3_regs_r_2_1_8[31],FP_multiplier_10ccs_11_io_out_s[30:0]}; // @[FloatingPointDesigns.scala 2159:58]
  assign FP_multiplier_10ccs_clock = clock;
  assign FP_multiplier_10ccs_reset = reset;
  assign FP_multiplier_10ccs_io_in_a = {1'h0,result[30:0]}; // @[FloatingPointDesigns.scala 2039:48]
  assign FP_multiplier_10ccs_io_in_b = {1'h0,result[30:0]}; // @[FloatingPointDesigns.scala 2040:48]
  assign FP_multiplier_10ccs_1_clock = clock;
  assign FP_multiplier_10ccs_1_reset = reset;
  assign FP_multiplier_10ccs_1_io_in_a = FP_multiplier_10ccs_io_out_s; // @[FloatingPointDesigns.scala 2052:34]
  assign FP_multiplier_10ccs_1_io_in_b = {1'h0,stage1_regs_0_1_8[30:0]}; // @[FloatingPointDesigns.scala 2053:46]
  assign FP_multiplier_10ccs_2_clock = clock;
  assign FP_multiplier_10ccs_2_reset = reset;
  assign FP_multiplier_10ccs_2_io_in_a = {1'h0,stage3_regs_0_0_11[30:0]}; // @[FloatingPointDesigns.scala 2070:46]
  assign FP_multiplier_10ccs_2_io_in_b = FP_subtractor_13ccs_io_out_s; // @[FloatingPointDesigns.scala 2071:34]
  assign FP_multiplier_10ccs_3_clock = clock;
  assign FP_multiplier_10ccs_3_reset = reset;
  assign FP_multiplier_10ccs_3_io_in_a = {1'h0,FP_multiplier_10ccs_2_io_out_s[30:0]}; // @[FloatingPointDesigns.scala 2048:48]
  assign FP_multiplier_10ccs_3_io_in_b = {1'h0,FP_multiplier_10ccs_2_io_out_s[30:0]}; // @[FloatingPointDesigns.scala 2049:48]
  assign FP_multiplier_10ccs_4_clock = clock;
  assign FP_multiplier_10ccs_4_reset = reset;
  assign FP_multiplier_10ccs_4_io_in_a = FP_multiplier_10ccs_3_io_out_s; // @[FloatingPointDesigns.scala 2052:34]
  assign FP_multiplier_10ccs_4_io_in_b = {1'h0,stage1_regs_1_1_8[30:0]}; // @[FloatingPointDesigns.scala 2053:46]
  assign FP_multiplier_10ccs_5_clock = clock;
  assign FP_multiplier_10ccs_5_reset = reset;
  assign FP_multiplier_10ccs_5_io_in_a = {1'h0,stage3_regs_1_0_11[30:0]}; // @[FloatingPointDesigns.scala 2070:46]
  assign FP_multiplier_10ccs_5_io_in_b = FP_subtractor_13ccs_1_io_out_s; // @[FloatingPointDesigns.scala 2071:34]
  assign FP_subtractor_13ccs_clock = clock;
  assign FP_subtractor_13ccs_reset = reset;
  assign FP_subtractor_13ccs_io_in_a = 32'h3fc00000; // @[FloatingPointDesigns.scala 1988:26 1989:16]
  assign FP_subtractor_13ccs_io_in_b = FP_multiplier_10ccs_1_io_out_s; // @[FloatingPointDesigns.scala 2062:31]
  assign FP_subtractor_13ccs_1_clock = clock;
  assign FP_subtractor_13ccs_1_reset = reset;
  assign FP_subtractor_13ccs_1_io_in_a = 32'h3fc00000; // @[FloatingPointDesigns.scala 1988:26 1989:16]
  assign FP_subtractor_13ccs_1_io_in_b = FP_multiplier_10ccs_4_io_out_s; // @[FloatingPointDesigns.scala 2062:31]
  assign multiplier4_clock = clock;
  assign multiplier4_reset = reset;
  assign multiplier4_io_in_a = {1'h0,FP_multiplier_10ccs_5_io_out_s[30:0]}; // @[FloatingPointDesigns.scala 2092:37]
  assign multiplier4_io_in_b = {1'h0,FP_multiplier_10ccs_5_io_out_s[30:0]}; // @[FloatingPointDesigns.scala 2093:37]
  assign FP_multiplier_10ccs_6_clock = clock;
  assign FP_multiplier_10ccs_6_reset = reset;
  assign FP_multiplier_10ccs_6_io_in_a = {1'h0,multiplier4_io_out_s[30:0]}; // @[FloatingPointDesigns.scala 2128:50]
  assign FP_multiplier_10ccs_6_io_in_b = {1'h0,transition_regs_8[30:0]}; // @[FloatingPointDesigns.scala 2129:50]
  assign FP_multiplier_10ccs_7_clock = clock;
  assign FP_multiplier_10ccs_7_reset = reset;
  assign FP_multiplier_10ccs_7_io_in_a = {1'h0,stage2_regs_r_0_0_11[30:0]}; // @[FloatingPointDesigns.scala 2150:48]
  assign FP_multiplier_10ccs_7_io_in_b = FP_subtractor_13ccs_2_io_out_s; // @[FloatingPointDesigns.scala 2151:36]
  assign FP_multiplier_10ccs_8_clock = clock;
  assign FP_multiplier_10ccs_8_reset = reset;
  assign FP_multiplier_10ccs_8_io_in_a = {1'h0,FP_multiplier_10ccs_7_io_out_s[30:0]}; // @[FloatingPointDesigns.scala 2137:50]
  assign FP_multiplier_10ccs_8_io_in_b = {1'h0,stage3_regs_r_0_1_8[30:0]}; // @[FloatingPointDesigns.scala 2138:50]
  assign FP_multiplier_10ccs_9_clock = clock;
  assign FP_multiplier_10ccs_9_reset = reset;
  assign FP_multiplier_10ccs_9_io_in_a = {1'h0,stage2_regs_r_1_0_11[30:0]}; // @[FloatingPointDesigns.scala 2150:48]
  assign FP_multiplier_10ccs_9_io_in_b = FP_subtractor_13ccs_3_io_out_s; // @[FloatingPointDesigns.scala 2151:36]
  assign FP_multiplier_10ccs_10_clock = clock;
  assign FP_multiplier_10ccs_10_reset = reset;
  assign FP_multiplier_10ccs_10_io_in_a = {1'h0,FP_multiplier_10ccs_9_io_out_s[30:0]}; // @[FloatingPointDesigns.scala 2137:50]
  assign FP_multiplier_10ccs_10_io_in_b = {1'h0,stage3_regs_r_1_1_8[30:0]}; // @[FloatingPointDesigns.scala 2138:50]
  assign FP_multiplier_10ccs_11_clock = clock;
  assign FP_multiplier_10ccs_11_reset = reset;
  assign FP_multiplier_10ccs_11_io_in_a = {1'h0,stage2_regs_r_2_0_11[30:0]}; // @[FloatingPointDesigns.scala 2150:48]
  assign FP_multiplier_10ccs_11_io_in_b = FP_subtractor_13ccs_4_io_out_s; // @[FloatingPointDesigns.scala 2151:36]
  assign FP_subtractor_13ccs_2_clock = clock;
  assign FP_subtractor_13ccs_2_reset = reset;
  assign FP_subtractor_13ccs_2_io_in_a = 32'h40000000; // @[FloatingPointDesigns.scala 1990:19 1991:9]
  assign FP_subtractor_13ccs_2_io_in_b = FP_multiplier_10ccs_6_io_out_s; // @[FloatingPointDesigns.scala 2142:33]
  assign FP_subtractor_13ccs_3_clock = clock;
  assign FP_subtractor_13ccs_3_reset = reset;
  assign FP_subtractor_13ccs_3_io_in_a = 32'h40000000; // @[FloatingPointDesigns.scala 1990:19 1991:9]
  assign FP_subtractor_13ccs_3_io_in_b = FP_multiplier_10ccs_8_io_out_s; // @[FloatingPointDesigns.scala 2142:33]
  assign FP_subtractor_13ccs_4_clock = clock;
  assign FP_subtractor_13ccs_4_reset = reset;
  assign FP_subtractor_13ccs_4_io_in_a = 32'h40000000; // @[FloatingPointDesigns.scala 1990:19 1991:9]
  assign FP_subtractor_13ccs_4_io_in_b = FP_multiplier_10ccs_10_io_out_s; // @[FloatingPointDesigns.scala 2142:33]
  always @(posedge clock) begin
    if (reset) begin // @[FloatingPointDesigns.scala 2004:22]
      x_n_0 <= 32'h0; // @[FloatingPointDesigns.scala 2004:22]
    end else begin
      x_n_0 <= result;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2004:22]
      x_n_1 <= 32'h0; // @[FloatingPointDesigns.scala 2004:22]
    end else begin
      x_n_1 <= stage1_regs_0_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2004:22]
      x_n_2 <= 32'h0; // @[FloatingPointDesigns.scala 2004:22]
    end else begin
      x_n_2 <= stage2_regs_0_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2004:22]
      x_n_4 <= 32'h0; // @[FloatingPointDesigns.scala 2004:22]
    end else begin
      x_n_4 <= _GEN_139;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2004:22]
      x_n_5 <= 32'h0; // @[FloatingPointDesigns.scala 2004:22]
    end else begin
      x_n_5 <= stage1_regs_1_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2004:22]
      x_n_6 <= 32'h0; // @[FloatingPointDesigns.scala 2004:22]
    end else begin
      x_n_6 <= stage2_regs_1_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2005:22]
      a_2_0 <= 32'h0; // @[FloatingPointDesigns.scala 2005:22]
    end else begin
      a_2_0 <= _a_2_0_T_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2005:22]
      a_2_1 <= 32'h0; // @[FloatingPointDesigns.scala 2005:22]
    end else begin
      a_2_1 <= stage1_regs_0_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2005:22]
      a_2_2 <= 32'h0; // @[FloatingPointDesigns.scala 2005:22]
    end else begin
      a_2_2 <= stage2_regs_0_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2005:22]
      a_2_3 <= 32'h0; // @[FloatingPointDesigns.scala 2005:22]
    end else begin
      a_2_3 <= stage3_regs_0_1_11;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2005:22]
      a_2_4 <= 32'h0; // @[FloatingPointDesigns.scala 2005:22]
    end else begin
      a_2_4 <= stage4_regs_0_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2005:22]
      a_2_5 <= 32'h0; // @[FloatingPointDesigns.scala 2005:22]
    end else begin
      a_2_5 <= stage1_regs_1_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2005:22]
      a_2_6 <= 32'h0; // @[FloatingPointDesigns.scala 2005:22]
    end else begin
      a_2_6 <= stage2_regs_1_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2005:22]
      a_2_7 <= 32'h0; // @[FloatingPointDesigns.scala 2005:22]
    end else begin
      a_2_7 <= stage3_regs_1_1_11;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_0_0_0 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_0_0_0 <= x_n_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_0_0_1 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_0_0_1 <= stage1_regs_0_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_0_0_2 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_0_0_2 <= stage1_regs_0_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_0_0_3 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_0_0_3 <= stage1_regs_0_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_0_0_4 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_0_0_4 <= stage1_regs_0_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_0_0_5 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_0_0_5 <= stage1_regs_0_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_0_0_6 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_0_0_6 <= stage1_regs_0_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_0_0_7 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_0_0_7 <= stage1_regs_0_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_0_0_8 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_0_0_8 <= stage1_regs_0_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_0_1_0 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_0_1_0 <= a_2_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_0_1_1 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_0_1_1 <= stage1_regs_0_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_0_1_2 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_0_1_2 <= stage1_regs_0_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_0_1_3 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_0_1_3 <= stage1_regs_0_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_0_1_4 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_0_1_4 <= stage1_regs_0_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_0_1_5 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_0_1_5 <= stage1_regs_0_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_0_1_6 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_0_1_6 <= stage1_regs_0_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_0_1_7 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_0_1_7 <= stage1_regs_0_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_0_1_8 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_0_1_8 <= stage1_regs_0_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_1_0_0 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_1_0_0 <= x_n_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_1_0_1 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_1_0_1 <= stage1_regs_1_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_1_0_2 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_1_0_2 <= stage1_regs_1_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_1_0_3 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_1_0_3 <= stage1_regs_1_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_1_0_4 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_1_0_4 <= stage1_regs_1_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_1_0_5 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_1_0_5 <= stage1_regs_1_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_1_0_6 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_1_0_6 <= stage1_regs_1_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_1_0_7 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_1_0_7 <= stage1_regs_1_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_1_0_8 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_1_0_8 <= stage1_regs_1_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_1_1_0 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_1_1_0 <= a_2_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_1_1_1 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_1_1_1 <= stage1_regs_1_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_1_1_2 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_1_1_2 <= stage1_regs_1_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_1_1_3 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_1_1_3 <= stage1_regs_1_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_1_1_4 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_1_1_4 <= stage1_regs_1_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_1_1_5 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_1_1_5 <= stage1_regs_1_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_1_1_6 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_1_1_6 <= stage1_regs_1_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_1_1_7 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_1_1_7 <= stage1_regs_1_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:30]
      stage1_regs_1_1_8 <= 32'h0; // @[FloatingPointDesigns.scala 2006:30]
    end else begin
      stage1_regs_1_1_8 <= stage1_regs_1_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_0_0_0 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_0_0_0 <= x_n_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_0_0_1 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_0_0_1 <= stage2_regs_0_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_0_0_2 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_0_0_2 <= stage2_regs_0_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_0_0_3 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_0_0_3 <= stage2_regs_0_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_0_0_4 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_0_0_4 <= stage2_regs_0_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_0_0_5 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_0_0_5 <= stage2_regs_0_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_0_0_6 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_0_0_6 <= stage2_regs_0_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_0_0_7 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_0_0_7 <= stage2_regs_0_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_0_0_8 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_0_0_8 <= stage2_regs_0_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_0_1_0 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_0_1_0 <= a_2_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_0_1_1 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_0_1_1 <= stage2_regs_0_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_0_1_2 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_0_1_2 <= stage2_regs_0_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_0_1_3 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_0_1_3 <= stage2_regs_0_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_0_1_4 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_0_1_4 <= stage2_regs_0_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_0_1_5 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_0_1_5 <= stage2_regs_0_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_0_1_6 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_0_1_6 <= stage2_regs_0_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_0_1_7 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_0_1_7 <= stage2_regs_0_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_0_1_8 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_0_1_8 <= stage2_regs_0_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_1_0_0 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_1_0_0 <= x_n_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_1_0_1 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_1_0_1 <= stage2_regs_1_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_1_0_2 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_1_0_2 <= stage2_regs_1_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_1_0_3 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_1_0_3 <= stage2_regs_1_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_1_0_4 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_1_0_4 <= stage2_regs_1_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_1_0_5 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_1_0_5 <= stage2_regs_1_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_1_0_6 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_1_0_6 <= stage2_regs_1_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_1_0_7 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_1_0_7 <= stage2_regs_1_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_1_0_8 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_1_0_8 <= stage2_regs_1_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_1_1_0 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_1_1_0 <= a_2_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_1_1_1 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_1_1_1 <= stage2_regs_1_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_1_1_2 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_1_1_2 <= stage2_regs_1_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_1_1_3 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_1_1_3 <= stage2_regs_1_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_1_1_4 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_1_1_4 <= stage2_regs_1_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_1_1_5 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_1_1_5 <= stage2_regs_1_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_1_1_6 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_1_1_6 <= stage2_regs_1_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_1_1_7 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_1_1_7 <= stage2_regs_1_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage2_regs_1_1_8 <= 32'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage2_regs_1_1_8 <= stage2_regs_1_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_0_0_0 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_0_0_0 <= x_n_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_0_0_1 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_0_0_1 <= stage3_regs_0_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_0_0_2 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_0_0_2 <= stage3_regs_0_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_0_0_3 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_0_0_3 <= stage3_regs_0_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_0_0_4 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_0_0_4 <= stage3_regs_0_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_0_0_5 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_0_0_5 <= stage3_regs_0_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_0_0_6 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_0_0_6 <= stage3_regs_0_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_0_0_7 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_0_0_7 <= stage3_regs_0_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_0_0_8 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_0_0_8 <= stage3_regs_0_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_0_0_9 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_0_0_9 <= stage3_regs_0_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_0_0_10 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_0_0_10 <= stage3_regs_0_0_9;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_0_0_11 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_0_0_11 <= stage3_regs_0_0_10;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_0_1_0 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_0_1_0 <= a_2_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_0_1_1 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_0_1_1 <= stage3_regs_0_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_0_1_2 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_0_1_2 <= stage3_regs_0_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_0_1_3 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_0_1_3 <= stage3_regs_0_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_0_1_4 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_0_1_4 <= stage3_regs_0_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_0_1_5 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_0_1_5 <= stage3_regs_0_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_0_1_6 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_0_1_6 <= stage3_regs_0_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_0_1_7 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_0_1_7 <= stage3_regs_0_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_0_1_8 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_0_1_8 <= stage3_regs_0_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_0_1_9 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_0_1_9 <= stage3_regs_0_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_0_1_10 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_0_1_10 <= stage3_regs_0_1_9;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_0_1_11 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_0_1_11 <= stage3_regs_0_1_10;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_1_0_0 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_1_0_0 <= x_n_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_1_0_1 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_1_0_1 <= stage3_regs_1_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_1_0_2 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_1_0_2 <= stage3_regs_1_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_1_0_3 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_1_0_3 <= stage3_regs_1_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_1_0_4 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_1_0_4 <= stage3_regs_1_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_1_0_5 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_1_0_5 <= stage3_regs_1_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_1_0_6 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_1_0_6 <= stage3_regs_1_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_1_0_7 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_1_0_7 <= stage3_regs_1_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_1_0_8 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_1_0_8 <= stage3_regs_1_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_1_0_9 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_1_0_9 <= stage3_regs_1_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_1_0_10 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_1_0_10 <= stage3_regs_1_0_9;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_1_0_11 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_1_0_11 <= stage3_regs_1_0_10;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_1_1_0 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_1_1_0 <= a_2_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_1_1_1 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_1_1_1 <= stage3_regs_1_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_1_1_2 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_1_1_2 <= stage3_regs_1_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_1_1_3 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_1_1_3 <= stage3_regs_1_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_1_1_4 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_1_1_4 <= stage3_regs_1_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_1_1_5 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_1_1_5 <= stage3_regs_1_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_1_1_6 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_1_1_6 <= stage3_regs_1_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_1_1_7 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_1_1_7 <= stage3_regs_1_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_1_1_8 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_1_1_8 <= stage3_regs_1_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_1_1_9 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_1_1_9 <= stage3_regs_1_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_1_1_10 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_1_1_10 <= stage3_regs_1_1_9;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage3_regs_1_1_11 <= 32'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage3_regs_1_1_11 <= stage3_regs_1_1_10;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage4_regs_0_1_0 <= 32'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage4_regs_0_1_0 <= a_2_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage4_regs_0_1_1 <= 32'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage4_regs_0_1_1 <= stage4_regs_0_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage4_regs_0_1_2 <= 32'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage4_regs_0_1_2 <= stage4_regs_0_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage4_regs_0_1_3 <= 32'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage4_regs_0_1_3 <= stage4_regs_0_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage4_regs_0_1_4 <= 32'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage4_regs_0_1_4 <= stage4_regs_0_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage4_regs_0_1_5 <= 32'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage4_regs_0_1_5 <= stage4_regs_0_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage4_regs_0_1_6 <= 32'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage4_regs_0_1_6 <= stage4_regs_0_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage4_regs_0_1_7 <= 32'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage4_regs_0_1_7 <= stage4_regs_0_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage4_regs_0_1_8 <= 32'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage4_regs_0_1_8 <= stage4_regs_0_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage4_regs_1_1_0 <= 32'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage4_regs_1_1_0 <= a_2_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage4_regs_1_1_1 <= 32'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage4_regs_1_1_1 <= stage4_regs_1_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage4_regs_1_1_2 <= 32'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage4_regs_1_1_2 <= stage4_regs_1_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage4_regs_1_1_3 <= 32'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage4_regs_1_1_3 <= stage4_regs_1_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage4_regs_1_1_4 <= 32'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage4_regs_1_1_4 <= stage4_regs_1_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage4_regs_1_1_5 <= 32'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage4_regs_1_1_5 <= stage4_regs_1_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage4_regs_1_1_6 <= 32'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage4_regs_1_1_6 <= stage4_regs_1_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage4_regs_1_1_7 <= 32'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage4_regs_1_1_7 <= stage4_regs_1_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage4_regs_1_1_8 <= 32'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage4_regs_1_1_8 <= stage4_regs_1_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2080:31]
      a_2_isr_to_r <= 32'h0; // @[FloatingPointDesigns.scala 2080:31]
    end else begin
      a_2_isr_to_r <= _a_2_isr_to_r_T_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2081:34]
      transition_regs_0 <= 32'h0; // @[FloatingPointDesigns.scala 2081:34]
    end else begin
      transition_regs_0 <= a_2_isr_to_r;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2081:34]
      transition_regs_1 <= 32'h0; // @[FloatingPointDesigns.scala 2081:34]
    end else begin
      transition_regs_1 <= transition_regs_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2081:34]
      transition_regs_2 <= 32'h0; // @[FloatingPointDesigns.scala 2081:34]
    end else begin
      transition_regs_2 <= transition_regs_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2081:34]
      transition_regs_3 <= 32'h0; // @[FloatingPointDesigns.scala 2081:34]
    end else begin
      transition_regs_3 <= transition_regs_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2081:34]
      transition_regs_4 <= 32'h0; // @[FloatingPointDesigns.scala 2081:34]
    end else begin
      transition_regs_4 <= transition_regs_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2081:34]
      transition_regs_5 <= 32'h0; // @[FloatingPointDesigns.scala 2081:34]
    end else begin
      transition_regs_5 <= transition_regs_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2081:34]
      transition_regs_6 <= 32'h0; // @[FloatingPointDesigns.scala 2081:34]
    end else begin
      transition_regs_6 <= transition_regs_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2081:34]
      transition_regs_7 <= 32'h0; // @[FloatingPointDesigns.scala 2081:34]
    end else begin
      transition_regs_7 <= transition_regs_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2081:34]
      transition_regs_8 <= 32'h0; // @[FloatingPointDesigns.scala 2081:34]
    end else begin
      transition_regs_8 <= transition_regs_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2097:24]
      x_n_r_0 <= 32'h0; // @[FloatingPointDesigns.scala 2097:24]
    end else begin
      x_n_r_0 <= _GEN_209;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2097:24]
      x_n_r_1 <= 32'h0; // @[FloatingPointDesigns.scala 2097:24]
    end else begin
      x_n_r_1 <= stage1_regs_r_0_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2097:24]
      x_n_r_3 <= 32'h0; // @[FloatingPointDesigns.scala 2097:24]
    end else begin
      x_n_r_3 <= _GEN_265;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2097:24]
      x_n_r_4 <= 32'h0; // @[FloatingPointDesigns.scala 2097:24]
    end else begin
      x_n_r_4 <= stage1_regs_r_1_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2097:24]
      x_n_r_6 <= 32'h0; // @[FloatingPointDesigns.scala 2097:24]
    end else begin
      x_n_r_6 <= _GEN_321;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2097:24]
      x_n_r_7 <= 32'h0; // @[FloatingPointDesigns.scala 2097:24]
    end else begin
      x_n_r_7 <= stage1_regs_r_2_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2098:24]
      a_2_r_0 <= 32'h0; // @[FloatingPointDesigns.scala 2098:24]
    end else begin
      a_2_r_0 <= transition_regs_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2098:24]
      a_2_r_1 <= 32'h0; // @[FloatingPointDesigns.scala 2098:24]
    end else begin
      a_2_r_1 <= stage1_regs_r_0_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2098:24]
      a_2_r_2 <= 32'h0; // @[FloatingPointDesigns.scala 2098:24]
    end else begin
      a_2_r_2 <= stage2_regs_r_0_1_11;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2098:24]
      a_2_r_3 <= 32'h0; // @[FloatingPointDesigns.scala 2098:24]
    end else begin
      a_2_r_3 <= stage3_regs_r_0_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2098:24]
      a_2_r_4 <= 32'h0; // @[FloatingPointDesigns.scala 2098:24]
    end else begin
      a_2_r_4 <= stage1_regs_r_1_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2098:24]
      a_2_r_5 <= 32'h0; // @[FloatingPointDesigns.scala 2098:24]
    end else begin
      a_2_r_5 <= stage2_regs_r_1_1_11;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2098:24]
      a_2_r_6 <= 32'h0; // @[FloatingPointDesigns.scala 2098:24]
    end else begin
      a_2_r_6 <= stage3_regs_r_1_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2098:24]
      a_2_r_7 <= 32'h0; // @[FloatingPointDesigns.scala 2098:24]
    end else begin
      a_2_r_7 <= stage1_regs_r_2_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2098:24]
      a_2_r_8 <= 32'h0; // @[FloatingPointDesigns.scala 2098:24]
    end else begin
      a_2_r_8 <= stage2_regs_r_2_1_11;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_0_0_0 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_0_0_0 <= x_n_r_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_0_0_1 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_0_0_1 <= stage1_regs_r_0_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_0_0_2 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_0_0_2 <= stage1_regs_r_0_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_0_0_3 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_0_0_3 <= stage1_regs_r_0_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_0_0_4 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_0_0_4 <= stage1_regs_r_0_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_0_0_5 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_0_0_5 <= stage1_regs_r_0_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_0_0_6 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_0_0_6 <= stage1_regs_r_0_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_0_0_7 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_0_0_7 <= stage1_regs_r_0_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_0_0_8 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_0_0_8 <= stage1_regs_r_0_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_0_1_0 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_0_1_0 <= a_2_r_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_0_1_1 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_0_1_1 <= stage1_regs_r_0_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_0_1_2 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_0_1_2 <= stage1_regs_r_0_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_0_1_3 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_0_1_3 <= stage1_regs_r_0_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_0_1_4 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_0_1_4 <= stage1_regs_r_0_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_0_1_5 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_0_1_5 <= stage1_regs_r_0_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_0_1_6 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_0_1_6 <= stage1_regs_r_0_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_0_1_7 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_0_1_7 <= stage1_regs_r_0_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_0_1_8 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_0_1_8 <= stage1_regs_r_0_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_1_0_0 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_1_0_0 <= x_n_r_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_1_0_1 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_1_0_1 <= stage1_regs_r_1_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_1_0_2 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_1_0_2 <= stage1_regs_r_1_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_1_0_3 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_1_0_3 <= stage1_regs_r_1_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_1_0_4 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_1_0_4 <= stage1_regs_r_1_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_1_0_5 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_1_0_5 <= stage1_regs_r_1_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_1_0_6 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_1_0_6 <= stage1_regs_r_1_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_1_0_7 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_1_0_7 <= stage1_regs_r_1_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_1_0_8 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_1_0_8 <= stage1_regs_r_1_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_1_1_0 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_1_1_0 <= a_2_r_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_1_1_1 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_1_1_1 <= stage1_regs_r_1_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_1_1_2 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_1_1_2 <= stage1_regs_r_1_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_1_1_3 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_1_1_3 <= stage1_regs_r_1_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_1_1_4 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_1_1_4 <= stage1_regs_r_1_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_1_1_5 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_1_1_5 <= stage1_regs_r_1_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_1_1_6 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_1_1_6 <= stage1_regs_r_1_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_1_1_7 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_1_1_7 <= stage1_regs_r_1_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_1_1_8 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_1_1_8 <= stage1_regs_r_1_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_2_0_0 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_2_0_0 <= x_n_r_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_2_0_1 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_2_0_1 <= stage1_regs_r_2_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_2_0_2 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_2_0_2 <= stage1_regs_r_2_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_2_0_3 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_2_0_3 <= stage1_regs_r_2_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_2_0_4 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_2_0_4 <= stage1_regs_r_2_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_2_0_5 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_2_0_5 <= stage1_regs_r_2_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_2_0_6 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_2_0_6 <= stage1_regs_r_2_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_2_0_7 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_2_0_7 <= stage1_regs_r_2_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_2_0_8 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_2_0_8 <= stage1_regs_r_2_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_2_1_0 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_2_1_0 <= a_2_r_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_2_1_1 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_2_1_1 <= stage1_regs_r_2_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_2_1_2 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_2_1_2 <= stage1_regs_r_2_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_2_1_3 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_2_1_3 <= stage1_regs_r_2_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_2_1_4 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_2_1_4 <= stage1_regs_r_2_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_2_1_5 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_2_1_5 <= stage1_regs_r_2_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_2_1_6 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_2_1_6 <= stage1_regs_r_2_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_2_1_7 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_2_1_7 <= stage1_regs_r_2_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:32]
      stage1_regs_r_2_1_8 <= 32'h0; // @[FloatingPointDesigns.scala 2099:32]
    end else begin
      stage1_regs_r_2_1_8 <= stage1_regs_r_2_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_0_0_0 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_0_0_0 <= x_n_r_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_0_0_1 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_0_0_1 <= stage2_regs_r_0_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_0_0_2 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_0_0_2 <= stage2_regs_r_0_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_0_0_3 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_0_0_3 <= stage2_regs_r_0_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_0_0_4 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_0_0_4 <= stage2_regs_r_0_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_0_0_5 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_0_0_5 <= stage2_regs_r_0_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_0_0_6 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_0_0_6 <= stage2_regs_r_0_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_0_0_7 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_0_0_7 <= stage2_regs_r_0_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_0_0_8 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_0_0_8 <= stage2_regs_r_0_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_0_0_9 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_0_0_9 <= stage2_regs_r_0_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_0_0_10 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_0_0_10 <= stage2_regs_r_0_0_9;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_0_0_11 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_0_0_11 <= stage2_regs_r_0_0_10;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_0_1_0 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_0_1_0 <= a_2_r_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_0_1_1 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_0_1_1 <= stage2_regs_r_0_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_0_1_2 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_0_1_2 <= stage2_regs_r_0_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_0_1_3 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_0_1_3 <= stage2_regs_r_0_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_0_1_4 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_0_1_4 <= stage2_regs_r_0_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_0_1_5 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_0_1_5 <= stage2_regs_r_0_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_0_1_6 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_0_1_6 <= stage2_regs_r_0_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_0_1_7 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_0_1_7 <= stage2_regs_r_0_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_0_1_8 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_0_1_8 <= stage2_regs_r_0_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_0_1_9 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_0_1_9 <= stage2_regs_r_0_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_0_1_10 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_0_1_10 <= stage2_regs_r_0_1_9;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_0_1_11 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_0_1_11 <= stage2_regs_r_0_1_10;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_1_0_0 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_1_0_0 <= x_n_r_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_1_0_1 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_1_0_1 <= stage2_regs_r_1_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_1_0_2 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_1_0_2 <= stage2_regs_r_1_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_1_0_3 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_1_0_3 <= stage2_regs_r_1_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_1_0_4 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_1_0_4 <= stage2_regs_r_1_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_1_0_5 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_1_0_5 <= stage2_regs_r_1_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_1_0_6 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_1_0_6 <= stage2_regs_r_1_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_1_0_7 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_1_0_7 <= stage2_regs_r_1_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_1_0_8 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_1_0_8 <= stage2_regs_r_1_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_1_0_9 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_1_0_9 <= stage2_regs_r_1_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_1_0_10 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_1_0_10 <= stage2_regs_r_1_0_9;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_1_0_11 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_1_0_11 <= stage2_regs_r_1_0_10;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_1_1_0 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_1_1_0 <= a_2_r_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_1_1_1 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_1_1_1 <= stage2_regs_r_1_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_1_1_2 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_1_1_2 <= stage2_regs_r_1_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_1_1_3 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_1_1_3 <= stage2_regs_r_1_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_1_1_4 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_1_1_4 <= stage2_regs_r_1_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_1_1_5 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_1_1_5 <= stage2_regs_r_1_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_1_1_6 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_1_1_6 <= stage2_regs_r_1_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_1_1_7 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_1_1_7 <= stage2_regs_r_1_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_1_1_8 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_1_1_8 <= stage2_regs_r_1_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_1_1_9 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_1_1_9 <= stage2_regs_r_1_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_1_1_10 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_1_1_10 <= stage2_regs_r_1_1_9;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_1_1_11 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_1_1_11 <= stage2_regs_r_1_1_10;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_2_0_0 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_2_0_0 <= x_n_r_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_2_0_1 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_2_0_1 <= stage2_regs_r_2_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_2_0_2 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_2_0_2 <= stage2_regs_r_2_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_2_0_3 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_2_0_3 <= stage2_regs_r_2_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_2_0_4 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_2_0_4 <= stage2_regs_r_2_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_2_0_5 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_2_0_5 <= stage2_regs_r_2_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_2_0_6 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_2_0_6 <= stage2_regs_r_2_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_2_0_7 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_2_0_7 <= stage2_regs_r_2_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_2_0_8 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_2_0_8 <= stage2_regs_r_2_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_2_0_9 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_2_0_9 <= stage2_regs_r_2_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_2_0_10 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_2_0_10 <= stage2_regs_r_2_0_9;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_2_0_11 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_2_0_11 <= stage2_regs_r_2_0_10;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_2_1_0 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_2_1_0 <= a_2_r_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_2_1_1 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_2_1_1 <= stage2_regs_r_2_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_2_1_2 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_2_1_2 <= stage2_regs_r_2_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_2_1_3 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_2_1_3 <= stage2_regs_r_2_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_2_1_4 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_2_1_4 <= stage2_regs_r_2_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_2_1_5 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_2_1_5 <= stage2_regs_r_2_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_2_1_6 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_2_1_6 <= stage2_regs_r_2_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_2_1_7 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_2_1_7 <= stage2_regs_r_2_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_2_1_8 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_2_1_8 <= stage2_regs_r_2_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_2_1_9 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_2_1_9 <= stage2_regs_r_2_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_2_1_10 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_2_1_10 <= stage2_regs_r_2_1_9;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage2_regs_r_2_1_11 <= 32'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage2_regs_r_2_1_11 <= stage2_regs_r_2_1_10;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_0_1_0 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_0_1_0 <= a_2_r_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_0_1_1 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_0_1_1 <= stage3_regs_r_0_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_0_1_2 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_0_1_2 <= stage3_regs_r_0_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_0_1_3 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_0_1_3 <= stage3_regs_r_0_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_0_1_4 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_0_1_4 <= stage3_regs_r_0_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_0_1_5 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_0_1_5 <= stage3_regs_r_0_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_0_1_6 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_0_1_6 <= stage3_regs_r_0_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_0_1_7 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_0_1_7 <= stage3_regs_r_0_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_0_1_8 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_0_1_8 <= stage3_regs_r_0_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_1_1_0 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_1_1_0 <= a_2_r_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_1_1_1 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_1_1_1 <= stage3_regs_r_1_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_1_1_2 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_1_1_2 <= stage3_regs_r_1_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_1_1_3 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_1_1_3 <= stage3_regs_r_1_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_1_1_4 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_1_1_4 <= stage3_regs_r_1_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_1_1_5 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_1_1_5 <= stage3_regs_r_1_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_1_1_6 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_1_1_6 <= stage3_regs_r_1_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_1_1_7 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_1_1_7 <= stage3_regs_r_1_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_1_1_8 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_1_1_8 <= stage3_regs_r_1_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_2_1_0 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_2_1_0 <= a_2_r_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_2_1_1 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_2_1_1 <= stage3_regs_r_2_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_2_1_2 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_2_1_2 <= stage3_regs_r_2_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_2_1_3 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_2_1_3 <= stage3_regs_r_2_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_2_1_4 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_2_1_4 <= stage3_regs_r_2_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_2_1_5 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_2_1_5 <= stage3_regs_r_2_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_2_1_6 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_2_1_6 <= stage3_regs_r_2_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_2_1_7 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_2_1_7 <= stage3_regs_r_2_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage3_regs_r_2_1_8 <= 32'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage3_regs_r_2_1_8 <= stage3_regs_r_2_1_7;
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
  x_n_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  x_n_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  x_n_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  x_n_4 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  x_n_5 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  x_n_6 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  a_2_0 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  a_2_1 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  a_2_2 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  a_2_3 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  a_2_4 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  a_2_5 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  a_2_6 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  a_2_7 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  stage1_regs_0_0_0 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  stage1_regs_0_0_1 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  stage1_regs_0_0_2 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  stage1_regs_0_0_3 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  stage1_regs_0_0_4 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  stage1_regs_0_0_5 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  stage1_regs_0_0_6 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  stage1_regs_0_0_7 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  stage1_regs_0_0_8 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  stage1_regs_0_1_0 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  stage1_regs_0_1_1 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  stage1_regs_0_1_2 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  stage1_regs_0_1_3 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  stage1_regs_0_1_4 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  stage1_regs_0_1_5 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  stage1_regs_0_1_6 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  stage1_regs_0_1_7 = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  stage1_regs_0_1_8 = _RAND_31[31:0];
  _RAND_32 = {1{`RANDOM}};
  stage1_regs_1_0_0 = _RAND_32[31:0];
  _RAND_33 = {1{`RANDOM}};
  stage1_regs_1_0_1 = _RAND_33[31:0];
  _RAND_34 = {1{`RANDOM}};
  stage1_regs_1_0_2 = _RAND_34[31:0];
  _RAND_35 = {1{`RANDOM}};
  stage1_regs_1_0_3 = _RAND_35[31:0];
  _RAND_36 = {1{`RANDOM}};
  stage1_regs_1_0_4 = _RAND_36[31:0];
  _RAND_37 = {1{`RANDOM}};
  stage1_regs_1_0_5 = _RAND_37[31:0];
  _RAND_38 = {1{`RANDOM}};
  stage1_regs_1_0_6 = _RAND_38[31:0];
  _RAND_39 = {1{`RANDOM}};
  stage1_regs_1_0_7 = _RAND_39[31:0];
  _RAND_40 = {1{`RANDOM}};
  stage1_regs_1_0_8 = _RAND_40[31:0];
  _RAND_41 = {1{`RANDOM}};
  stage1_regs_1_1_0 = _RAND_41[31:0];
  _RAND_42 = {1{`RANDOM}};
  stage1_regs_1_1_1 = _RAND_42[31:0];
  _RAND_43 = {1{`RANDOM}};
  stage1_regs_1_1_2 = _RAND_43[31:0];
  _RAND_44 = {1{`RANDOM}};
  stage1_regs_1_1_3 = _RAND_44[31:0];
  _RAND_45 = {1{`RANDOM}};
  stage1_regs_1_1_4 = _RAND_45[31:0];
  _RAND_46 = {1{`RANDOM}};
  stage1_regs_1_1_5 = _RAND_46[31:0];
  _RAND_47 = {1{`RANDOM}};
  stage1_regs_1_1_6 = _RAND_47[31:0];
  _RAND_48 = {1{`RANDOM}};
  stage1_regs_1_1_7 = _RAND_48[31:0];
  _RAND_49 = {1{`RANDOM}};
  stage1_regs_1_1_8 = _RAND_49[31:0];
  _RAND_50 = {1{`RANDOM}};
  stage2_regs_0_0_0 = _RAND_50[31:0];
  _RAND_51 = {1{`RANDOM}};
  stage2_regs_0_0_1 = _RAND_51[31:0];
  _RAND_52 = {1{`RANDOM}};
  stage2_regs_0_0_2 = _RAND_52[31:0];
  _RAND_53 = {1{`RANDOM}};
  stage2_regs_0_0_3 = _RAND_53[31:0];
  _RAND_54 = {1{`RANDOM}};
  stage2_regs_0_0_4 = _RAND_54[31:0];
  _RAND_55 = {1{`RANDOM}};
  stage2_regs_0_0_5 = _RAND_55[31:0];
  _RAND_56 = {1{`RANDOM}};
  stage2_regs_0_0_6 = _RAND_56[31:0];
  _RAND_57 = {1{`RANDOM}};
  stage2_regs_0_0_7 = _RAND_57[31:0];
  _RAND_58 = {1{`RANDOM}};
  stage2_regs_0_0_8 = _RAND_58[31:0];
  _RAND_59 = {1{`RANDOM}};
  stage2_regs_0_1_0 = _RAND_59[31:0];
  _RAND_60 = {1{`RANDOM}};
  stage2_regs_0_1_1 = _RAND_60[31:0];
  _RAND_61 = {1{`RANDOM}};
  stage2_regs_0_1_2 = _RAND_61[31:0];
  _RAND_62 = {1{`RANDOM}};
  stage2_regs_0_1_3 = _RAND_62[31:0];
  _RAND_63 = {1{`RANDOM}};
  stage2_regs_0_1_4 = _RAND_63[31:0];
  _RAND_64 = {1{`RANDOM}};
  stage2_regs_0_1_5 = _RAND_64[31:0];
  _RAND_65 = {1{`RANDOM}};
  stage2_regs_0_1_6 = _RAND_65[31:0];
  _RAND_66 = {1{`RANDOM}};
  stage2_regs_0_1_7 = _RAND_66[31:0];
  _RAND_67 = {1{`RANDOM}};
  stage2_regs_0_1_8 = _RAND_67[31:0];
  _RAND_68 = {1{`RANDOM}};
  stage2_regs_1_0_0 = _RAND_68[31:0];
  _RAND_69 = {1{`RANDOM}};
  stage2_regs_1_0_1 = _RAND_69[31:0];
  _RAND_70 = {1{`RANDOM}};
  stage2_regs_1_0_2 = _RAND_70[31:0];
  _RAND_71 = {1{`RANDOM}};
  stage2_regs_1_0_3 = _RAND_71[31:0];
  _RAND_72 = {1{`RANDOM}};
  stage2_regs_1_0_4 = _RAND_72[31:0];
  _RAND_73 = {1{`RANDOM}};
  stage2_regs_1_0_5 = _RAND_73[31:0];
  _RAND_74 = {1{`RANDOM}};
  stage2_regs_1_0_6 = _RAND_74[31:0];
  _RAND_75 = {1{`RANDOM}};
  stage2_regs_1_0_7 = _RAND_75[31:0];
  _RAND_76 = {1{`RANDOM}};
  stage2_regs_1_0_8 = _RAND_76[31:0];
  _RAND_77 = {1{`RANDOM}};
  stage2_regs_1_1_0 = _RAND_77[31:0];
  _RAND_78 = {1{`RANDOM}};
  stage2_regs_1_1_1 = _RAND_78[31:0];
  _RAND_79 = {1{`RANDOM}};
  stage2_regs_1_1_2 = _RAND_79[31:0];
  _RAND_80 = {1{`RANDOM}};
  stage2_regs_1_1_3 = _RAND_80[31:0];
  _RAND_81 = {1{`RANDOM}};
  stage2_regs_1_1_4 = _RAND_81[31:0];
  _RAND_82 = {1{`RANDOM}};
  stage2_regs_1_1_5 = _RAND_82[31:0];
  _RAND_83 = {1{`RANDOM}};
  stage2_regs_1_1_6 = _RAND_83[31:0];
  _RAND_84 = {1{`RANDOM}};
  stage2_regs_1_1_7 = _RAND_84[31:0];
  _RAND_85 = {1{`RANDOM}};
  stage2_regs_1_1_8 = _RAND_85[31:0];
  _RAND_86 = {1{`RANDOM}};
  stage3_regs_0_0_0 = _RAND_86[31:0];
  _RAND_87 = {1{`RANDOM}};
  stage3_regs_0_0_1 = _RAND_87[31:0];
  _RAND_88 = {1{`RANDOM}};
  stage3_regs_0_0_2 = _RAND_88[31:0];
  _RAND_89 = {1{`RANDOM}};
  stage3_regs_0_0_3 = _RAND_89[31:0];
  _RAND_90 = {1{`RANDOM}};
  stage3_regs_0_0_4 = _RAND_90[31:0];
  _RAND_91 = {1{`RANDOM}};
  stage3_regs_0_0_5 = _RAND_91[31:0];
  _RAND_92 = {1{`RANDOM}};
  stage3_regs_0_0_6 = _RAND_92[31:0];
  _RAND_93 = {1{`RANDOM}};
  stage3_regs_0_0_7 = _RAND_93[31:0];
  _RAND_94 = {1{`RANDOM}};
  stage3_regs_0_0_8 = _RAND_94[31:0];
  _RAND_95 = {1{`RANDOM}};
  stage3_regs_0_0_9 = _RAND_95[31:0];
  _RAND_96 = {1{`RANDOM}};
  stage3_regs_0_0_10 = _RAND_96[31:0];
  _RAND_97 = {1{`RANDOM}};
  stage3_regs_0_0_11 = _RAND_97[31:0];
  _RAND_98 = {1{`RANDOM}};
  stage3_regs_0_1_0 = _RAND_98[31:0];
  _RAND_99 = {1{`RANDOM}};
  stage3_regs_0_1_1 = _RAND_99[31:0];
  _RAND_100 = {1{`RANDOM}};
  stage3_regs_0_1_2 = _RAND_100[31:0];
  _RAND_101 = {1{`RANDOM}};
  stage3_regs_0_1_3 = _RAND_101[31:0];
  _RAND_102 = {1{`RANDOM}};
  stage3_regs_0_1_4 = _RAND_102[31:0];
  _RAND_103 = {1{`RANDOM}};
  stage3_regs_0_1_5 = _RAND_103[31:0];
  _RAND_104 = {1{`RANDOM}};
  stage3_regs_0_1_6 = _RAND_104[31:0];
  _RAND_105 = {1{`RANDOM}};
  stage3_regs_0_1_7 = _RAND_105[31:0];
  _RAND_106 = {1{`RANDOM}};
  stage3_regs_0_1_8 = _RAND_106[31:0];
  _RAND_107 = {1{`RANDOM}};
  stage3_regs_0_1_9 = _RAND_107[31:0];
  _RAND_108 = {1{`RANDOM}};
  stage3_regs_0_1_10 = _RAND_108[31:0];
  _RAND_109 = {1{`RANDOM}};
  stage3_regs_0_1_11 = _RAND_109[31:0];
  _RAND_110 = {1{`RANDOM}};
  stage3_regs_1_0_0 = _RAND_110[31:0];
  _RAND_111 = {1{`RANDOM}};
  stage3_regs_1_0_1 = _RAND_111[31:0];
  _RAND_112 = {1{`RANDOM}};
  stage3_regs_1_0_2 = _RAND_112[31:0];
  _RAND_113 = {1{`RANDOM}};
  stage3_regs_1_0_3 = _RAND_113[31:0];
  _RAND_114 = {1{`RANDOM}};
  stage3_regs_1_0_4 = _RAND_114[31:0];
  _RAND_115 = {1{`RANDOM}};
  stage3_regs_1_0_5 = _RAND_115[31:0];
  _RAND_116 = {1{`RANDOM}};
  stage3_regs_1_0_6 = _RAND_116[31:0];
  _RAND_117 = {1{`RANDOM}};
  stage3_regs_1_0_7 = _RAND_117[31:0];
  _RAND_118 = {1{`RANDOM}};
  stage3_regs_1_0_8 = _RAND_118[31:0];
  _RAND_119 = {1{`RANDOM}};
  stage3_regs_1_0_9 = _RAND_119[31:0];
  _RAND_120 = {1{`RANDOM}};
  stage3_regs_1_0_10 = _RAND_120[31:0];
  _RAND_121 = {1{`RANDOM}};
  stage3_regs_1_0_11 = _RAND_121[31:0];
  _RAND_122 = {1{`RANDOM}};
  stage3_regs_1_1_0 = _RAND_122[31:0];
  _RAND_123 = {1{`RANDOM}};
  stage3_regs_1_1_1 = _RAND_123[31:0];
  _RAND_124 = {1{`RANDOM}};
  stage3_regs_1_1_2 = _RAND_124[31:0];
  _RAND_125 = {1{`RANDOM}};
  stage3_regs_1_1_3 = _RAND_125[31:0];
  _RAND_126 = {1{`RANDOM}};
  stage3_regs_1_1_4 = _RAND_126[31:0];
  _RAND_127 = {1{`RANDOM}};
  stage3_regs_1_1_5 = _RAND_127[31:0];
  _RAND_128 = {1{`RANDOM}};
  stage3_regs_1_1_6 = _RAND_128[31:0];
  _RAND_129 = {1{`RANDOM}};
  stage3_regs_1_1_7 = _RAND_129[31:0];
  _RAND_130 = {1{`RANDOM}};
  stage3_regs_1_1_8 = _RAND_130[31:0];
  _RAND_131 = {1{`RANDOM}};
  stage3_regs_1_1_9 = _RAND_131[31:0];
  _RAND_132 = {1{`RANDOM}};
  stage3_regs_1_1_10 = _RAND_132[31:0];
  _RAND_133 = {1{`RANDOM}};
  stage3_regs_1_1_11 = _RAND_133[31:0];
  _RAND_134 = {1{`RANDOM}};
  stage4_regs_0_1_0 = _RAND_134[31:0];
  _RAND_135 = {1{`RANDOM}};
  stage4_regs_0_1_1 = _RAND_135[31:0];
  _RAND_136 = {1{`RANDOM}};
  stage4_regs_0_1_2 = _RAND_136[31:0];
  _RAND_137 = {1{`RANDOM}};
  stage4_regs_0_1_3 = _RAND_137[31:0];
  _RAND_138 = {1{`RANDOM}};
  stage4_regs_0_1_4 = _RAND_138[31:0];
  _RAND_139 = {1{`RANDOM}};
  stage4_regs_0_1_5 = _RAND_139[31:0];
  _RAND_140 = {1{`RANDOM}};
  stage4_regs_0_1_6 = _RAND_140[31:0];
  _RAND_141 = {1{`RANDOM}};
  stage4_regs_0_1_7 = _RAND_141[31:0];
  _RAND_142 = {1{`RANDOM}};
  stage4_regs_0_1_8 = _RAND_142[31:0];
  _RAND_143 = {1{`RANDOM}};
  stage4_regs_1_1_0 = _RAND_143[31:0];
  _RAND_144 = {1{`RANDOM}};
  stage4_regs_1_1_1 = _RAND_144[31:0];
  _RAND_145 = {1{`RANDOM}};
  stage4_regs_1_1_2 = _RAND_145[31:0];
  _RAND_146 = {1{`RANDOM}};
  stage4_regs_1_1_3 = _RAND_146[31:0];
  _RAND_147 = {1{`RANDOM}};
  stage4_regs_1_1_4 = _RAND_147[31:0];
  _RAND_148 = {1{`RANDOM}};
  stage4_regs_1_1_5 = _RAND_148[31:0];
  _RAND_149 = {1{`RANDOM}};
  stage4_regs_1_1_6 = _RAND_149[31:0];
  _RAND_150 = {1{`RANDOM}};
  stage4_regs_1_1_7 = _RAND_150[31:0];
  _RAND_151 = {1{`RANDOM}};
  stage4_regs_1_1_8 = _RAND_151[31:0];
  _RAND_152 = {1{`RANDOM}};
  a_2_isr_to_r = _RAND_152[31:0];
  _RAND_153 = {1{`RANDOM}};
  transition_regs_0 = _RAND_153[31:0];
  _RAND_154 = {1{`RANDOM}};
  transition_regs_1 = _RAND_154[31:0];
  _RAND_155 = {1{`RANDOM}};
  transition_regs_2 = _RAND_155[31:0];
  _RAND_156 = {1{`RANDOM}};
  transition_regs_3 = _RAND_156[31:0];
  _RAND_157 = {1{`RANDOM}};
  transition_regs_4 = _RAND_157[31:0];
  _RAND_158 = {1{`RANDOM}};
  transition_regs_5 = _RAND_158[31:0];
  _RAND_159 = {1{`RANDOM}};
  transition_regs_6 = _RAND_159[31:0];
  _RAND_160 = {1{`RANDOM}};
  transition_regs_7 = _RAND_160[31:0];
  _RAND_161 = {1{`RANDOM}};
  transition_regs_8 = _RAND_161[31:0];
  _RAND_162 = {1{`RANDOM}};
  x_n_r_0 = _RAND_162[31:0];
  _RAND_163 = {1{`RANDOM}};
  x_n_r_1 = _RAND_163[31:0];
  _RAND_164 = {1{`RANDOM}};
  x_n_r_3 = _RAND_164[31:0];
  _RAND_165 = {1{`RANDOM}};
  x_n_r_4 = _RAND_165[31:0];
  _RAND_166 = {1{`RANDOM}};
  x_n_r_6 = _RAND_166[31:0];
  _RAND_167 = {1{`RANDOM}};
  x_n_r_7 = _RAND_167[31:0];
  _RAND_168 = {1{`RANDOM}};
  a_2_r_0 = _RAND_168[31:0];
  _RAND_169 = {1{`RANDOM}};
  a_2_r_1 = _RAND_169[31:0];
  _RAND_170 = {1{`RANDOM}};
  a_2_r_2 = _RAND_170[31:0];
  _RAND_171 = {1{`RANDOM}};
  a_2_r_3 = _RAND_171[31:0];
  _RAND_172 = {1{`RANDOM}};
  a_2_r_4 = _RAND_172[31:0];
  _RAND_173 = {1{`RANDOM}};
  a_2_r_5 = _RAND_173[31:0];
  _RAND_174 = {1{`RANDOM}};
  a_2_r_6 = _RAND_174[31:0];
  _RAND_175 = {1{`RANDOM}};
  a_2_r_7 = _RAND_175[31:0];
  _RAND_176 = {1{`RANDOM}};
  a_2_r_8 = _RAND_176[31:0];
  _RAND_177 = {1{`RANDOM}};
  stage1_regs_r_0_0_0 = _RAND_177[31:0];
  _RAND_178 = {1{`RANDOM}};
  stage1_regs_r_0_0_1 = _RAND_178[31:0];
  _RAND_179 = {1{`RANDOM}};
  stage1_regs_r_0_0_2 = _RAND_179[31:0];
  _RAND_180 = {1{`RANDOM}};
  stage1_regs_r_0_0_3 = _RAND_180[31:0];
  _RAND_181 = {1{`RANDOM}};
  stage1_regs_r_0_0_4 = _RAND_181[31:0];
  _RAND_182 = {1{`RANDOM}};
  stage1_regs_r_0_0_5 = _RAND_182[31:0];
  _RAND_183 = {1{`RANDOM}};
  stage1_regs_r_0_0_6 = _RAND_183[31:0];
  _RAND_184 = {1{`RANDOM}};
  stage1_regs_r_0_0_7 = _RAND_184[31:0];
  _RAND_185 = {1{`RANDOM}};
  stage1_regs_r_0_0_8 = _RAND_185[31:0];
  _RAND_186 = {1{`RANDOM}};
  stage1_regs_r_0_1_0 = _RAND_186[31:0];
  _RAND_187 = {1{`RANDOM}};
  stage1_regs_r_0_1_1 = _RAND_187[31:0];
  _RAND_188 = {1{`RANDOM}};
  stage1_regs_r_0_1_2 = _RAND_188[31:0];
  _RAND_189 = {1{`RANDOM}};
  stage1_regs_r_0_1_3 = _RAND_189[31:0];
  _RAND_190 = {1{`RANDOM}};
  stage1_regs_r_0_1_4 = _RAND_190[31:0];
  _RAND_191 = {1{`RANDOM}};
  stage1_regs_r_0_1_5 = _RAND_191[31:0];
  _RAND_192 = {1{`RANDOM}};
  stage1_regs_r_0_1_6 = _RAND_192[31:0];
  _RAND_193 = {1{`RANDOM}};
  stage1_regs_r_0_1_7 = _RAND_193[31:0];
  _RAND_194 = {1{`RANDOM}};
  stage1_regs_r_0_1_8 = _RAND_194[31:0];
  _RAND_195 = {1{`RANDOM}};
  stage1_regs_r_1_0_0 = _RAND_195[31:0];
  _RAND_196 = {1{`RANDOM}};
  stage1_regs_r_1_0_1 = _RAND_196[31:0];
  _RAND_197 = {1{`RANDOM}};
  stage1_regs_r_1_0_2 = _RAND_197[31:0];
  _RAND_198 = {1{`RANDOM}};
  stage1_regs_r_1_0_3 = _RAND_198[31:0];
  _RAND_199 = {1{`RANDOM}};
  stage1_regs_r_1_0_4 = _RAND_199[31:0];
  _RAND_200 = {1{`RANDOM}};
  stage1_regs_r_1_0_5 = _RAND_200[31:0];
  _RAND_201 = {1{`RANDOM}};
  stage1_regs_r_1_0_6 = _RAND_201[31:0];
  _RAND_202 = {1{`RANDOM}};
  stage1_regs_r_1_0_7 = _RAND_202[31:0];
  _RAND_203 = {1{`RANDOM}};
  stage1_regs_r_1_0_8 = _RAND_203[31:0];
  _RAND_204 = {1{`RANDOM}};
  stage1_regs_r_1_1_0 = _RAND_204[31:0];
  _RAND_205 = {1{`RANDOM}};
  stage1_regs_r_1_1_1 = _RAND_205[31:0];
  _RAND_206 = {1{`RANDOM}};
  stage1_regs_r_1_1_2 = _RAND_206[31:0];
  _RAND_207 = {1{`RANDOM}};
  stage1_regs_r_1_1_3 = _RAND_207[31:0];
  _RAND_208 = {1{`RANDOM}};
  stage1_regs_r_1_1_4 = _RAND_208[31:0];
  _RAND_209 = {1{`RANDOM}};
  stage1_regs_r_1_1_5 = _RAND_209[31:0];
  _RAND_210 = {1{`RANDOM}};
  stage1_regs_r_1_1_6 = _RAND_210[31:0];
  _RAND_211 = {1{`RANDOM}};
  stage1_regs_r_1_1_7 = _RAND_211[31:0];
  _RAND_212 = {1{`RANDOM}};
  stage1_regs_r_1_1_8 = _RAND_212[31:0];
  _RAND_213 = {1{`RANDOM}};
  stage1_regs_r_2_0_0 = _RAND_213[31:0];
  _RAND_214 = {1{`RANDOM}};
  stage1_regs_r_2_0_1 = _RAND_214[31:0];
  _RAND_215 = {1{`RANDOM}};
  stage1_regs_r_2_0_2 = _RAND_215[31:0];
  _RAND_216 = {1{`RANDOM}};
  stage1_regs_r_2_0_3 = _RAND_216[31:0];
  _RAND_217 = {1{`RANDOM}};
  stage1_regs_r_2_0_4 = _RAND_217[31:0];
  _RAND_218 = {1{`RANDOM}};
  stage1_regs_r_2_0_5 = _RAND_218[31:0];
  _RAND_219 = {1{`RANDOM}};
  stage1_regs_r_2_0_6 = _RAND_219[31:0];
  _RAND_220 = {1{`RANDOM}};
  stage1_regs_r_2_0_7 = _RAND_220[31:0];
  _RAND_221 = {1{`RANDOM}};
  stage1_regs_r_2_0_8 = _RAND_221[31:0];
  _RAND_222 = {1{`RANDOM}};
  stage1_regs_r_2_1_0 = _RAND_222[31:0];
  _RAND_223 = {1{`RANDOM}};
  stage1_regs_r_2_1_1 = _RAND_223[31:0];
  _RAND_224 = {1{`RANDOM}};
  stage1_regs_r_2_1_2 = _RAND_224[31:0];
  _RAND_225 = {1{`RANDOM}};
  stage1_regs_r_2_1_3 = _RAND_225[31:0];
  _RAND_226 = {1{`RANDOM}};
  stage1_regs_r_2_1_4 = _RAND_226[31:0];
  _RAND_227 = {1{`RANDOM}};
  stage1_regs_r_2_1_5 = _RAND_227[31:0];
  _RAND_228 = {1{`RANDOM}};
  stage1_regs_r_2_1_6 = _RAND_228[31:0];
  _RAND_229 = {1{`RANDOM}};
  stage1_regs_r_2_1_7 = _RAND_229[31:0];
  _RAND_230 = {1{`RANDOM}};
  stage1_regs_r_2_1_8 = _RAND_230[31:0];
  _RAND_231 = {1{`RANDOM}};
  stage2_regs_r_0_0_0 = _RAND_231[31:0];
  _RAND_232 = {1{`RANDOM}};
  stage2_regs_r_0_0_1 = _RAND_232[31:0];
  _RAND_233 = {1{`RANDOM}};
  stage2_regs_r_0_0_2 = _RAND_233[31:0];
  _RAND_234 = {1{`RANDOM}};
  stage2_regs_r_0_0_3 = _RAND_234[31:0];
  _RAND_235 = {1{`RANDOM}};
  stage2_regs_r_0_0_4 = _RAND_235[31:0];
  _RAND_236 = {1{`RANDOM}};
  stage2_regs_r_0_0_5 = _RAND_236[31:0];
  _RAND_237 = {1{`RANDOM}};
  stage2_regs_r_0_0_6 = _RAND_237[31:0];
  _RAND_238 = {1{`RANDOM}};
  stage2_regs_r_0_0_7 = _RAND_238[31:0];
  _RAND_239 = {1{`RANDOM}};
  stage2_regs_r_0_0_8 = _RAND_239[31:0];
  _RAND_240 = {1{`RANDOM}};
  stage2_regs_r_0_0_9 = _RAND_240[31:0];
  _RAND_241 = {1{`RANDOM}};
  stage2_regs_r_0_0_10 = _RAND_241[31:0];
  _RAND_242 = {1{`RANDOM}};
  stage2_regs_r_0_0_11 = _RAND_242[31:0];
  _RAND_243 = {1{`RANDOM}};
  stage2_regs_r_0_1_0 = _RAND_243[31:0];
  _RAND_244 = {1{`RANDOM}};
  stage2_regs_r_0_1_1 = _RAND_244[31:0];
  _RAND_245 = {1{`RANDOM}};
  stage2_regs_r_0_1_2 = _RAND_245[31:0];
  _RAND_246 = {1{`RANDOM}};
  stage2_regs_r_0_1_3 = _RAND_246[31:0];
  _RAND_247 = {1{`RANDOM}};
  stage2_regs_r_0_1_4 = _RAND_247[31:0];
  _RAND_248 = {1{`RANDOM}};
  stage2_regs_r_0_1_5 = _RAND_248[31:0];
  _RAND_249 = {1{`RANDOM}};
  stage2_regs_r_0_1_6 = _RAND_249[31:0];
  _RAND_250 = {1{`RANDOM}};
  stage2_regs_r_0_1_7 = _RAND_250[31:0];
  _RAND_251 = {1{`RANDOM}};
  stage2_regs_r_0_1_8 = _RAND_251[31:0];
  _RAND_252 = {1{`RANDOM}};
  stage2_regs_r_0_1_9 = _RAND_252[31:0];
  _RAND_253 = {1{`RANDOM}};
  stage2_regs_r_0_1_10 = _RAND_253[31:0];
  _RAND_254 = {1{`RANDOM}};
  stage2_regs_r_0_1_11 = _RAND_254[31:0];
  _RAND_255 = {1{`RANDOM}};
  stage2_regs_r_1_0_0 = _RAND_255[31:0];
  _RAND_256 = {1{`RANDOM}};
  stage2_regs_r_1_0_1 = _RAND_256[31:0];
  _RAND_257 = {1{`RANDOM}};
  stage2_regs_r_1_0_2 = _RAND_257[31:0];
  _RAND_258 = {1{`RANDOM}};
  stage2_regs_r_1_0_3 = _RAND_258[31:0];
  _RAND_259 = {1{`RANDOM}};
  stage2_regs_r_1_0_4 = _RAND_259[31:0];
  _RAND_260 = {1{`RANDOM}};
  stage2_regs_r_1_0_5 = _RAND_260[31:0];
  _RAND_261 = {1{`RANDOM}};
  stage2_regs_r_1_0_6 = _RAND_261[31:0];
  _RAND_262 = {1{`RANDOM}};
  stage2_regs_r_1_0_7 = _RAND_262[31:0];
  _RAND_263 = {1{`RANDOM}};
  stage2_regs_r_1_0_8 = _RAND_263[31:0];
  _RAND_264 = {1{`RANDOM}};
  stage2_regs_r_1_0_9 = _RAND_264[31:0];
  _RAND_265 = {1{`RANDOM}};
  stage2_regs_r_1_0_10 = _RAND_265[31:0];
  _RAND_266 = {1{`RANDOM}};
  stage2_regs_r_1_0_11 = _RAND_266[31:0];
  _RAND_267 = {1{`RANDOM}};
  stage2_regs_r_1_1_0 = _RAND_267[31:0];
  _RAND_268 = {1{`RANDOM}};
  stage2_regs_r_1_1_1 = _RAND_268[31:0];
  _RAND_269 = {1{`RANDOM}};
  stage2_regs_r_1_1_2 = _RAND_269[31:0];
  _RAND_270 = {1{`RANDOM}};
  stage2_regs_r_1_1_3 = _RAND_270[31:0];
  _RAND_271 = {1{`RANDOM}};
  stage2_regs_r_1_1_4 = _RAND_271[31:0];
  _RAND_272 = {1{`RANDOM}};
  stage2_regs_r_1_1_5 = _RAND_272[31:0];
  _RAND_273 = {1{`RANDOM}};
  stage2_regs_r_1_1_6 = _RAND_273[31:0];
  _RAND_274 = {1{`RANDOM}};
  stage2_regs_r_1_1_7 = _RAND_274[31:0];
  _RAND_275 = {1{`RANDOM}};
  stage2_regs_r_1_1_8 = _RAND_275[31:0];
  _RAND_276 = {1{`RANDOM}};
  stage2_regs_r_1_1_9 = _RAND_276[31:0];
  _RAND_277 = {1{`RANDOM}};
  stage2_regs_r_1_1_10 = _RAND_277[31:0];
  _RAND_278 = {1{`RANDOM}};
  stage2_regs_r_1_1_11 = _RAND_278[31:0];
  _RAND_279 = {1{`RANDOM}};
  stage2_regs_r_2_0_0 = _RAND_279[31:0];
  _RAND_280 = {1{`RANDOM}};
  stage2_regs_r_2_0_1 = _RAND_280[31:0];
  _RAND_281 = {1{`RANDOM}};
  stage2_regs_r_2_0_2 = _RAND_281[31:0];
  _RAND_282 = {1{`RANDOM}};
  stage2_regs_r_2_0_3 = _RAND_282[31:0];
  _RAND_283 = {1{`RANDOM}};
  stage2_regs_r_2_0_4 = _RAND_283[31:0];
  _RAND_284 = {1{`RANDOM}};
  stage2_regs_r_2_0_5 = _RAND_284[31:0];
  _RAND_285 = {1{`RANDOM}};
  stage2_regs_r_2_0_6 = _RAND_285[31:0];
  _RAND_286 = {1{`RANDOM}};
  stage2_regs_r_2_0_7 = _RAND_286[31:0];
  _RAND_287 = {1{`RANDOM}};
  stage2_regs_r_2_0_8 = _RAND_287[31:0];
  _RAND_288 = {1{`RANDOM}};
  stage2_regs_r_2_0_9 = _RAND_288[31:0];
  _RAND_289 = {1{`RANDOM}};
  stage2_regs_r_2_0_10 = _RAND_289[31:0];
  _RAND_290 = {1{`RANDOM}};
  stage2_regs_r_2_0_11 = _RAND_290[31:0];
  _RAND_291 = {1{`RANDOM}};
  stage2_regs_r_2_1_0 = _RAND_291[31:0];
  _RAND_292 = {1{`RANDOM}};
  stage2_regs_r_2_1_1 = _RAND_292[31:0];
  _RAND_293 = {1{`RANDOM}};
  stage2_regs_r_2_1_2 = _RAND_293[31:0];
  _RAND_294 = {1{`RANDOM}};
  stage2_regs_r_2_1_3 = _RAND_294[31:0];
  _RAND_295 = {1{`RANDOM}};
  stage2_regs_r_2_1_4 = _RAND_295[31:0];
  _RAND_296 = {1{`RANDOM}};
  stage2_regs_r_2_1_5 = _RAND_296[31:0];
  _RAND_297 = {1{`RANDOM}};
  stage2_regs_r_2_1_6 = _RAND_297[31:0];
  _RAND_298 = {1{`RANDOM}};
  stage2_regs_r_2_1_7 = _RAND_298[31:0];
  _RAND_299 = {1{`RANDOM}};
  stage2_regs_r_2_1_8 = _RAND_299[31:0];
  _RAND_300 = {1{`RANDOM}};
  stage2_regs_r_2_1_9 = _RAND_300[31:0];
  _RAND_301 = {1{`RANDOM}};
  stage2_regs_r_2_1_10 = _RAND_301[31:0];
  _RAND_302 = {1{`RANDOM}};
  stage2_regs_r_2_1_11 = _RAND_302[31:0];
  _RAND_303 = {1{`RANDOM}};
  stage3_regs_r_0_1_0 = _RAND_303[31:0];
  _RAND_304 = {1{`RANDOM}};
  stage3_regs_r_0_1_1 = _RAND_304[31:0];
  _RAND_305 = {1{`RANDOM}};
  stage3_regs_r_0_1_2 = _RAND_305[31:0];
  _RAND_306 = {1{`RANDOM}};
  stage3_regs_r_0_1_3 = _RAND_306[31:0];
  _RAND_307 = {1{`RANDOM}};
  stage3_regs_r_0_1_4 = _RAND_307[31:0];
  _RAND_308 = {1{`RANDOM}};
  stage3_regs_r_0_1_5 = _RAND_308[31:0];
  _RAND_309 = {1{`RANDOM}};
  stage3_regs_r_0_1_6 = _RAND_309[31:0];
  _RAND_310 = {1{`RANDOM}};
  stage3_regs_r_0_1_7 = _RAND_310[31:0];
  _RAND_311 = {1{`RANDOM}};
  stage3_regs_r_0_1_8 = _RAND_311[31:0];
  _RAND_312 = {1{`RANDOM}};
  stage3_regs_r_1_1_0 = _RAND_312[31:0];
  _RAND_313 = {1{`RANDOM}};
  stage3_regs_r_1_1_1 = _RAND_313[31:0];
  _RAND_314 = {1{`RANDOM}};
  stage3_regs_r_1_1_2 = _RAND_314[31:0];
  _RAND_315 = {1{`RANDOM}};
  stage3_regs_r_1_1_3 = _RAND_315[31:0];
  _RAND_316 = {1{`RANDOM}};
  stage3_regs_r_1_1_4 = _RAND_316[31:0];
  _RAND_317 = {1{`RANDOM}};
  stage3_regs_r_1_1_5 = _RAND_317[31:0];
  _RAND_318 = {1{`RANDOM}};
  stage3_regs_r_1_1_6 = _RAND_318[31:0];
  _RAND_319 = {1{`RANDOM}};
  stage3_regs_r_1_1_7 = _RAND_319[31:0];
  _RAND_320 = {1{`RANDOM}};
  stage3_regs_r_1_1_8 = _RAND_320[31:0];
  _RAND_321 = {1{`RANDOM}};
  stage3_regs_r_2_1_0 = _RAND_321[31:0];
  _RAND_322 = {1{`RANDOM}};
  stage3_regs_r_2_1_1 = _RAND_322[31:0];
  _RAND_323 = {1{`RANDOM}};
  stage3_regs_r_2_1_2 = _RAND_323[31:0];
  _RAND_324 = {1{`RANDOM}};
  stage3_regs_r_2_1_3 = _RAND_324[31:0];
  _RAND_325 = {1{`RANDOM}};
  stage3_regs_r_2_1_4 = _RAND_325[31:0];
  _RAND_326 = {1{`RANDOM}};
  stage3_regs_r_2_1_5 = _RAND_326[31:0];
  _RAND_327 = {1{`RANDOM}};
  stage3_regs_r_2_1_6 = _RAND_327[31:0];
  _RAND_328 = {1{`RANDOM}};
  stage3_regs_r_2_1_7 = _RAND_328[31:0];
  _RAND_329 = {1{`RANDOM}};
  stage3_regs_r_2_1_8 = _RAND_329[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FP_divider_newfpu(
  input         clock,
  input         reset,
  input  [31:0] io_in_a,
  output [31:0] io_out_s
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
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
  reg [31:0] _RAND_136;
  reg [31:0] _RAND_137;
  reg [31:0] _RAND_138;
  reg [31:0] _RAND_139;
  reg [31:0] _RAND_140;
  reg [31:0] _RAND_141;
  reg [31:0] _RAND_142;
  reg [31:0] _RAND_143;
  reg [31:0] _RAND_144;
  reg [31:0] _RAND_145;
  reg [31:0] _RAND_146;
  reg [31:0] _RAND_147;
  reg [31:0] _RAND_148;
  reg [31:0] _RAND_149;
  reg [31:0] _RAND_150;
  reg [31:0] _RAND_151;
  reg [31:0] _RAND_152;
  reg [31:0] _RAND_153;
  reg [31:0] _RAND_154;
  reg [31:0] _RAND_155;
  reg [31:0] _RAND_156;
  reg [31:0] _RAND_157;
  reg [31:0] _RAND_158;
  reg [31:0] _RAND_159;
  reg [31:0] _RAND_160;
  reg [31:0] _RAND_161;
  reg [31:0] _RAND_162;
  reg [31:0] _RAND_163;
  reg [31:0] _RAND_164;
  reg [31:0] _RAND_165;
  reg [31:0] _RAND_166;
  reg [31:0] _RAND_167;
  reg [31:0] _RAND_168;
  reg [31:0] _RAND_169;
  reg [31:0] _RAND_170;
  reg [31:0] _RAND_171;
  reg [31:0] _RAND_172;
  reg [31:0] _RAND_173;
  reg [31:0] _RAND_174;
  reg [31:0] _RAND_175;
  reg [31:0] _RAND_176;
  reg [31:0] _RAND_177;
  reg [31:0] _RAND_178;
  reg [31:0] _RAND_179;
  reg [31:0] _RAND_180;
  reg [31:0] _RAND_181;
  reg [31:0] _RAND_182;
  reg [31:0] _RAND_183;
  reg [31:0] _RAND_184;
  reg [31:0] _RAND_185;
  reg [31:0] _RAND_186;
  reg [31:0] _RAND_187;
  reg [31:0] _RAND_188;
  reg [31:0] _RAND_189;
  reg [31:0] _RAND_190;
  reg [31:0] _RAND_191;
  reg [31:0] _RAND_192;
  reg [31:0] _RAND_193;
  reg [31:0] _RAND_194;
`endif // RANDOMIZE_REG_INIT
  wire  FP_reciprocal_newfpu_clock; // @[FloatingPointDesigns.scala 2175:28]
  wire  FP_reciprocal_newfpu_reset; // @[FloatingPointDesigns.scala 2175:28]
  wire [31:0] FP_reciprocal_newfpu_io_out_s; // @[FloatingPointDesigns.scala 2175:28]
  wire  FP_multiplier_10ccs_clock; // @[FloatingPointDesigns.scala 2178:28]
  wire  FP_multiplier_10ccs_reset; // @[FloatingPointDesigns.scala 2178:28]
  wire [31:0] FP_multiplier_10ccs_io_in_a; // @[FloatingPointDesigns.scala 2178:28]
  wire [31:0] FP_multiplier_10ccs_io_in_b; // @[FloatingPointDesigns.scala 2178:28]
  wire [31:0] FP_multiplier_10ccs_io_out_s; // @[FloatingPointDesigns.scala 2178:28]
  reg [31:0] regs_0; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_1; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_2; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_3; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_4; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_5; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_6; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_7; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_8; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_9; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_10; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_11; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_12; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_13; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_14; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_15; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_16; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_17; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_18; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_19; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_20; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_21; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_22; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_23; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_24; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_25; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_26; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_27; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_28; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_29; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_30; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_31; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_32; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_33; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_34; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_35; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_36; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_37; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_38; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_39; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_40; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_41; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_42; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_43; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_44; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_45; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_46; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_47; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_48; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_49; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_50; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_51; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_52; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_53; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_54; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_55; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_56; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_57; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_58; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_59; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_60; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_61; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_62; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_63; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_64; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_65; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_66; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_67; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_68; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_69; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_70; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_71; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_72; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_73; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_74; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_75; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_76; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_77; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_78; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_79; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_80; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_81; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_82; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_83; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_84; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_85; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_86; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_87; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_88; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_89; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_90; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_91; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_92; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_93; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_94; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_95; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_96; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_97; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_98; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_99; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_100; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_101; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_102; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_103; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_104; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_105; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_106; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_107; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_108; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_109; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_110; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_111; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_112; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_113; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_114; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_115; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_116; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_117; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_118; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_119; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_120; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_121; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_122; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_123; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_124; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_125; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_126; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_127; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_128; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_129; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_130; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_131; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_132; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_133; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_134; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_135; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_136; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_137; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_138; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_139; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_140; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_141; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_142; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_143; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_144; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_145; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_146; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_147; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_148; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_149; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_150; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_151; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_152; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_153; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_154; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_155; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_156; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_157; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_158; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_159; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_160; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_161; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_162; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_163; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_164; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_165; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_166; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_167; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_168; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_169; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_170; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_171; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_172; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_173; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_174; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_175; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_176; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_177; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_178; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_179; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_180; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_181; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_182; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_183; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_184; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_185; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_186; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_187; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_188; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_189; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_190; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_191; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_192; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_193; // @[FloatingPointDesigns.scala 2170:23]
  reg [31:0] regs_194; // @[FloatingPointDesigns.scala 2170:23]
  FP_reciprocal_newfpu FP_reciprocal_newfpu ( // @[FloatingPointDesigns.scala 2175:28]
    .clock(FP_reciprocal_newfpu_clock),
    .reset(FP_reciprocal_newfpu_reset),
    .io_out_s(FP_reciprocal_newfpu_io_out_s)
  );
  FP_multiplier_10ccs FP_multiplier_10ccs ( // @[FloatingPointDesigns.scala 2178:28]
    .clock(FP_multiplier_10ccs_clock),
    .reset(FP_multiplier_10ccs_reset),
    .io_in_a(FP_multiplier_10ccs_io_in_a),
    .io_in_b(FP_multiplier_10ccs_io_in_b),
    .io_out_s(FP_multiplier_10ccs_io_out_s)
  );
  assign io_out_s = FP_multiplier_10ccs_io_out_s; // @[FloatingPointDesigns.scala 2182:14]
  assign FP_reciprocal_newfpu_clock = clock;
  assign FP_reciprocal_newfpu_reset = reset;
  assign FP_multiplier_10ccs_clock = clock;
  assign FP_multiplier_10ccs_reset = reset;
  assign FP_multiplier_10ccs_io_in_a = regs_194; // @[FloatingPointDesigns.scala 2180:21]
  assign FP_multiplier_10ccs_io_in_b = FP_reciprocal_newfpu_io_out_s; // @[FloatingPointDesigns.scala 2181:21]
  always @(posedge clock) begin
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_0 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_0 <= io_in_a; // @[FloatingPointDesigns.scala 2171:13]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_1 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_1 <= regs_0; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_2 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_2 <= regs_1; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_3 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_3 <= regs_2; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_4 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_4 <= regs_3; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_5 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_5 <= regs_4; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_6 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_6 <= regs_5; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_7 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_7 <= regs_6; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_8 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_8 <= regs_7; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_9 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_9 <= regs_8; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_10 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_10 <= regs_9; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_11 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_11 <= regs_10; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_12 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_12 <= regs_11; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_13 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_13 <= regs_12; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_14 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_14 <= regs_13; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_15 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_15 <= regs_14; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_16 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_16 <= regs_15; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_17 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_17 <= regs_16; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_18 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_18 <= regs_17; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_19 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_19 <= regs_18; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_20 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_20 <= regs_19; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_21 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_21 <= regs_20; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_22 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_22 <= regs_21; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_23 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_23 <= regs_22; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_24 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_24 <= regs_23; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_25 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_25 <= regs_24; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_26 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_26 <= regs_25; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_27 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_27 <= regs_26; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_28 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_28 <= regs_27; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_29 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_29 <= regs_28; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_30 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_30 <= regs_29; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_31 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_31 <= regs_30; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_32 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_32 <= regs_31; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_33 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_33 <= regs_32; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_34 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_34 <= regs_33; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_35 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_35 <= regs_34; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_36 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_36 <= regs_35; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_37 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_37 <= regs_36; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_38 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_38 <= regs_37; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_39 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_39 <= regs_38; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_40 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_40 <= regs_39; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_41 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_41 <= regs_40; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_42 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_42 <= regs_41; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_43 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_43 <= regs_42; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_44 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_44 <= regs_43; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_45 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_45 <= regs_44; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_46 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_46 <= regs_45; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_47 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_47 <= regs_46; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_48 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_48 <= regs_47; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_49 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_49 <= regs_48; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_50 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_50 <= regs_49; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_51 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_51 <= regs_50; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_52 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_52 <= regs_51; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_53 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_53 <= regs_52; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_54 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_54 <= regs_53; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_55 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_55 <= regs_54; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_56 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_56 <= regs_55; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_57 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_57 <= regs_56; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_58 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_58 <= regs_57; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_59 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_59 <= regs_58; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_60 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_60 <= regs_59; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_61 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_61 <= regs_60; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_62 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_62 <= regs_61; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_63 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_63 <= regs_62; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_64 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_64 <= regs_63; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_65 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_65 <= regs_64; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_66 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_66 <= regs_65; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_67 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_67 <= regs_66; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_68 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_68 <= regs_67; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_69 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_69 <= regs_68; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_70 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_70 <= regs_69; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_71 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_71 <= regs_70; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_72 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_72 <= regs_71; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_73 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_73 <= regs_72; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_74 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_74 <= regs_73; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_75 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_75 <= regs_74; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_76 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_76 <= regs_75; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_77 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_77 <= regs_76; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_78 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_78 <= regs_77; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_79 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_79 <= regs_78; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_80 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_80 <= regs_79; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_81 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_81 <= regs_80; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_82 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_82 <= regs_81; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_83 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_83 <= regs_82; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_84 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_84 <= regs_83; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_85 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_85 <= regs_84; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_86 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_86 <= regs_85; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_87 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_87 <= regs_86; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_88 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_88 <= regs_87; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_89 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_89 <= regs_88; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_90 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_90 <= regs_89; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_91 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_91 <= regs_90; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_92 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_92 <= regs_91; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_93 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_93 <= regs_92; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_94 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_94 <= regs_93; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_95 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_95 <= regs_94; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_96 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_96 <= regs_95; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_97 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_97 <= regs_96; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_98 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_98 <= regs_97; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_99 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_99 <= regs_98; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_100 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_100 <= regs_99; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_101 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_101 <= regs_100; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_102 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_102 <= regs_101; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_103 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_103 <= regs_102; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_104 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_104 <= regs_103; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_105 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_105 <= regs_104; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_106 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_106 <= regs_105; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_107 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_107 <= regs_106; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_108 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_108 <= regs_107; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_109 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_109 <= regs_108; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_110 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_110 <= regs_109; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_111 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_111 <= regs_110; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_112 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_112 <= regs_111; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_113 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_113 <= regs_112; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_114 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_114 <= regs_113; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_115 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_115 <= regs_114; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_116 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_116 <= regs_115; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_117 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_117 <= regs_116; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_118 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_118 <= regs_117; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_119 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_119 <= regs_118; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_120 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_120 <= regs_119; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_121 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_121 <= regs_120; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_122 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_122 <= regs_121; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_123 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_123 <= regs_122; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_124 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_124 <= regs_123; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_125 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_125 <= regs_124; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_126 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_126 <= regs_125; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_127 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_127 <= regs_126; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_128 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_128 <= regs_127; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_129 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_129 <= regs_128; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_130 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_130 <= regs_129; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_131 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_131 <= regs_130; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_132 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_132 <= regs_131; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_133 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_133 <= regs_132; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_134 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_134 <= regs_133; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_135 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_135 <= regs_134; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_136 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_136 <= regs_135; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_137 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_137 <= regs_136; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_138 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_138 <= regs_137; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_139 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_139 <= regs_138; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_140 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_140 <= regs_139; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_141 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_141 <= regs_140; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_142 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_142 <= regs_141; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_143 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_143 <= regs_142; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_144 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_144 <= regs_143; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_145 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_145 <= regs_144; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_146 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_146 <= regs_145; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_147 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_147 <= regs_146; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_148 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_148 <= regs_147; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_149 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_149 <= regs_148; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_150 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_150 <= regs_149; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_151 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_151 <= regs_150; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_152 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_152 <= regs_151; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_153 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_153 <= regs_152; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_154 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_154 <= regs_153; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_155 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_155 <= regs_154; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_156 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_156 <= regs_155; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_157 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_157 <= regs_156; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_158 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_158 <= regs_157; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_159 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_159 <= regs_158; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_160 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_160 <= regs_159; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_161 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_161 <= regs_160; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_162 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_162 <= regs_161; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_163 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_163 <= regs_162; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_164 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_164 <= regs_163; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_165 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_165 <= regs_164; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_166 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_166 <= regs_165; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_167 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_167 <= regs_166; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_168 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_168 <= regs_167; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_169 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_169 <= regs_168; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_170 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_170 <= regs_169; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_171 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_171 <= regs_170; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_172 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_172 <= regs_171; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_173 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_173 <= regs_172; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_174 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_174 <= regs_173; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_175 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_175 <= regs_174; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_176 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_176 <= regs_175; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_177 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_177 <= regs_176; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_178 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_178 <= regs_177; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_179 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_179 <= regs_178; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_180 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_180 <= regs_179; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_181 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_181 <= regs_180; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_182 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_182 <= regs_181; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_183 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_183 <= regs_182; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_184 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_184 <= regs_183; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_185 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_185 <= regs_184; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_186 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_186 <= regs_185; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_187 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_187 <= regs_186; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_188 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_188 <= regs_187; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_189 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_189 <= regs_188; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_190 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_190 <= regs_189; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_191 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_191 <= regs_190; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_192 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_192 <= regs_191; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_193 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_193 <= regs_192; // @[FloatingPointDesigns.scala 2173:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2170:23]
      regs_194 <= 32'h0; // @[FloatingPointDesigns.scala 2170:23]
    end else begin
      regs_194 <= regs_193; // @[FloatingPointDesigns.scala 2173:15]
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
  regs_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  regs_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  regs_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  regs_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  regs_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  regs_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  regs_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  regs_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  regs_8 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  regs_9 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  regs_10 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  regs_11 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  regs_12 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  regs_13 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  regs_14 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  regs_15 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  regs_16 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  regs_17 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  regs_18 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  regs_19 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  regs_20 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  regs_21 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  regs_22 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  regs_23 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  regs_24 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  regs_25 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  regs_26 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  regs_27 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  regs_28 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  regs_29 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  regs_30 = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  regs_31 = _RAND_31[31:0];
  _RAND_32 = {1{`RANDOM}};
  regs_32 = _RAND_32[31:0];
  _RAND_33 = {1{`RANDOM}};
  regs_33 = _RAND_33[31:0];
  _RAND_34 = {1{`RANDOM}};
  regs_34 = _RAND_34[31:0];
  _RAND_35 = {1{`RANDOM}};
  regs_35 = _RAND_35[31:0];
  _RAND_36 = {1{`RANDOM}};
  regs_36 = _RAND_36[31:0];
  _RAND_37 = {1{`RANDOM}};
  regs_37 = _RAND_37[31:0];
  _RAND_38 = {1{`RANDOM}};
  regs_38 = _RAND_38[31:0];
  _RAND_39 = {1{`RANDOM}};
  regs_39 = _RAND_39[31:0];
  _RAND_40 = {1{`RANDOM}};
  regs_40 = _RAND_40[31:0];
  _RAND_41 = {1{`RANDOM}};
  regs_41 = _RAND_41[31:0];
  _RAND_42 = {1{`RANDOM}};
  regs_42 = _RAND_42[31:0];
  _RAND_43 = {1{`RANDOM}};
  regs_43 = _RAND_43[31:0];
  _RAND_44 = {1{`RANDOM}};
  regs_44 = _RAND_44[31:0];
  _RAND_45 = {1{`RANDOM}};
  regs_45 = _RAND_45[31:0];
  _RAND_46 = {1{`RANDOM}};
  regs_46 = _RAND_46[31:0];
  _RAND_47 = {1{`RANDOM}};
  regs_47 = _RAND_47[31:0];
  _RAND_48 = {1{`RANDOM}};
  regs_48 = _RAND_48[31:0];
  _RAND_49 = {1{`RANDOM}};
  regs_49 = _RAND_49[31:0];
  _RAND_50 = {1{`RANDOM}};
  regs_50 = _RAND_50[31:0];
  _RAND_51 = {1{`RANDOM}};
  regs_51 = _RAND_51[31:0];
  _RAND_52 = {1{`RANDOM}};
  regs_52 = _RAND_52[31:0];
  _RAND_53 = {1{`RANDOM}};
  regs_53 = _RAND_53[31:0];
  _RAND_54 = {1{`RANDOM}};
  regs_54 = _RAND_54[31:0];
  _RAND_55 = {1{`RANDOM}};
  regs_55 = _RAND_55[31:0];
  _RAND_56 = {1{`RANDOM}};
  regs_56 = _RAND_56[31:0];
  _RAND_57 = {1{`RANDOM}};
  regs_57 = _RAND_57[31:0];
  _RAND_58 = {1{`RANDOM}};
  regs_58 = _RAND_58[31:0];
  _RAND_59 = {1{`RANDOM}};
  regs_59 = _RAND_59[31:0];
  _RAND_60 = {1{`RANDOM}};
  regs_60 = _RAND_60[31:0];
  _RAND_61 = {1{`RANDOM}};
  regs_61 = _RAND_61[31:0];
  _RAND_62 = {1{`RANDOM}};
  regs_62 = _RAND_62[31:0];
  _RAND_63 = {1{`RANDOM}};
  regs_63 = _RAND_63[31:0];
  _RAND_64 = {1{`RANDOM}};
  regs_64 = _RAND_64[31:0];
  _RAND_65 = {1{`RANDOM}};
  regs_65 = _RAND_65[31:0];
  _RAND_66 = {1{`RANDOM}};
  regs_66 = _RAND_66[31:0];
  _RAND_67 = {1{`RANDOM}};
  regs_67 = _RAND_67[31:0];
  _RAND_68 = {1{`RANDOM}};
  regs_68 = _RAND_68[31:0];
  _RAND_69 = {1{`RANDOM}};
  regs_69 = _RAND_69[31:0];
  _RAND_70 = {1{`RANDOM}};
  regs_70 = _RAND_70[31:0];
  _RAND_71 = {1{`RANDOM}};
  regs_71 = _RAND_71[31:0];
  _RAND_72 = {1{`RANDOM}};
  regs_72 = _RAND_72[31:0];
  _RAND_73 = {1{`RANDOM}};
  regs_73 = _RAND_73[31:0];
  _RAND_74 = {1{`RANDOM}};
  regs_74 = _RAND_74[31:0];
  _RAND_75 = {1{`RANDOM}};
  regs_75 = _RAND_75[31:0];
  _RAND_76 = {1{`RANDOM}};
  regs_76 = _RAND_76[31:0];
  _RAND_77 = {1{`RANDOM}};
  regs_77 = _RAND_77[31:0];
  _RAND_78 = {1{`RANDOM}};
  regs_78 = _RAND_78[31:0];
  _RAND_79 = {1{`RANDOM}};
  regs_79 = _RAND_79[31:0];
  _RAND_80 = {1{`RANDOM}};
  regs_80 = _RAND_80[31:0];
  _RAND_81 = {1{`RANDOM}};
  regs_81 = _RAND_81[31:0];
  _RAND_82 = {1{`RANDOM}};
  regs_82 = _RAND_82[31:0];
  _RAND_83 = {1{`RANDOM}};
  regs_83 = _RAND_83[31:0];
  _RAND_84 = {1{`RANDOM}};
  regs_84 = _RAND_84[31:0];
  _RAND_85 = {1{`RANDOM}};
  regs_85 = _RAND_85[31:0];
  _RAND_86 = {1{`RANDOM}};
  regs_86 = _RAND_86[31:0];
  _RAND_87 = {1{`RANDOM}};
  regs_87 = _RAND_87[31:0];
  _RAND_88 = {1{`RANDOM}};
  regs_88 = _RAND_88[31:0];
  _RAND_89 = {1{`RANDOM}};
  regs_89 = _RAND_89[31:0];
  _RAND_90 = {1{`RANDOM}};
  regs_90 = _RAND_90[31:0];
  _RAND_91 = {1{`RANDOM}};
  regs_91 = _RAND_91[31:0];
  _RAND_92 = {1{`RANDOM}};
  regs_92 = _RAND_92[31:0];
  _RAND_93 = {1{`RANDOM}};
  regs_93 = _RAND_93[31:0];
  _RAND_94 = {1{`RANDOM}};
  regs_94 = _RAND_94[31:0];
  _RAND_95 = {1{`RANDOM}};
  regs_95 = _RAND_95[31:0];
  _RAND_96 = {1{`RANDOM}};
  regs_96 = _RAND_96[31:0];
  _RAND_97 = {1{`RANDOM}};
  regs_97 = _RAND_97[31:0];
  _RAND_98 = {1{`RANDOM}};
  regs_98 = _RAND_98[31:0];
  _RAND_99 = {1{`RANDOM}};
  regs_99 = _RAND_99[31:0];
  _RAND_100 = {1{`RANDOM}};
  regs_100 = _RAND_100[31:0];
  _RAND_101 = {1{`RANDOM}};
  regs_101 = _RAND_101[31:0];
  _RAND_102 = {1{`RANDOM}};
  regs_102 = _RAND_102[31:0];
  _RAND_103 = {1{`RANDOM}};
  regs_103 = _RAND_103[31:0];
  _RAND_104 = {1{`RANDOM}};
  regs_104 = _RAND_104[31:0];
  _RAND_105 = {1{`RANDOM}};
  regs_105 = _RAND_105[31:0];
  _RAND_106 = {1{`RANDOM}};
  regs_106 = _RAND_106[31:0];
  _RAND_107 = {1{`RANDOM}};
  regs_107 = _RAND_107[31:0];
  _RAND_108 = {1{`RANDOM}};
  regs_108 = _RAND_108[31:0];
  _RAND_109 = {1{`RANDOM}};
  regs_109 = _RAND_109[31:0];
  _RAND_110 = {1{`RANDOM}};
  regs_110 = _RAND_110[31:0];
  _RAND_111 = {1{`RANDOM}};
  regs_111 = _RAND_111[31:0];
  _RAND_112 = {1{`RANDOM}};
  regs_112 = _RAND_112[31:0];
  _RAND_113 = {1{`RANDOM}};
  regs_113 = _RAND_113[31:0];
  _RAND_114 = {1{`RANDOM}};
  regs_114 = _RAND_114[31:0];
  _RAND_115 = {1{`RANDOM}};
  regs_115 = _RAND_115[31:0];
  _RAND_116 = {1{`RANDOM}};
  regs_116 = _RAND_116[31:0];
  _RAND_117 = {1{`RANDOM}};
  regs_117 = _RAND_117[31:0];
  _RAND_118 = {1{`RANDOM}};
  regs_118 = _RAND_118[31:0];
  _RAND_119 = {1{`RANDOM}};
  regs_119 = _RAND_119[31:0];
  _RAND_120 = {1{`RANDOM}};
  regs_120 = _RAND_120[31:0];
  _RAND_121 = {1{`RANDOM}};
  regs_121 = _RAND_121[31:0];
  _RAND_122 = {1{`RANDOM}};
  regs_122 = _RAND_122[31:0];
  _RAND_123 = {1{`RANDOM}};
  regs_123 = _RAND_123[31:0];
  _RAND_124 = {1{`RANDOM}};
  regs_124 = _RAND_124[31:0];
  _RAND_125 = {1{`RANDOM}};
  regs_125 = _RAND_125[31:0];
  _RAND_126 = {1{`RANDOM}};
  regs_126 = _RAND_126[31:0];
  _RAND_127 = {1{`RANDOM}};
  regs_127 = _RAND_127[31:0];
  _RAND_128 = {1{`RANDOM}};
  regs_128 = _RAND_128[31:0];
  _RAND_129 = {1{`RANDOM}};
  regs_129 = _RAND_129[31:0];
  _RAND_130 = {1{`RANDOM}};
  regs_130 = _RAND_130[31:0];
  _RAND_131 = {1{`RANDOM}};
  regs_131 = _RAND_131[31:0];
  _RAND_132 = {1{`RANDOM}};
  regs_132 = _RAND_132[31:0];
  _RAND_133 = {1{`RANDOM}};
  regs_133 = _RAND_133[31:0];
  _RAND_134 = {1{`RANDOM}};
  regs_134 = _RAND_134[31:0];
  _RAND_135 = {1{`RANDOM}};
  regs_135 = _RAND_135[31:0];
  _RAND_136 = {1{`RANDOM}};
  regs_136 = _RAND_136[31:0];
  _RAND_137 = {1{`RANDOM}};
  regs_137 = _RAND_137[31:0];
  _RAND_138 = {1{`RANDOM}};
  regs_138 = _RAND_138[31:0];
  _RAND_139 = {1{`RANDOM}};
  regs_139 = _RAND_139[31:0];
  _RAND_140 = {1{`RANDOM}};
  regs_140 = _RAND_140[31:0];
  _RAND_141 = {1{`RANDOM}};
  regs_141 = _RAND_141[31:0];
  _RAND_142 = {1{`RANDOM}};
  regs_142 = _RAND_142[31:0];
  _RAND_143 = {1{`RANDOM}};
  regs_143 = _RAND_143[31:0];
  _RAND_144 = {1{`RANDOM}};
  regs_144 = _RAND_144[31:0];
  _RAND_145 = {1{`RANDOM}};
  regs_145 = _RAND_145[31:0];
  _RAND_146 = {1{`RANDOM}};
  regs_146 = _RAND_146[31:0];
  _RAND_147 = {1{`RANDOM}};
  regs_147 = _RAND_147[31:0];
  _RAND_148 = {1{`RANDOM}};
  regs_148 = _RAND_148[31:0];
  _RAND_149 = {1{`RANDOM}};
  regs_149 = _RAND_149[31:0];
  _RAND_150 = {1{`RANDOM}};
  regs_150 = _RAND_150[31:0];
  _RAND_151 = {1{`RANDOM}};
  regs_151 = _RAND_151[31:0];
  _RAND_152 = {1{`RANDOM}};
  regs_152 = _RAND_152[31:0];
  _RAND_153 = {1{`RANDOM}};
  regs_153 = _RAND_153[31:0];
  _RAND_154 = {1{`RANDOM}};
  regs_154 = _RAND_154[31:0];
  _RAND_155 = {1{`RANDOM}};
  regs_155 = _RAND_155[31:0];
  _RAND_156 = {1{`RANDOM}};
  regs_156 = _RAND_156[31:0];
  _RAND_157 = {1{`RANDOM}};
  regs_157 = _RAND_157[31:0];
  _RAND_158 = {1{`RANDOM}};
  regs_158 = _RAND_158[31:0];
  _RAND_159 = {1{`RANDOM}};
  regs_159 = _RAND_159[31:0];
  _RAND_160 = {1{`RANDOM}};
  regs_160 = _RAND_160[31:0];
  _RAND_161 = {1{`RANDOM}};
  regs_161 = _RAND_161[31:0];
  _RAND_162 = {1{`RANDOM}};
  regs_162 = _RAND_162[31:0];
  _RAND_163 = {1{`RANDOM}};
  regs_163 = _RAND_163[31:0];
  _RAND_164 = {1{`RANDOM}};
  regs_164 = _RAND_164[31:0];
  _RAND_165 = {1{`RANDOM}};
  regs_165 = _RAND_165[31:0];
  _RAND_166 = {1{`RANDOM}};
  regs_166 = _RAND_166[31:0];
  _RAND_167 = {1{`RANDOM}};
  regs_167 = _RAND_167[31:0];
  _RAND_168 = {1{`RANDOM}};
  regs_168 = _RAND_168[31:0];
  _RAND_169 = {1{`RANDOM}};
  regs_169 = _RAND_169[31:0];
  _RAND_170 = {1{`RANDOM}};
  regs_170 = _RAND_170[31:0];
  _RAND_171 = {1{`RANDOM}};
  regs_171 = _RAND_171[31:0];
  _RAND_172 = {1{`RANDOM}};
  regs_172 = _RAND_172[31:0];
  _RAND_173 = {1{`RANDOM}};
  regs_173 = _RAND_173[31:0];
  _RAND_174 = {1{`RANDOM}};
  regs_174 = _RAND_174[31:0];
  _RAND_175 = {1{`RANDOM}};
  regs_175 = _RAND_175[31:0];
  _RAND_176 = {1{`RANDOM}};
  regs_176 = _RAND_176[31:0];
  _RAND_177 = {1{`RANDOM}};
  regs_177 = _RAND_177[31:0];
  _RAND_178 = {1{`RANDOM}};
  regs_178 = _RAND_178[31:0];
  _RAND_179 = {1{`RANDOM}};
  regs_179 = _RAND_179[31:0];
  _RAND_180 = {1{`RANDOM}};
  regs_180 = _RAND_180[31:0];
  _RAND_181 = {1{`RANDOM}};
  regs_181 = _RAND_181[31:0];
  _RAND_182 = {1{`RANDOM}};
  regs_182 = _RAND_182[31:0];
  _RAND_183 = {1{`RANDOM}};
  regs_183 = _RAND_183[31:0];
  _RAND_184 = {1{`RANDOM}};
  regs_184 = _RAND_184[31:0];
  _RAND_185 = {1{`RANDOM}};
  regs_185 = _RAND_185[31:0];
  _RAND_186 = {1{`RANDOM}};
  regs_186 = _RAND_186[31:0];
  _RAND_187 = {1{`RANDOM}};
  regs_187 = _RAND_187[31:0];
  _RAND_188 = {1{`RANDOM}};
  regs_188 = _RAND_188[31:0];
  _RAND_189 = {1{`RANDOM}};
  regs_189 = _RAND_189[31:0];
  _RAND_190 = {1{`RANDOM}};
  regs_190 = _RAND_190[31:0];
  _RAND_191 = {1{`RANDOM}};
  regs_191 = _RAND_191[31:0];
  _RAND_192 = {1{`RANDOM}};
  regs_192 = _RAND_192[31:0];
  _RAND_193 = {1{`RANDOM}};
  regs_193 = _RAND_193[31:0];
  _RAND_194 = {1{`RANDOM}};
  regs_194 = _RAND_194[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module leadingOneDetector(
  input  [22:0] io_in,
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
  assign io_out = io_in[22] ? 5'h17 : _hotValue_T_20; // @[Mux.scala 47:70]
endmodule
module FP_extract(
  input  [31:0] io_in_a,
  output [31:0] io_out_frac
);
  wire [22:0] leadingOne_io_in; // @[FloatingPointDesigns.scala 894:28]
  wire [4:0] leadingOne_io_out; // @[FloatingPointDesigns.scala 894:28]
  wire [7:0] exp = io_in_a[30:23]; // @[FloatingPointDesigns.scala 888:19]
  wire [22:0] mant = io_in_a[22:0]; // @[FloatingPointDesigns.scala 890:20]
  wire [7:0] subres = exp - 8'h7f; // @[FloatingPointDesigns.scala 898:21]
  wire [277:0] _GEN_1 = {{255'd0}, mant}; // @[FloatingPointDesigns.scala 901:27]
  wire [277:0] _firstshiftf_T = _GEN_1 << subres; // @[FloatingPointDesigns.scala 901:27]
  wire [4:0] _new_exp_T_1 = 5'h17 - leadingOne_io_out; // @[FloatingPointDesigns.scala 904:39]
  wire [4:0] _new_exp_T_3 = _new_exp_T_1 + 5'h1; // @[FloatingPointDesigns.scala 904:59]
  wire [6:0] _GEN_5 = {{2'd0}, _new_exp_T_3}; // @[FloatingPointDesigns.scala 904:25]
  wire [6:0] _new_exp_T_5 = 7'h7f - _GEN_5; // @[FloatingPointDesigns.scala 904:25]
  wire [22:0] firstshiftf = _firstshiftf_T[22:0]; // @[FloatingPointDesigns.scala 900:29 901:19]
  wire [53:0] _GEN_2 = {{31'd0}, firstshiftf}; // @[FloatingPointDesigns.scala 906:31]
  wire [53:0] _new_mant_T_4 = _GEN_2 << _new_exp_T_3; // @[FloatingPointDesigns.scala 906:31]
  wire [7:0] new_exp = {{1'd0}, _new_exp_T_5}; // @[FloatingPointDesigns.scala 903:25 904:15]
  wire [22:0] new_mant = _new_mant_T_4[22:0]; // @[FloatingPointDesigns.scala 905:26 906:16]
  wire [31:0] _result_frac_T_2 = {io_in_a[31],new_exp,new_mant}; // @[FloatingPointDesigns.scala 907:47]
  wire [7:0] _GEN_6 = {{3'd0}, _new_exp_T_3}; // @[FloatingPointDesigns.scala 913:22]
  wire [7:0] new_exp_1 = exp - _GEN_6; // @[FloatingPointDesigns.scala 913:22]
  wire [53:0] _GEN_3 = {{31'd0}, mant}; // @[FloatingPointDesigns.scala 915:24]
  wire [53:0] _new_mant_T_9 = _GEN_3 << _new_exp_T_3; // @[FloatingPointDesigns.scala 915:24]
  wire [22:0] new_mant_1 = _new_mant_T_9[22:0]; // @[FloatingPointDesigns.scala 914:26 915:16]
  wire [31:0] _result_frac_T_5 = {io_in_a[31],new_exp_1,new_mant_1}; // @[FloatingPointDesigns.scala 916:47]
  wire [31:0] _GEN_0 = exp < 8'h7f ? io_in_a : _result_frac_T_5; // @[FloatingPointDesigns.scala 908:29 909:19 916:19]
  leadingOneDetector leadingOne ( // @[FloatingPointDesigns.scala 894:28]
    .io_in(leadingOne_io_in),
    .io_out(leadingOne_io_out)
  );
  assign io_out_frac = exp > 8'h7f ? _result_frac_T_2 : _GEN_0; // @[FloatingPointDesigns.scala 896:24 907:19]
  assign leadingOne_io_in = exp > 8'h7f ? firstshiftf : mant; // @[FloatingPointDesigns.scala 895:22 896:24 902:24]
endmodule
module TrigRangeReducer(
  input         clock,
  input         reset,
  input  [31:0] io_in,
  output [31:0] io_out
);
  wire  divider_clock; // @[TrigRangeReducer.scala 22:23]
  wire  divider_reset; // @[TrigRangeReducer.scala 22:23]
  wire [31:0] divider_io_in_a; // @[TrigRangeReducer.scala 22:23]
  wire [31:0] divider_io_out_s; // @[TrigRangeReducer.scala 22:23]
  wire [31:0] extractor_io_in_a; // @[TrigRangeReducer.scala 23:25]
  wire [31:0] extractor_io_out_frac; // @[TrigRangeReducer.scala 23:25]
  wire  mul_clock; // @[TrigRangeReducer.scala 24:19]
  wire  mul_reset; // @[TrigRangeReducer.scala 24:19]
  wire [31:0] mul_io_in_a; // @[TrigRangeReducer.scala 24:19]
  wire [31:0] mul_io_in_b; // @[TrigRangeReducer.scala 24:19]
  wire [31:0] mul_io_out_s; // @[TrigRangeReducer.scala 24:19]
  FP_divider_newfpu divider ( // @[TrigRangeReducer.scala 22:23]
    .clock(divider_clock),
    .reset(divider_reset),
    .io_in_a(divider_io_in_a),
    .io_out_s(divider_io_out_s)
  );
  FP_extract extractor ( // @[TrigRangeReducer.scala 23:25]
    .io_in_a(extractor_io_in_a),
    .io_out_frac(extractor_io_out_frac)
  );
  FP_multiplier_10ccs mul ( // @[TrigRangeReducer.scala 24:19]
    .clock(mul_clock),
    .reset(mul_reset),
    .io_in_a(mul_io_in_a),
    .io_in_b(mul_io_in_b),
    .io_out_s(mul_io_out_s)
  );
  assign io_out = mul_io_out_s; // @[TrigRangeReducer.scala 37:10]
  assign divider_clock = clock;
  assign divider_reset = reset;
  assign divider_io_in_a = io_in; // @[TrigRangeReducer.scala 27:19]
  assign extractor_io_in_a = divider_io_out_s; // @[TrigRangeReducer.scala 30:21]
  assign mul_clock = clock;
  assign mul_reset = reset;
  assign mul_io_in_a = extractor_io_out_frac; // @[TrigRangeReducer.scala 35:15]
  assign mul_io_in_b = 32'h40c90fdb; // @[TrigRangeReducer.scala 36:15]
endmodule
module FloatToFixed32(
  input  [31:0] io_in,
  output [31:0] io_out
);
  wire [31:0] frac = {9'h0,io_in[22:0]}; // @[FixedPoint.scala 17:42]
  wire [7:0] exp = io_in[30:23]; // @[FixedPoint.scala 18:25]
  wire  sign = io_in[31]; // @[FixedPoint.scala 19:26]
  wire [7:0] shiftamt = exp - 8'h7f; // @[FixedPoint.scala 20:37]
  wire [31:0] _data_T_3 = frac | 32'h800000; // @[FixedPoint.scala 23:18]
  wire [36:0] _GEN_0 = {_data_T_3, 5'h0}; // @[FixedPoint.scala 23:40]
  wire [38:0] _data_T_4 = {{2'd0}, _GEN_0}; // @[FixedPoint.scala 23:40]
  wire [7:0] _data_T_8 = 8'sh0 - $signed(shiftamt); // @[FixedPoint.scala 23:63]
  wire [38:0] _data_T_9 = _data_T_4 >> _data_T_8; // @[FixedPoint.scala 23:48]
  wire [7:0] _data_T_13 = exp - 8'h7f; // @[FixedPoint.scala 24:62]
  wire [293:0] _GEN_1 = {{255'd0}, _data_T_4}; // @[FixedPoint.scala 24:48]
  wire [293:0] _data_T_14 = _GEN_1 << _data_T_13; // @[FixedPoint.scala 24:48]
  wire [293:0] data = shiftamt[7] ? {{255'd0}, _data_T_9} : _data_T_14; // @[FixedPoint.scala 22:17]
  wire [293:0] _io_out_T_3 = 294'h0 - data; // @[FixedPoint.scala 25:40]
  wire [293:0] _io_out_T_4 = sign ? _io_out_T_3 : data; // @[FixedPoint.scala 25:16]
  assign io_out = _io_out_T_4[31:0]; // @[FixedPoint.scala 25:10]
endmodule
module CLZ32(
  input  [31:0] io_in,
  output [4:0]  io_out
);
  wire [31:0] _bx_T = io_in & 32'hffff0000; // @[FixedPoint.scala 36:20]
  wire  _bx_T_1 = _bx_T == 32'h0; // @[FixedPoint.scala 36:37]
  wire [47:0] _bx_T_2 = {io_in, 16'h0}; // @[FixedPoint.scala 36:49]
  wire [47:0] bx = _bx_T == 32'h0 ? _bx_T_2 : {{16'd0}, io_in}; // @[FixedPoint.scala 36:15]
  wire [47:0] _cx_T = bx & 48'hff000000; // @[FixedPoint.scala 37:20]
  wire  _cx_T_1 = _cx_T == 48'h0; // @[FixedPoint.scala 37:37]
  wire [55:0] _cx_T_2 = {bx, 8'h0}; // @[FixedPoint.scala 37:49]
  wire [55:0] cx = _cx_T == 48'h0 ? _cx_T_2 : {{8'd0}, bx}; // @[FixedPoint.scala 37:15]
  wire [55:0] _dx_T = cx & 56'hf0000000; // @[FixedPoint.scala 38:20]
  wire  _dx_T_1 = _dx_T == 56'h0; // @[FixedPoint.scala 38:37]
  wire [59:0] _dx_T_2 = {cx, 4'h0}; // @[FixedPoint.scala 38:49]
  wire [59:0] dx = _dx_T == 56'h0 ? _dx_T_2 : {{4'd0}, cx}; // @[FixedPoint.scala 38:15]
  wire [59:0] _ex_T = dx & 60'hc0000000; // @[FixedPoint.scala 39:20]
  wire  _ex_T_1 = _ex_T == 60'h0; // @[FixedPoint.scala 39:37]
  wire [61:0] _ex_T_2 = {dx, 2'h0}; // @[FixedPoint.scala 39:49]
  wire [61:0] ex = _ex_T == 60'h0 ? _ex_T_2 : {{2'd0}, dx}; // @[FixedPoint.scala 39:15]
  wire [3:0] _io_out_T_10 = {_bx_T_1,_cx_T_1,_dx_T_1,_ex_T_1}; // @[FixedPoint.scala 41:112]
  wire [61:0] _io_out_T_11 = ex & 62'h80000000; // @[FixedPoint.scala 42:44]
  assign io_out = {_io_out_T_10,_io_out_T_11 == 62'h0}; // @[FixedPoint.scala 42:36]
endmodule
module FixedToFloat32(
  input  [31:0] io_in,
  output [31:0] io_out
);
  wire [31:0] clz32_io_in; // @[FixedPoint.scala 62:21]
  wire [4:0] clz32_io_out; // @[FixedPoint.scala 62:21]
  wire [31:0] _data_T_2 = ~io_in; // @[FixedPoint.scala 59:35]
  wire [31:0] _data_T_4 = _data_T_2 + 32'h1; // @[FixedPoint.scala 59:50]
  wire [4:0] _leadingzeros_T = clz32_io_out; // @[FixedPoint.scala 65:47]
  wire [18:0] leadingzeros = {14'h0,_leadingzeros_T}; // @[FixedPoint.scala 65:32]
  wire [3:0] _exp_T_2 = 4'sh4 - 4'sh1; // @[FixedPoint.scala 67:16]
  wire [18:0] _exp_T_3 = {14'h0,_leadingzeros_T}; // @[FixedPoint.scala 67:38]
  wire [18:0] _GEN_0 = {{15{_exp_T_2[3]}},_exp_T_2}; // @[FixedPoint.scala 67:23]
  wire [18:0] _exp_T_6 = $signed(_GEN_0) - $signed(_exp_T_3); // @[FixedPoint.scala 67:23]
  wire [18:0] _exp_T_9 = $signed(_exp_T_6) + 19'sh7f; // @[FixedPoint.scala 67:46]
  wire [31:0] _frac_T = io_in[31] ? _data_T_4 : io_in; // @[FixedPoint.scala 68:19]
  wire [18:0] _frac_T_2 = leadingzeros + 19'h1; // @[FixedPoint.scala 68:43]
  wire [524318:0] _GEN_3 = {{524287{_frac_T[31]}},_frac_T}; // @[FixedPoint.scala 68:26]
  wire [524318:0] _frac_T_3 = $signed(_GEN_3) << _frac_T_2; // @[FixedPoint.scala 68:26]
  wire [5:0] _frac_T_5 = 6'h20 - 6'h17; // @[FixedPoint.scala 68:75]
  wire [524318:0] _frac_T_6 = $signed(_frac_T_3) >>> _frac_T_5; // @[FixedPoint.scala 68:66]
  wire [7:0] _io_out_T_1 = _exp_T_9[7:0]; // @[FixedPoint.scala 70:30]
  wire [8:0] _io_out_T_2 = {io_in[31],_io_out_T_1}; // @[FixedPoint.scala 70:23]
  wire [22:0] _io_out_T_3 = _frac_T_6[22:0]; // @[FixedPoint.scala 70:44]
  CLZ32 clz32 ( // @[FixedPoint.scala 62:21]
    .io_in(clz32_io_in),
    .io_out(clz32_io_out)
  );
  assign io_out = {_io_out_T_2,_io_out_T_3}; // @[FixedPoint.scala 70:37]
  assign clz32_io_in = io_in[31] ? _data_T_4 : io_in; // @[FixedPoint.scala 59:14]
endmodule
module CORDIC(
  input         clock,
  input         reset,
  input  [31:0] io_in_z0,
  input  [31:0] io_in_mode,
  output [31:0] io_out_x,
  output [1:0]  io_out_mode
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
`endif // RANDOMIZE_REG_INIT
  wire [31:0] tofixedx0_io_in; // @[CORDIC.scala 64:25]
  wire [31:0] tofixedx0_io_out; // @[CORDIC.scala 64:25]
  wire [31:0] tofixedy0_io_in; // @[CORDIC.scala 65:25]
  wire [31:0] tofixedy0_io_out; // @[CORDIC.scala 65:25]
  wire [31:0] tofloatxout_io_in; // @[CORDIC.scala 146:27]
  wire [31:0] tofloatxout_io_out; // @[CORDIC.scala 146:27]
  wire [31:0] tofloatyout_io_in; // @[CORDIC.scala 147:27]
  wire [31:0] tofloatyout_io_out; // @[CORDIC.scala 147:27]
  wire [31:0] tofloatzout_io_in; // @[CORDIC.scala 148:27]
  wire [31:0] tofloatzout_io_out; // @[CORDIC.scala 148:27]
  reg [31:0] xr_1; // @[CORDIC.scala 79:19]
  reg [31:0] xr_2; // @[CORDIC.scala 79:19]
  reg [31:0] xr_3; // @[CORDIC.scala 79:19]
  reg [31:0] xr_4; // @[CORDIC.scala 79:19]
  reg [31:0] xr_5; // @[CORDIC.scala 79:19]
  reg [31:0] xr_6; // @[CORDIC.scala 79:19]
  reg [31:0] xr_7; // @[CORDIC.scala 79:19]
  reg [31:0] yr_1; // @[CORDIC.scala 80:19]
  reg [31:0] yr_2; // @[CORDIC.scala 80:19]
  reg [31:0] yr_3; // @[CORDIC.scala 80:19]
  reg [31:0] yr_4; // @[CORDIC.scala 80:19]
  reg [31:0] yr_5; // @[CORDIC.scala 80:19]
  reg [31:0] yr_6; // @[CORDIC.scala 80:19]
  reg [31:0] yr_7; // @[CORDIC.scala 80:19]
  reg [31:0] thetar_1; // @[CORDIC.scala 81:23]
  reg [31:0] thetar_2; // @[CORDIC.scala 81:23]
  reg [31:0] thetar_3; // @[CORDIC.scala 81:23]
  reg [31:0] thetar_4; // @[CORDIC.scala 81:23]
  reg [31:0] thetar_5; // @[CORDIC.scala 81:23]
  reg [31:0] thetar_6; // @[CORDIC.scala 81:23]
  reg [31:0] z0sr_1; // @[CORDIC.scala 82:21]
  reg [31:0] z0sr_2; // @[CORDIC.scala 82:21]
  reg [31:0] z0sr_3; // @[CORDIC.scala 82:21]
  reg [31:0] z0sr_4; // @[CORDIC.scala 82:21]
  reg [31:0] z0sr_5; // @[CORDIC.scala 82:21]
  reg [31:0] z0sr_6; // @[CORDIC.scala 82:21]
  reg [31:0] z0sr_7; // @[CORDIC.scala 82:21]
  reg [1:0] modesr_1; // @[CORDIC.scala 83:23]
  reg [1:0] modesr_2; // @[CORDIC.scala 83:23]
  reg [1:0] modesr_3; // @[CORDIC.scala 83:23]
  reg [1:0] modesr_4; // @[CORDIC.scala 83:23]
  reg [1:0] modesr_5; // @[CORDIC.scala 83:23]
  reg [1:0] modesr_6; // @[CORDIC.scala 83:23]
  reg [1:0] modesr_7; // @[CORDIC.scala 83:23]
  wire  _fxxterm_T = 32'sh0 > $signed(io_in_z0); // @[CORDIC.scala 125:40]
  wire [31:0] _fxxterm_T_3 = 32'sh0 - $signed(tofixedx0_io_out); // @[CORDIC.scala 125:54]
  wire [31:0] fxxterm = 32'sh0 > $signed(io_in_z0) ? $signed(_fxxterm_T_3) : $signed(tofixedx0_io_out); // @[CORDIC.scala 125:26]
  wire [31:0] _fxyterm_T_3 = 32'sh0 - $signed(tofixedy0_io_out); // @[CORDIC.scala 126:54]
  wire [31:0] fxyterm = _fxxterm_T ? $signed(_fxyterm_T_3) : $signed(tofixedy0_io_out); // @[CORDIC.scala 126:26]
  wire [31:0] _fxthetaterm_T_2 = 32'h0 - 32'hc90fdb0; // @[CORDIC.scala 127:58]
  wire [31:0] _theta_1_T = _fxxterm_T ? _fxthetaterm_T_2 : 32'hc90fdb0; // @[CORDIC.scala 129:52]
  wire [32:0] _theta_1_T_1 = {{1{_theta_1_T[31]}},_theta_1_T}; // @[CORDIC.scala 129:38]
  wire [31:0] theta_1 = _theta_1_T_1[31:0]; // @[CORDIC.scala 129:38]
  wire [31:0] x_1 = $signed(tofixedx0_io_out) - $signed(fxyterm); // @[CORDIC.scala 130:30]
  wire [31:0] y_1 = $signed(fxxterm) + $signed(tofixedy0_io_out); // @[CORDIC.scala 131:54]
  wire  _fxxterm_T_4 = $signed(theta_1) > $signed(io_in_z0); // @[CORDIC.scala 125:40]
  wire [31:0] _fxxterm_T_7 = 32'sh0 - $signed(x_1); // @[CORDIC.scala 125:54]
  wire [31:0] fxxterm_1 = $signed(theta_1) > $signed(io_in_z0) ? $signed(_fxxterm_T_7) : $signed(x_1); // @[CORDIC.scala 125:26]
  wire [31:0] _fxyterm_T_7 = 32'sh0 - $signed(y_1); // @[CORDIC.scala 126:54]
  wire [31:0] fxyterm_1 = _fxxterm_T_4 ? $signed(_fxyterm_T_7) : $signed(y_1); // @[CORDIC.scala 126:26]
  wire [31:0] _fxthetaterm_T_5 = 32'h0 - 32'h76b19c0; // @[CORDIC.scala 127:58]
  wire [31:0] _theta_2_T = _fxxterm_T_4 ? _fxthetaterm_T_5 : 32'h76b19c0; // @[CORDIC.scala 129:52]
  wire [31:0] theta_2 = $signed(theta_1) + $signed(_theta_2_T); // @[CORDIC.scala 129:38]
  wire [30:0] _GEN_0 = fxyterm_1[31:1]; // @[CORDIC.scala 130:41]
  wire [31:0] _x_2_T = {{1{_GEN_0[30]}},_GEN_0}; // @[CORDIC.scala 130:41]
  wire [31:0] x_2 = $signed(x_1) - $signed(_x_2_T); // @[CORDIC.scala 130:30]
  wire [30:0] _GEN_1 = fxxterm_1[31:1]; // @[CORDIC.scala 131:30]
  wire [31:0] _y_2_T = {{1{_GEN_1[30]}},_GEN_1}; // @[CORDIC.scala 131:30]
  wire [31:0] y_2 = $signed(_y_2_T) + $signed(y_1); // @[CORDIC.scala 131:54]
  wire  _fxxterm_T_8 = $signed(theta_2) > $signed(io_in_z0); // @[CORDIC.scala 125:40]
  wire [31:0] _fxxterm_T_11 = 32'sh0 - $signed(x_2); // @[CORDIC.scala 125:54]
  wire [31:0] fxxterm_2 = $signed(theta_2) > $signed(io_in_z0) ? $signed(_fxxterm_T_11) : $signed(x_2); // @[CORDIC.scala 125:26]
  wire [31:0] _fxyterm_T_11 = 32'sh0 - $signed(y_2); // @[CORDIC.scala 126:54]
  wire [31:0] fxyterm_2 = _fxxterm_T_8 ? $signed(_fxyterm_T_11) : $signed(y_2); // @[CORDIC.scala 126:26]
  wire [31:0] _fxthetaterm_T_8 = 32'h0 - 32'h3eb6ec0; // @[CORDIC.scala 127:58]
  wire [31:0] _theta_3_T = _fxxterm_T_8 ? _fxthetaterm_T_8 : 32'h3eb6ec0; // @[CORDIC.scala 129:52]
  wire [31:0] theta_3 = $signed(theta_2) + $signed(_theta_3_T); // @[CORDIC.scala 129:38]
  wire [29:0] _GEN_2 = fxyterm_2[31:2]; // @[CORDIC.scala 130:41]
  wire [31:0] _x_3_T = {{2{_GEN_2[29]}},_GEN_2}; // @[CORDIC.scala 130:41]
  wire [31:0] x_3 = $signed(x_2) - $signed(_x_3_T); // @[CORDIC.scala 130:30]
  wire [29:0] _GEN_3 = fxxterm_2[31:2]; // @[CORDIC.scala 131:30]
  wire [31:0] _y_3_T = {{2{_GEN_3[29]}},_GEN_3}; // @[CORDIC.scala 131:30]
  wire [31:0] y_3 = $signed(_y_3_T) + $signed(y_2); // @[CORDIC.scala 131:54]
  wire  _fxxterm_T_12 = $signed(theta_3) > $signed(io_in_z0); // @[CORDIC.scala 125:40]
  wire [31:0] _fxxterm_T_15 = 32'sh0 - $signed(x_3); // @[CORDIC.scala 125:54]
  wire [31:0] fxxterm_3 = $signed(theta_3) > $signed(io_in_z0) ? $signed(_fxxterm_T_15) : $signed(x_3); // @[CORDIC.scala 125:26]
  wire [31:0] _fxyterm_T_15 = 32'sh0 - $signed(y_3); // @[CORDIC.scala 126:54]
  wire [31:0] fxyterm_3 = _fxxterm_T_12 ? $signed(_fxyterm_T_15) : $signed(y_3); // @[CORDIC.scala 126:26]
  wire [31:0] _fxthetaterm_T_11 = 32'h0 - 32'h1fd5baa; // @[CORDIC.scala 127:58]
  wire [31:0] _theta_4_T = _fxxterm_T_12 ? _fxthetaterm_T_11 : 32'h1fd5baa; // @[CORDIC.scala 129:52]
  wire [31:0] theta_4 = $signed(theta_3) + $signed(_theta_4_T); // @[CORDIC.scala 129:38]
  wire [28:0] _GEN_4 = fxyterm_3[31:3]; // @[CORDIC.scala 130:41]
  wire [31:0] _x_4_T = {{3{_GEN_4[28]}},_GEN_4}; // @[CORDIC.scala 130:41]
  wire [31:0] x_4 = $signed(x_3) - $signed(_x_4_T); // @[CORDIC.scala 130:30]
  wire [28:0] _GEN_5 = fxxterm_3[31:3]; // @[CORDIC.scala 131:30]
  wire [31:0] _y_4_T = {{3{_GEN_5[28]}},_GEN_5}; // @[CORDIC.scala 131:30]
  wire [31:0] y_4 = $signed(_y_4_T) + $signed(y_3); // @[CORDIC.scala 131:54]
  wire  _fxxterm_T_16 = $signed(thetar_1) > $signed(z0sr_1); // @[CORDIC.scala 113:42]
  wire [31:0] _fxxterm_T_19 = 32'sh0 - $signed(xr_1); // @[CORDIC.scala 113:56]
  wire [31:0] fxxterm_4 = $signed(thetar_1) > $signed(z0sr_1) ? $signed(_fxxterm_T_19) : $signed(xr_1); // @[CORDIC.scala 113:28]
  wire [31:0] _fxyterm_T_19 = 32'sh0 - $signed(yr_1); // @[CORDIC.scala 114:56]
  wire [31:0] fxyterm_4 = _fxxterm_T_16 ? $signed(_fxyterm_T_19) : $signed(yr_1); // @[CORDIC.scala 114:28]
  wire [31:0] _fxthetaterm_T_14 = 32'h0 - 32'hffaade; // @[CORDIC.scala 115:60]
  wire [31:0] _theta_5_T = _fxxterm_T_16 ? _fxthetaterm_T_14 : 32'hffaade; // @[CORDIC.scala 117:54]
  wire [31:0] theta_5 = $signed(thetar_1) + $signed(_theta_5_T); // @[CORDIC.scala 117:40]
  wire [27:0] _GEN_6 = fxyterm_4[31:4]; // @[CORDIC.scala 118:43]
  wire [31:0] _x_5_T = {{4{_GEN_6[27]}},_GEN_6}; // @[CORDIC.scala 118:43]
  wire [31:0] x_5 = $signed(xr_1) - $signed(_x_5_T); // @[CORDIC.scala 118:32]
  wire [27:0] _GEN_7 = fxxterm_4[31:4]; // @[CORDIC.scala 119:32]
  wire [31:0] _y_5_T = {{4{_GEN_7[27]}},_GEN_7}; // @[CORDIC.scala 119:32]
  wire [31:0] y_5 = $signed(_y_5_T) + $signed(yr_1); // @[CORDIC.scala 119:56]
  wire  _fxxterm_T_20 = $signed(theta_5) > $signed(z0sr_1); // @[CORDIC.scala 125:40]
  wire [31:0] _fxxterm_T_23 = 32'sh0 - $signed(x_5); // @[CORDIC.scala 125:54]
  wire [31:0] fxxterm_5 = $signed(theta_5) > $signed(z0sr_1) ? $signed(_fxxterm_T_23) : $signed(x_5); // @[CORDIC.scala 125:26]
  wire [31:0] _fxyterm_T_23 = 32'sh0 - $signed(y_5); // @[CORDIC.scala 126:54]
  wire [31:0] fxyterm_5 = _fxxterm_T_20 ? $signed(_fxyterm_T_23) : $signed(y_5); // @[CORDIC.scala 126:26]
  wire [31:0] _fxthetaterm_T_17 = 32'h0 - 32'h7ff557; // @[CORDIC.scala 127:58]
  wire [31:0] _theta_6_T = _fxxterm_T_20 ? _fxthetaterm_T_17 : 32'h7ff557; // @[CORDIC.scala 129:52]
  wire [31:0] theta_6 = $signed(theta_5) + $signed(_theta_6_T); // @[CORDIC.scala 129:38]
  wire [26:0] _GEN_8 = fxyterm_5[31:5]; // @[CORDIC.scala 130:41]
  wire [31:0] _x_6_T = {{5{_GEN_8[26]}},_GEN_8}; // @[CORDIC.scala 130:41]
  wire [31:0] x_6 = $signed(x_5) - $signed(_x_6_T); // @[CORDIC.scala 130:30]
  wire [26:0] _GEN_9 = fxxterm_5[31:5]; // @[CORDIC.scala 131:30]
  wire [31:0] _y_6_T = {{5{_GEN_9[26]}},_GEN_9}; // @[CORDIC.scala 131:30]
  wire [31:0] y_6 = $signed(_y_6_T) + $signed(y_5); // @[CORDIC.scala 131:54]
  wire  _fxxterm_T_24 = $signed(theta_6) > $signed(z0sr_1); // @[CORDIC.scala 125:40]
  wire [31:0] _fxxterm_T_27 = 32'sh0 - $signed(x_6); // @[CORDIC.scala 125:54]
  wire [31:0] fxxterm_6 = $signed(theta_6) > $signed(z0sr_1) ? $signed(_fxxterm_T_27) : $signed(x_6); // @[CORDIC.scala 125:26]
  wire [31:0] _fxyterm_T_27 = 32'sh0 - $signed(y_6); // @[CORDIC.scala 126:54]
  wire [31:0] fxyterm_6 = _fxxterm_T_24 ? $signed(_fxyterm_T_27) : $signed(y_6); // @[CORDIC.scala 126:26]
  wire [31:0] _fxthetaterm_T_20 = 32'h0 - 32'h3ffeaa; // @[CORDIC.scala 127:58]
  wire [31:0] _theta_7_T = _fxxterm_T_24 ? _fxthetaterm_T_20 : 32'h3ffeaa; // @[CORDIC.scala 129:52]
  wire [31:0] theta_7 = $signed(theta_6) + $signed(_theta_7_T); // @[CORDIC.scala 129:38]
  wire [25:0] _GEN_10 = fxyterm_6[31:6]; // @[CORDIC.scala 130:41]
  wire [31:0] _x_7_T = {{6{_GEN_10[25]}},_GEN_10}; // @[CORDIC.scala 130:41]
  wire [31:0] x_7 = $signed(x_6) - $signed(_x_7_T); // @[CORDIC.scala 130:30]
  wire [25:0] _GEN_11 = fxxterm_6[31:6]; // @[CORDIC.scala 131:30]
  wire [31:0] _y_7_T = {{6{_GEN_11[25]}},_GEN_11}; // @[CORDIC.scala 131:30]
  wire [31:0] y_7 = $signed(_y_7_T) + $signed(y_6); // @[CORDIC.scala 131:54]
  wire  _fxxterm_T_28 = $signed(theta_7) > $signed(z0sr_1); // @[CORDIC.scala 125:40]
  wire [31:0] _fxxterm_T_31 = 32'sh0 - $signed(x_7); // @[CORDIC.scala 125:54]
  wire [31:0] fxxterm_7 = $signed(theta_7) > $signed(z0sr_1) ? $signed(_fxxterm_T_31) : $signed(x_7); // @[CORDIC.scala 125:26]
  wire [31:0] _fxyterm_T_31 = 32'sh0 - $signed(y_7); // @[CORDIC.scala 126:54]
  wire [31:0] fxyterm_7 = _fxxterm_T_28 ? $signed(_fxyterm_T_31) : $signed(y_7); // @[CORDIC.scala 126:26]
  wire [31:0] _fxthetaterm_T_23 = 32'h0 - 32'h1fffd5; // @[CORDIC.scala 127:58]
  wire [31:0] _theta_8_T = _fxxterm_T_28 ? _fxthetaterm_T_23 : 32'h1fffd5; // @[CORDIC.scala 129:52]
  wire [31:0] theta_8 = $signed(theta_7) + $signed(_theta_8_T); // @[CORDIC.scala 129:38]
  wire [24:0] _GEN_12 = fxyterm_7[31:7]; // @[CORDIC.scala 130:41]
  wire [31:0] _x_8_T = {{7{_GEN_12[24]}},_GEN_12}; // @[CORDIC.scala 130:41]
  wire [31:0] x_8 = $signed(x_7) - $signed(_x_8_T); // @[CORDIC.scala 130:30]
  wire [24:0] _GEN_13 = fxxterm_7[31:7]; // @[CORDIC.scala 131:30]
  wire [31:0] _y_8_T = {{7{_GEN_13[24]}},_GEN_13}; // @[CORDIC.scala 131:30]
  wire [31:0] y_8 = $signed(_y_8_T) + $signed(y_7); // @[CORDIC.scala 131:54]
  wire  _fxxterm_T_32 = $signed(thetar_2) > $signed(z0sr_2); // @[CORDIC.scala 113:42]
  wire [31:0] _fxxterm_T_35 = 32'sh0 - $signed(xr_2); // @[CORDIC.scala 113:56]
  wire [31:0] fxxterm_8 = $signed(thetar_2) > $signed(z0sr_2) ? $signed(_fxxterm_T_35) : $signed(xr_2); // @[CORDIC.scala 113:28]
  wire [31:0] _fxyterm_T_35 = 32'sh0 - $signed(yr_2); // @[CORDIC.scala 114:56]
  wire [31:0] fxyterm_8 = _fxxterm_T_32 ? $signed(_fxyterm_T_35) : $signed(yr_2); // @[CORDIC.scala 114:28]
  wire [31:0] _fxthetaterm_T_26 = 32'h0 - 32'hffffa; // @[CORDIC.scala 115:60]
  wire [31:0] _theta_9_T = _fxxterm_T_32 ? _fxthetaterm_T_26 : 32'hffffa; // @[CORDIC.scala 117:54]
  wire [31:0] theta_9 = $signed(thetar_2) + $signed(_theta_9_T); // @[CORDIC.scala 117:40]
  wire [23:0] _GEN_14 = fxyterm_8[31:8]; // @[CORDIC.scala 118:43]
  wire [31:0] _x_9_T = {{8{_GEN_14[23]}},_GEN_14}; // @[CORDIC.scala 118:43]
  wire [31:0] x_9 = $signed(xr_2) - $signed(_x_9_T); // @[CORDIC.scala 118:32]
  wire [23:0] _GEN_15 = fxxterm_8[31:8]; // @[CORDIC.scala 119:32]
  wire [31:0] _y_9_T = {{8{_GEN_15[23]}},_GEN_15}; // @[CORDIC.scala 119:32]
  wire [31:0] y_9 = $signed(_y_9_T) + $signed(yr_2); // @[CORDIC.scala 119:56]
  wire  _fxxterm_T_36 = $signed(theta_9) > $signed(z0sr_2); // @[CORDIC.scala 125:40]
  wire [31:0] _fxxterm_T_39 = 32'sh0 - $signed(x_9); // @[CORDIC.scala 125:54]
  wire [31:0] fxxterm_9 = $signed(theta_9) > $signed(z0sr_2) ? $signed(_fxxterm_T_39) : $signed(x_9); // @[CORDIC.scala 125:26]
  wire [31:0] _fxyterm_T_39 = 32'sh0 - $signed(y_9); // @[CORDIC.scala 126:54]
  wire [31:0] fxyterm_9 = _fxxterm_T_36 ? $signed(_fxyterm_T_39) : $signed(y_9); // @[CORDIC.scala 126:26]
  wire [31:0] _fxthetaterm_T_29 = 32'h0 - 32'h7ffff; // @[CORDIC.scala 127:58]
  wire [31:0] _theta_10_T = _fxxterm_T_36 ? _fxthetaterm_T_29 : 32'h7ffff; // @[CORDIC.scala 129:52]
  wire [31:0] theta_10 = $signed(theta_9) + $signed(_theta_10_T); // @[CORDIC.scala 129:38]
  wire [22:0] _GEN_16 = fxyterm_9[31:9]; // @[CORDIC.scala 130:41]
  wire [31:0] _x_10_T = {{9{_GEN_16[22]}},_GEN_16}; // @[CORDIC.scala 130:41]
  wire [31:0] x_10 = $signed(x_9) - $signed(_x_10_T); // @[CORDIC.scala 130:30]
  wire [22:0] _GEN_17 = fxxterm_9[31:9]; // @[CORDIC.scala 131:30]
  wire [31:0] _y_10_T = {{9{_GEN_17[22]}},_GEN_17}; // @[CORDIC.scala 131:30]
  wire [31:0] y_10 = $signed(_y_10_T) + $signed(y_9); // @[CORDIC.scala 131:54]
  wire  _fxxterm_T_40 = $signed(theta_10) > $signed(z0sr_2); // @[CORDIC.scala 125:40]
  wire [31:0] _fxxterm_T_43 = 32'sh0 - $signed(x_10); // @[CORDIC.scala 125:54]
  wire [31:0] fxxterm_10 = $signed(theta_10) > $signed(z0sr_2) ? $signed(_fxxterm_T_43) : $signed(x_10); // @[CORDIC.scala 125:26]
  wire [31:0] _fxyterm_T_43 = 32'sh0 - $signed(y_10); // @[CORDIC.scala 126:54]
  wire [31:0] fxyterm_10 = _fxxterm_T_40 ? $signed(_fxyterm_T_43) : $signed(y_10); // @[CORDIC.scala 126:26]
  wire [31:0] _fxthetaterm_T_32 = 32'h0 - 32'h3ffff; // @[CORDIC.scala 127:58]
  wire [31:0] _theta_11_T = _fxxterm_T_40 ? _fxthetaterm_T_32 : 32'h3ffff; // @[CORDIC.scala 129:52]
  wire [31:0] theta_11 = $signed(theta_10) + $signed(_theta_11_T); // @[CORDIC.scala 129:38]
  wire [21:0] _GEN_18 = fxyterm_10[31:10]; // @[CORDIC.scala 130:41]
  wire [31:0] _x_11_T = {{10{_GEN_18[21]}},_GEN_18}; // @[CORDIC.scala 130:41]
  wire [31:0] x_11 = $signed(x_10) - $signed(_x_11_T); // @[CORDIC.scala 130:30]
  wire [21:0] _GEN_19 = fxxterm_10[31:10]; // @[CORDIC.scala 131:30]
  wire [31:0] _y_11_T = {{10{_GEN_19[21]}},_GEN_19}; // @[CORDIC.scala 131:30]
  wire [31:0] y_11 = $signed(_y_11_T) + $signed(y_10); // @[CORDIC.scala 131:54]
  wire  _fxxterm_T_44 = $signed(theta_11) > $signed(z0sr_2); // @[CORDIC.scala 125:40]
  wire [31:0] _fxxterm_T_47 = 32'sh0 - $signed(x_11); // @[CORDIC.scala 125:54]
  wire [31:0] fxxterm_11 = $signed(theta_11) > $signed(z0sr_2) ? $signed(_fxxterm_T_47) : $signed(x_11); // @[CORDIC.scala 125:26]
  wire [31:0] _fxyterm_T_47 = 32'sh0 - $signed(y_11); // @[CORDIC.scala 126:54]
  wire [31:0] fxyterm_11 = _fxxterm_T_44 ? $signed(_fxyterm_T_47) : $signed(y_11); // @[CORDIC.scala 126:26]
  wire [31:0] _fxthetaterm_T_35 = 32'h0 - 32'h1ffff; // @[CORDIC.scala 127:58]
  wire [31:0] _theta_12_T = _fxxterm_T_44 ? _fxthetaterm_T_35 : 32'h1ffff; // @[CORDIC.scala 129:52]
  wire [31:0] theta_12 = $signed(theta_11) + $signed(_theta_12_T); // @[CORDIC.scala 129:38]
  wire [20:0] _GEN_20 = fxyterm_11[31:11]; // @[CORDIC.scala 130:41]
  wire [31:0] _x_12_T = {{11{_GEN_20[20]}},_GEN_20}; // @[CORDIC.scala 130:41]
  wire [31:0] x_12 = $signed(x_11) - $signed(_x_12_T); // @[CORDIC.scala 130:30]
  wire [20:0] _GEN_21 = fxxterm_11[31:11]; // @[CORDIC.scala 131:30]
  wire [31:0] _y_12_T = {{11{_GEN_21[20]}},_GEN_21}; // @[CORDIC.scala 131:30]
  wire [31:0] y_12 = $signed(_y_12_T) + $signed(y_11); // @[CORDIC.scala 131:54]
  wire  _fxxterm_T_48 = $signed(thetar_3) > $signed(z0sr_3); // @[CORDIC.scala 113:42]
  wire [31:0] _fxxterm_T_51 = 32'sh0 - $signed(xr_3); // @[CORDIC.scala 113:56]
  wire [31:0] fxxterm_12 = $signed(thetar_3) > $signed(z0sr_3) ? $signed(_fxxterm_T_51) : $signed(xr_3); // @[CORDIC.scala 113:28]
  wire [31:0] _fxyterm_T_51 = 32'sh0 - $signed(yr_3); // @[CORDIC.scala 114:56]
  wire [31:0] fxyterm_12 = _fxxterm_T_48 ? $signed(_fxyterm_T_51) : $signed(yr_3); // @[CORDIC.scala 114:28]
  wire [31:0] _fxthetaterm_T_38 = 32'h0 - 32'h10000; // @[CORDIC.scala 115:60]
  wire [31:0] _theta_13_T = _fxxterm_T_48 ? _fxthetaterm_T_38 : 32'h10000; // @[CORDIC.scala 117:54]
  wire [31:0] theta_13 = $signed(thetar_3) + $signed(_theta_13_T); // @[CORDIC.scala 117:40]
  wire [19:0] _GEN_22 = fxyterm_12[31:12]; // @[CORDIC.scala 118:43]
  wire [31:0] _x_13_T = {{12{_GEN_22[19]}},_GEN_22}; // @[CORDIC.scala 118:43]
  wire [31:0] x_13 = $signed(xr_3) - $signed(_x_13_T); // @[CORDIC.scala 118:32]
  wire [19:0] _GEN_23 = fxxterm_12[31:12]; // @[CORDIC.scala 119:32]
  wire [31:0] _y_13_T = {{12{_GEN_23[19]}},_GEN_23}; // @[CORDIC.scala 119:32]
  wire [31:0] y_13 = $signed(_y_13_T) + $signed(yr_3); // @[CORDIC.scala 119:56]
  wire  _fxxterm_T_52 = $signed(theta_13) > $signed(z0sr_3); // @[CORDIC.scala 125:40]
  wire [31:0] _fxxterm_T_55 = 32'sh0 - $signed(x_13); // @[CORDIC.scala 125:54]
  wire [31:0] fxxterm_13 = $signed(theta_13) > $signed(z0sr_3) ? $signed(_fxxterm_T_55) : $signed(x_13); // @[CORDIC.scala 125:26]
  wire [31:0] _fxyterm_T_55 = 32'sh0 - $signed(y_13); // @[CORDIC.scala 126:54]
  wire [31:0] fxyterm_13 = _fxxterm_T_52 ? $signed(_fxyterm_T_55) : $signed(y_13); // @[CORDIC.scala 126:26]
  wire [31:0] _fxthetaterm_T_41 = 32'h0 - 32'h8000; // @[CORDIC.scala 127:58]
  wire [31:0] _theta_14_T = _fxxterm_T_52 ? _fxthetaterm_T_41 : 32'h8000; // @[CORDIC.scala 129:52]
  wire [31:0] theta_14 = $signed(theta_13) + $signed(_theta_14_T); // @[CORDIC.scala 129:38]
  wire [18:0] _GEN_24 = fxyterm_13[31:13]; // @[CORDIC.scala 130:41]
  wire [31:0] _x_14_T = {{13{_GEN_24[18]}},_GEN_24}; // @[CORDIC.scala 130:41]
  wire [31:0] x_14 = $signed(x_13) - $signed(_x_14_T); // @[CORDIC.scala 130:30]
  wire [18:0] _GEN_25 = fxxterm_13[31:13]; // @[CORDIC.scala 131:30]
  wire [31:0] _y_14_T = {{13{_GEN_25[18]}},_GEN_25}; // @[CORDIC.scala 131:30]
  wire [31:0] y_14 = $signed(_y_14_T) + $signed(y_13); // @[CORDIC.scala 131:54]
  wire  _fxxterm_T_56 = $signed(theta_14) > $signed(z0sr_3); // @[CORDIC.scala 125:40]
  wire [31:0] _fxxterm_T_59 = 32'sh0 - $signed(x_14); // @[CORDIC.scala 125:54]
  wire [31:0] fxxterm_14 = $signed(theta_14) > $signed(z0sr_3) ? $signed(_fxxterm_T_59) : $signed(x_14); // @[CORDIC.scala 125:26]
  wire [31:0] _fxyterm_T_59 = 32'sh0 - $signed(y_14); // @[CORDIC.scala 126:54]
  wire [31:0] fxyterm_14 = _fxxterm_T_56 ? $signed(_fxyterm_T_59) : $signed(y_14); // @[CORDIC.scala 126:26]
  wire [31:0] _fxthetaterm_T_44 = 32'h0 - 32'h4000; // @[CORDIC.scala 127:58]
  wire [31:0] _theta_15_T = _fxxterm_T_56 ? _fxthetaterm_T_44 : 32'h4000; // @[CORDIC.scala 129:52]
  wire [31:0] theta_15 = $signed(theta_14) + $signed(_theta_15_T); // @[CORDIC.scala 129:38]
  wire [17:0] _GEN_26 = fxyterm_14[31:14]; // @[CORDIC.scala 130:41]
  wire [31:0] _x_15_T = {{14{_GEN_26[17]}},_GEN_26}; // @[CORDIC.scala 130:41]
  wire [31:0] x_15 = $signed(x_14) - $signed(_x_15_T); // @[CORDIC.scala 130:30]
  wire [17:0] _GEN_27 = fxxterm_14[31:14]; // @[CORDIC.scala 131:30]
  wire [31:0] _y_15_T = {{14{_GEN_27[17]}},_GEN_27}; // @[CORDIC.scala 131:30]
  wire [31:0] y_15 = $signed(_y_15_T) + $signed(y_14); // @[CORDIC.scala 131:54]
  wire  _fxxterm_T_60 = $signed(theta_15) > $signed(z0sr_3); // @[CORDIC.scala 125:40]
  wire [31:0] _fxxterm_T_63 = 32'sh0 - $signed(x_15); // @[CORDIC.scala 125:54]
  wire [31:0] fxxterm_15 = $signed(theta_15) > $signed(z0sr_3) ? $signed(_fxxterm_T_63) : $signed(x_15); // @[CORDIC.scala 125:26]
  wire [31:0] _fxyterm_T_63 = 32'sh0 - $signed(y_15); // @[CORDIC.scala 126:54]
  wire [31:0] fxyterm_15 = _fxxterm_T_60 ? $signed(_fxyterm_T_63) : $signed(y_15); // @[CORDIC.scala 126:26]
  wire [31:0] _fxthetaterm_T_47 = 32'h0 - 32'h2000; // @[CORDIC.scala 127:58]
  wire [31:0] _theta_16_T = _fxxterm_T_60 ? _fxthetaterm_T_47 : 32'h2000; // @[CORDIC.scala 129:52]
  wire [31:0] theta_16 = $signed(theta_15) + $signed(_theta_16_T); // @[CORDIC.scala 129:38]
  wire [16:0] _GEN_28 = fxyterm_15[31:15]; // @[CORDIC.scala 130:41]
  wire [31:0] _x_16_T = {{15{_GEN_28[16]}},_GEN_28}; // @[CORDIC.scala 130:41]
  wire [31:0] x_16 = $signed(x_15) - $signed(_x_16_T); // @[CORDIC.scala 130:30]
  wire [16:0] _GEN_29 = fxxterm_15[31:15]; // @[CORDIC.scala 131:30]
  wire [31:0] _y_16_T = {{15{_GEN_29[16]}},_GEN_29}; // @[CORDIC.scala 131:30]
  wire [31:0] y_16 = $signed(_y_16_T) + $signed(y_15); // @[CORDIC.scala 131:54]
  wire  _fxxterm_T_64 = $signed(thetar_4) > $signed(z0sr_4); // @[CORDIC.scala 113:42]
  wire [31:0] _fxxterm_T_67 = 32'sh0 - $signed(xr_4); // @[CORDIC.scala 113:56]
  wire [31:0] fxxterm_16 = $signed(thetar_4) > $signed(z0sr_4) ? $signed(_fxxterm_T_67) : $signed(xr_4); // @[CORDIC.scala 113:28]
  wire [31:0] _fxyterm_T_67 = 32'sh0 - $signed(yr_4); // @[CORDIC.scala 114:56]
  wire [31:0] fxyterm_16 = _fxxterm_T_64 ? $signed(_fxyterm_T_67) : $signed(yr_4); // @[CORDIC.scala 114:28]
  wire [31:0] _fxthetaterm_T_50 = 32'h0 - 32'h1000; // @[CORDIC.scala 115:60]
  wire [31:0] _theta_17_T = _fxxterm_T_64 ? _fxthetaterm_T_50 : 32'h1000; // @[CORDIC.scala 117:54]
  wire [31:0] theta_17 = $signed(thetar_4) + $signed(_theta_17_T); // @[CORDIC.scala 117:40]
  wire [15:0] _GEN_30 = fxyterm_16[31:16]; // @[CORDIC.scala 118:43]
  wire [31:0] _x_17_T = {{16{_GEN_30[15]}},_GEN_30}; // @[CORDIC.scala 118:43]
  wire [31:0] x_17 = $signed(xr_4) - $signed(_x_17_T); // @[CORDIC.scala 118:32]
  wire [15:0] _GEN_31 = fxxterm_16[31:16]; // @[CORDIC.scala 119:32]
  wire [31:0] _y_17_T = {{16{_GEN_31[15]}},_GEN_31}; // @[CORDIC.scala 119:32]
  wire [31:0] y_17 = $signed(_y_17_T) + $signed(yr_4); // @[CORDIC.scala 119:56]
  wire  _fxxterm_T_68 = $signed(theta_17) > $signed(z0sr_4); // @[CORDIC.scala 125:40]
  wire [31:0] _fxxterm_T_71 = 32'sh0 - $signed(x_17); // @[CORDIC.scala 125:54]
  wire [31:0] fxxterm_17 = $signed(theta_17) > $signed(z0sr_4) ? $signed(_fxxterm_T_71) : $signed(x_17); // @[CORDIC.scala 125:26]
  wire [31:0] _fxyterm_T_71 = 32'sh0 - $signed(y_17); // @[CORDIC.scala 126:54]
  wire [31:0] fxyterm_17 = _fxxterm_T_68 ? $signed(_fxyterm_T_71) : $signed(y_17); // @[CORDIC.scala 126:26]
  wire [31:0] _fxthetaterm_T_53 = 32'h0 - 32'h800; // @[CORDIC.scala 127:58]
  wire [31:0] _theta_18_T = _fxxterm_T_68 ? _fxthetaterm_T_53 : 32'h800; // @[CORDIC.scala 129:52]
  wire [31:0] theta_18 = $signed(theta_17) + $signed(_theta_18_T); // @[CORDIC.scala 129:38]
  wire [14:0] _GEN_32 = fxyterm_17[31:17]; // @[CORDIC.scala 130:41]
  wire [31:0] _x_18_T = {{17{_GEN_32[14]}},_GEN_32}; // @[CORDIC.scala 130:41]
  wire [31:0] x_18 = $signed(x_17) - $signed(_x_18_T); // @[CORDIC.scala 130:30]
  wire [14:0] _GEN_33 = fxxterm_17[31:17]; // @[CORDIC.scala 131:30]
  wire [31:0] _y_18_T = {{17{_GEN_33[14]}},_GEN_33}; // @[CORDIC.scala 131:30]
  wire [31:0] y_18 = $signed(_y_18_T) + $signed(y_17); // @[CORDIC.scala 131:54]
  wire  _fxxterm_T_72 = $signed(theta_18) > $signed(z0sr_4); // @[CORDIC.scala 125:40]
  wire [31:0] _fxxterm_T_75 = 32'sh0 - $signed(x_18); // @[CORDIC.scala 125:54]
  wire [31:0] fxxterm_18 = $signed(theta_18) > $signed(z0sr_4) ? $signed(_fxxterm_T_75) : $signed(x_18); // @[CORDIC.scala 125:26]
  wire [31:0] _fxyterm_T_75 = 32'sh0 - $signed(y_18); // @[CORDIC.scala 126:54]
  wire [31:0] fxyterm_18 = _fxxterm_T_72 ? $signed(_fxyterm_T_75) : $signed(y_18); // @[CORDIC.scala 126:26]
  wire [31:0] _fxthetaterm_T_56 = 32'h0 - 32'h400; // @[CORDIC.scala 127:58]
  wire [31:0] _theta_19_T = _fxxterm_T_72 ? _fxthetaterm_T_56 : 32'h400; // @[CORDIC.scala 129:52]
  wire [31:0] theta_19 = $signed(theta_18) + $signed(_theta_19_T); // @[CORDIC.scala 129:38]
  wire [13:0] _GEN_34 = fxyterm_18[31:18]; // @[CORDIC.scala 130:41]
  wire [31:0] _x_19_T = {{18{_GEN_34[13]}},_GEN_34}; // @[CORDIC.scala 130:41]
  wire [31:0] x_19 = $signed(x_18) - $signed(_x_19_T); // @[CORDIC.scala 130:30]
  wire [13:0] _GEN_35 = fxxterm_18[31:18]; // @[CORDIC.scala 131:30]
  wire [31:0] _y_19_T = {{18{_GEN_35[13]}},_GEN_35}; // @[CORDIC.scala 131:30]
  wire [31:0] y_19 = $signed(_y_19_T) + $signed(y_18); // @[CORDIC.scala 131:54]
  wire  _fxxterm_T_76 = $signed(theta_19) > $signed(z0sr_4); // @[CORDIC.scala 125:40]
  wire [31:0] _fxxterm_T_79 = 32'sh0 - $signed(x_19); // @[CORDIC.scala 125:54]
  wire [31:0] fxxterm_19 = $signed(theta_19) > $signed(z0sr_4) ? $signed(_fxxterm_T_79) : $signed(x_19); // @[CORDIC.scala 125:26]
  wire [31:0] _fxyterm_T_79 = 32'sh0 - $signed(y_19); // @[CORDIC.scala 126:54]
  wire [31:0] fxyterm_19 = _fxxterm_T_76 ? $signed(_fxyterm_T_79) : $signed(y_19); // @[CORDIC.scala 126:26]
  wire [31:0] _fxthetaterm_T_59 = 32'h0 - 32'h200; // @[CORDIC.scala 127:58]
  wire [31:0] _theta_20_T = _fxxterm_T_76 ? _fxthetaterm_T_59 : 32'h200; // @[CORDIC.scala 129:52]
  wire [31:0] theta_20 = $signed(theta_19) + $signed(_theta_20_T); // @[CORDIC.scala 129:38]
  wire [12:0] _GEN_36 = fxyterm_19[31:19]; // @[CORDIC.scala 130:41]
  wire [31:0] _x_20_T = {{19{_GEN_36[12]}},_GEN_36}; // @[CORDIC.scala 130:41]
  wire [31:0] x_20 = $signed(x_19) - $signed(_x_20_T); // @[CORDIC.scala 130:30]
  wire [12:0] _GEN_37 = fxxterm_19[31:19]; // @[CORDIC.scala 131:30]
  wire [31:0] _y_20_T = {{19{_GEN_37[12]}},_GEN_37}; // @[CORDIC.scala 131:30]
  wire [31:0] y_20 = $signed(_y_20_T) + $signed(y_19); // @[CORDIC.scala 131:54]
  wire  _fxxterm_T_80 = $signed(thetar_5) > $signed(z0sr_5); // @[CORDIC.scala 113:42]
  wire [31:0] _fxxterm_T_83 = 32'sh0 - $signed(xr_5); // @[CORDIC.scala 113:56]
  wire [31:0] fxxterm_20 = $signed(thetar_5) > $signed(z0sr_5) ? $signed(_fxxterm_T_83) : $signed(xr_5); // @[CORDIC.scala 113:28]
  wire [31:0] _fxyterm_T_83 = 32'sh0 - $signed(yr_5); // @[CORDIC.scala 114:56]
  wire [31:0] fxyterm_20 = _fxxterm_T_80 ? $signed(_fxyterm_T_83) : $signed(yr_5); // @[CORDIC.scala 114:28]
  wire [31:0] _fxthetaterm_T_62 = 32'h0 - 32'h100; // @[CORDIC.scala 115:60]
  wire [31:0] _theta_21_T = _fxxterm_T_80 ? _fxthetaterm_T_62 : 32'h100; // @[CORDIC.scala 117:54]
  wire [31:0] theta_21 = $signed(thetar_5) + $signed(_theta_21_T); // @[CORDIC.scala 117:40]
  wire [11:0] _GEN_38 = fxyterm_20[31:20]; // @[CORDIC.scala 118:43]
  wire [31:0] _x_21_T = {{20{_GEN_38[11]}},_GEN_38}; // @[CORDIC.scala 118:43]
  wire [31:0] x_21 = $signed(xr_5) - $signed(_x_21_T); // @[CORDIC.scala 118:32]
  wire [11:0] _GEN_39 = fxxterm_20[31:20]; // @[CORDIC.scala 119:32]
  wire [31:0] _y_21_T = {{20{_GEN_39[11]}},_GEN_39}; // @[CORDIC.scala 119:32]
  wire [31:0] y_21 = $signed(_y_21_T) + $signed(yr_5); // @[CORDIC.scala 119:56]
  wire  _fxxterm_T_84 = $signed(theta_21) > $signed(z0sr_5); // @[CORDIC.scala 125:40]
  wire [31:0] _fxxterm_T_87 = 32'sh0 - $signed(x_21); // @[CORDIC.scala 125:54]
  wire [31:0] fxxterm_21 = $signed(theta_21) > $signed(z0sr_5) ? $signed(_fxxterm_T_87) : $signed(x_21); // @[CORDIC.scala 125:26]
  wire [31:0] _fxyterm_T_87 = 32'sh0 - $signed(y_21); // @[CORDIC.scala 126:54]
  wire [31:0] fxyterm_21 = _fxxterm_T_84 ? $signed(_fxyterm_T_87) : $signed(y_21); // @[CORDIC.scala 126:26]
  wire [31:0] _fxthetaterm_T_65 = 32'h0 - 32'h80; // @[CORDIC.scala 127:58]
  wire [31:0] _theta_22_T = _fxxterm_T_84 ? _fxthetaterm_T_65 : 32'h80; // @[CORDIC.scala 129:52]
  wire [31:0] theta_22 = $signed(theta_21) + $signed(_theta_22_T); // @[CORDIC.scala 129:38]
  wire [10:0] _GEN_40 = fxyterm_21[31:21]; // @[CORDIC.scala 130:41]
  wire [31:0] _x_22_T = {{21{_GEN_40[10]}},_GEN_40}; // @[CORDIC.scala 130:41]
  wire [31:0] x_22 = $signed(x_21) - $signed(_x_22_T); // @[CORDIC.scala 130:30]
  wire [10:0] _GEN_41 = fxxterm_21[31:21]; // @[CORDIC.scala 131:30]
  wire [31:0] _y_22_T = {{21{_GEN_41[10]}},_GEN_41}; // @[CORDIC.scala 131:30]
  wire [31:0] y_22 = $signed(_y_22_T) + $signed(y_21); // @[CORDIC.scala 131:54]
  wire  _fxxterm_T_88 = $signed(theta_22) > $signed(z0sr_5); // @[CORDIC.scala 125:40]
  wire [31:0] _fxxterm_T_91 = 32'sh0 - $signed(x_22); // @[CORDIC.scala 125:54]
  wire [31:0] fxxterm_22 = $signed(theta_22) > $signed(z0sr_5) ? $signed(_fxxterm_T_91) : $signed(x_22); // @[CORDIC.scala 125:26]
  wire [31:0] _fxyterm_T_91 = 32'sh0 - $signed(y_22); // @[CORDIC.scala 126:54]
  wire [31:0] fxyterm_22 = _fxxterm_T_88 ? $signed(_fxyterm_T_91) : $signed(y_22); // @[CORDIC.scala 126:26]
  wire [31:0] _fxthetaterm_T_68 = 32'h0 - 32'h40; // @[CORDIC.scala 127:58]
  wire [31:0] _theta_23_T = _fxxterm_T_88 ? _fxthetaterm_T_68 : 32'h40; // @[CORDIC.scala 129:52]
  wire [31:0] theta_23 = $signed(theta_22) + $signed(_theta_23_T); // @[CORDIC.scala 129:38]
  wire [9:0] _GEN_42 = fxyterm_22[31:22]; // @[CORDIC.scala 130:41]
  wire [31:0] _x_23_T = {{22{_GEN_42[9]}},_GEN_42}; // @[CORDIC.scala 130:41]
  wire [31:0] x_23 = $signed(x_22) - $signed(_x_23_T); // @[CORDIC.scala 130:30]
  wire [9:0] _GEN_43 = fxxterm_22[31:22]; // @[CORDIC.scala 131:30]
  wire [31:0] _y_23_T = {{22{_GEN_43[9]}},_GEN_43}; // @[CORDIC.scala 131:30]
  wire [31:0] y_23 = $signed(_y_23_T) + $signed(y_22); // @[CORDIC.scala 131:54]
  wire  _fxxterm_T_92 = $signed(theta_23) > $signed(z0sr_5); // @[CORDIC.scala 125:40]
  wire [31:0] _fxxterm_T_95 = 32'sh0 - $signed(x_23); // @[CORDIC.scala 125:54]
  wire [31:0] fxxterm_23 = $signed(theta_23) > $signed(z0sr_5) ? $signed(_fxxterm_T_95) : $signed(x_23); // @[CORDIC.scala 125:26]
  wire [31:0] _fxyterm_T_95 = 32'sh0 - $signed(y_23); // @[CORDIC.scala 126:54]
  wire [31:0] fxyterm_23 = _fxxterm_T_92 ? $signed(_fxyterm_T_95) : $signed(y_23); // @[CORDIC.scala 126:26]
  wire [31:0] _fxthetaterm_T_71 = 32'h0 - 32'h20; // @[CORDIC.scala 127:58]
  wire [31:0] _theta_24_T = _fxxterm_T_92 ? _fxthetaterm_T_71 : 32'h20; // @[CORDIC.scala 129:52]
  wire [31:0] theta_24 = $signed(theta_23) + $signed(_theta_24_T); // @[CORDIC.scala 129:38]
  wire [8:0] _GEN_44 = fxyterm_23[31:23]; // @[CORDIC.scala 130:41]
  wire [31:0] _x_24_T = {{23{_GEN_44[8]}},_GEN_44}; // @[CORDIC.scala 130:41]
  wire [31:0] x_24 = $signed(x_23) - $signed(_x_24_T); // @[CORDIC.scala 130:30]
  wire [8:0] _GEN_45 = fxxterm_23[31:23]; // @[CORDIC.scala 131:30]
  wire [31:0] _y_24_T = {{23{_GEN_45[8]}},_GEN_45}; // @[CORDIC.scala 131:30]
  wire [31:0] y_24 = $signed(_y_24_T) + $signed(y_23); // @[CORDIC.scala 131:54]
  wire  _fxxterm_T_96 = $signed(thetar_6) > $signed(z0sr_6); // @[CORDIC.scala 113:42]
  wire [31:0] _fxxterm_T_99 = 32'sh0 - $signed(xr_6); // @[CORDIC.scala 113:56]
  wire [31:0] fxxterm_24 = $signed(thetar_6) > $signed(z0sr_6) ? $signed(_fxxterm_T_99) : $signed(xr_6); // @[CORDIC.scala 113:28]
  wire [31:0] _fxyterm_T_99 = 32'sh0 - $signed(yr_6); // @[CORDIC.scala 114:56]
  wire [31:0] fxyterm_24 = _fxxterm_T_96 ? $signed(_fxyterm_T_99) : $signed(yr_6); // @[CORDIC.scala 114:28]
  wire [31:0] _fxthetaterm_T_74 = 32'h0 - 32'h10; // @[CORDIC.scala 115:60]
  wire [31:0] _theta_25_T = _fxxterm_T_96 ? _fxthetaterm_T_74 : 32'h10; // @[CORDIC.scala 117:54]
  wire [31:0] theta_25 = $signed(thetar_6) + $signed(_theta_25_T); // @[CORDIC.scala 117:40]
  wire [7:0] _GEN_46 = fxyterm_24[31:24]; // @[CORDIC.scala 118:43]
  wire [31:0] _x_25_T = {{24{_GEN_46[7]}},_GEN_46}; // @[CORDIC.scala 118:43]
  wire [31:0] x_25 = $signed(xr_6) - $signed(_x_25_T); // @[CORDIC.scala 118:32]
  wire [7:0] _GEN_47 = fxxterm_24[31:24]; // @[CORDIC.scala 119:32]
  wire [31:0] _y_25_T = {{24{_GEN_47[7]}},_GEN_47}; // @[CORDIC.scala 119:32]
  wire [31:0] y_25 = $signed(_y_25_T) + $signed(yr_6); // @[CORDIC.scala 119:56]
  wire  _fxxterm_T_100 = $signed(theta_25) > $signed(z0sr_6); // @[CORDIC.scala 125:40]
  wire [31:0] _fxxterm_T_103 = 32'sh0 - $signed(x_25); // @[CORDIC.scala 125:54]
  wire [31:0] fxxterm_25 = $signed(theta_25) > $signed(z0sr_6) ? $signed(_fxxterm_T_103) : $signed(x_25); // @[CORDIC.scala 125:26]
  wire [31:0] _fxyterm_T_103 = 32'sh0 - $signed(y_25); // @[CORDIC.scala 126:54]
  wire [31:0] fxyterm_25 = _fxxterm_T_100 ? $signed(_fxyterm_T_103) : $signed(y_25); // @[CORDIC.scala 126:26]
  wire [31:0] _fxthetaterm_T_77 = 32'h0 - 32'h8; // @[CORDIC.scala 127:58]
  wire [31:0] _theta_26_T = _fxxterm_T_100 ? _fxthetaterm_T_77 : 32'h8; // @[CORDIC.scala 129:52]
  wire [31:0] theta_26 = $signed(theta_25) + $signed(_theta_26_T); // @[CORDIC.scala 129:38]
  wire [6:0] _GEN_48 = fxyterm_25[31:25]; // @[CORDIC.scala 130:41]
  wire [31:0] _x_26_T = {{25{_GEN_48[6]}},_GEN_48}; // @[CORDIC.scala 130:41]
  wire [31:0] x_26 = $signed(x_25) - $signed(_x_26_T); // @[CORDIC.scala 130:30]
  wire [6:0] _GEN_49 = fxxterm_25[31:25]; // @[CORDIC.scala 131:30]
  wire [31:0] _y_26_T = {{25{_GEN_49[6]}},_GEN_49}; // @[CORDIC.scala 131:30]
  wire [31:0] y_26 = $signed(_y_26_T) + $signed(y_25); // @[CORDIC.scala 131:54]
  wire  _fxxterm_T_104 = $signed(theta_26) > $signed(z0sr_6); // @[CORDIC.scala 125:40]
  wire [31:0] _fxxterm_T_107 = 32'sh0 - $signed(x_26); // @[CORDIC.scala 125:54]
  wire [31:0] fxxterm_26 = $signed(theta_26) > $signed(z0sr_6) ? $signed(_fxxterm_T_107) : $signed(x_26); // @[CORDIC.scala 125:26]
  wire [31:0] _fxyterm_T_107 = 32'sh0 - $signed(y_26); // @[CORDIC.scala 126:54]
  wire [31:0] fxyterm_26 = _fxxterm_T_104 ? $signed(_fxyterm_T_107) : $signed(y_26); // @[CORDIC.scala 126:26]
  wire [31:0] _fxthetaterm_T_80 = 32'h0 - 32'h4; // @[CORDIC.scala 127:58]
  wire [31:0] _theta_27_T = _fxxterm_T_104 ? _fxthetaterm_T_80 : 32'h4; // @[CORDIC.scala 129:52]
  wire [31:0] theta_27 = $signed(theta_26) + $signed(_theta_27_T); // @[CORDIC.scala 129:38]
  wire [5:0] _GEN_50 = fxyterm_26[31:26]; // @[CORDIC.scala 130:41]
  wire [31:0] _x_27_T = {{26{_GEN_50[5]}},_GEN_50}; // @[CORDIC.scala 130:41]
  wire [31:0] x_27 = $signed(x_26) - $signed(_x_27_T); // @[CORDIC.scala 130:30]
  wire [5:0] _GEN_51 = fxxterm_26[31:26]; // @[CORDIC.scala 131:30]
  wire [31:0] _y_27_T = {{26{_GEN_51[5]}},_GEN_51}; // @[CORDIC.scala 131:30]
  wire [31:0] y_27 = $signed(_y_27_T) + $signed(y_26); // @[CORDIC.scala 131:54]
  wire  _fxxterm_T_108 = $signed(theta_27) > $signed(z0sr_6); // @[CORDIC.scala 125:40]
  wire [31:0] _fxxterm_T_111 = 32'sh0 - $signed(x_27); // @[CORDIC.scala 125:54]
  wire [31:0] fxxterm_27 = $signed(theta_27) > $signed(z0sr_6) ? $signed(_fxxterm_T_111) : $signed(x_27); // @[CORDIC.scala 125:26]
  wire [31:0] _fxyterm_T_111 = 32'sh0 - $signed(y_27); // @[CORDIC.scala 126:54]
  wire [31:0] fxyterm_27 = _fxxterm_T_108 ? $signed(_fxyterm_T_111) : $signed(y_27); // @[CORDIC.scala 126:26]
  wire [4:0] _GEN_52 = fxyterm_27[31:27]; // @[CORDIC.scala 130:41]
  wire [31:0] _x_28_T = {{27{_GEN_52[4]}},_GEN_52}; // @[CORDIC.scala 130:41]
  wire [31:0] x_28 = $signed(x_27) - $signed(_x_28_T); // @[CORDIC.scala 130:30]
  wire [4:0] _GEN_53 = fxxterm_27[31:27]; // @[CORDIC.scala 131:30]
  wire [31:0] _y_28_T = {{27{_GEN_53[4]}},_GEN_53}; // @[CORDIC.scala 131:30]
  wire [31:0] y_28 = $signed(_y_28_T) + $signed(y_27); // @[CORDIC.scala 131:54]
  wire [1:0] modes_0 = io_in_mode[1:0]; // @[CORDIC.scala 103:12 77:19]
  FloatToFixed32 tofixedx0 ( // @[CORDIC.scala 64:25]
    .io_in(tofixedx0_io_in),
    .io_out(tofixedx0_io_out)
  );
  FloatToFixed32 tofixedy0 ( // @[CORDIC.scala 65:25]
    .io_in(tofixedy0_io_in),
    .io_out(tofixedy0_io_out)
  );
  FixedToFloat32 tofloatxout ( // @[CORDIC.scala 146:27]
    .io_in(tofloatxout_io_in),
    .io_out(tofloatxout_io_out)
  );
  FixedToFloat32 tofloatyout ( // @[CORDIC.scala 147:27]
    .io_in(tofloatyout_io_in),
    .io_out(tofloatyout_io_out)
  );
  FixedToFloat32 tofloatzout ( // @[CORDIC.scala 148:27]
    .io_in(tofloatzout_io_in),
    .io_out(tofloatzout_io_out)
  );
  assign io_out_x = tofloatxout_io_out; // @[CORDIC.scala 156:12]
  assign io_out_mode = modesr_7; // @[CORDIC.scala 154:15]
  assign tofixedx0_io_in = 32'h3f1b74ee; // @[CORDIC.scala 69:19]
  assign tofixedy0_io_in = 32'h0; // @[CORDIC.scala 70:19]
  assign tofloatxout_io_in = xr_7; // @[CORDIC.scala 151:30]
  assign tofloatyout_io_in = yr_7; // @[CORDIC.scala 152:30]
  assign tofloatzout_io_in = z0sr_7; // @[CORDIC.scala 153:32]
  always @(posedge clock) begin
    if (reset) begin // @[CORDIC.scala 79:19]
      xr_1 <= 32'sh0; // @[CORDIC.scala 79:19]
    end else begin
      xr_1 <= x_4; // @[CORDIC.scala 138:18]
    end
    if (reset) begin // @[CORDIC.scala 79:19]
      xr_2 <= 32'sh0; // @[CORDIC.scala 79:19]
    end else begin
      xr_2 <= x_8; // @[CORDIC.scala 138:18]
    end
    if (reset) begin // @[CORDIC.scala 79:19]
      xr_3 <= 32'sh0; // @[CORDIC.scala 79:19]
    end else begin
      xr_3 <= x_12; // @[CORDIC.scala 138:18]
    end
    if (reset) begin // @[CORDIC.scala 79:19]
      xr_4 <= 32'sh0; // @[CORDIC.scala 79:19]
    end else begin
      xr_4 <= x_16; // @[CORDIC.scala 138:18]
    end
    if (reset) begin // @[CORDIC.scala 79:19]
      xr_5 <= 32'sh0; // @[CORDIC.scala 79:19]
    end else begin
      xr_5 <= x_20; // @[CORDIC.scala 138:18]
    end
    if (reset) begin // @[CORDIC.scala 79:19]
      xr_6 <= 32'sh0; // @[CORDIC.scala 79:19]
    end else begin
      xr_6 <= x_24; // @[CORDIC.scala 138:18]
    end
    if (reset) begin // @[CORDIC.scala 79:19]
      xr_7 <= 32'sh0; // @[CORDIC.scala 79:19]
    end else begin
      xr_7 <= x_28; // @[CORDIC.scala 138:18]
    end
    if (reset) begin // @[CORDIC.scala 80:19]
      yr_1 <= 32'sh0; // @[CORDIC.scala 80:19]
    end else begin
      yr_1 <= y_4; // @[CORDIC.scala 139:18]
    end
    if (reset) begin // @[CORDIC.scala 80:19]
      yr_2 <= 32'sh0; // @[CORDIC.scala 80:19]
    end else begin
      yr_2 <= y_8; // @[CORDIC.scala 139:18]
    end
    if (reset) begin // @[CORDIC.scala 80:19]
      yr_3 <= 32'sh0; // @[CORDIC.scala 80:19]
    end else begin
      yr_3 <= y_12; // @[CORDIC.scala 139:18]
    end
    if (reset) begin // @[CORDIC.scala 80:19]
      yr_4 <= 32'sh0; // @[CORDIC.scala 80:19]
    end else begin
      yr_4 <= y_16; // @[CORDIC.scala 139:18]
    end
    if (reset) begin // @[CORDIC.scala 80:19]
      yr_5 <= 32'sh0; // @[CORDIC.scala 80:19]
    end else begin
      yr_5 <= y_20; // @[CORDIC.scala 139:18]
    end
    if (reset) begin // @[CORDIC.scala 80:19]
      yr_6 <= 32'sh0; // @[CORDIC.scala 80:19]
    end else begin
      yr_6 <= y_24; // @[CORDIC.scala 139:18]
    end
    if (reset) begin // @[CORDIC.scala 80:19]
      yr_7 <= 32'sh0; // @[CORDIC.scala 80:19]
    end else begin
      yr_7 <= y_28; // @[CORDIC.scala 139:18]
    end
    if (reset) begin // @[CORDIC.scala 81:23]
      thetar_1 <= 32'sh0; // @[CORDIC.scala 81:23]
    end else begin
      thetar_1 <= theta_4; // @[CORDIC.scala 137:22]
    end
    if (reset) begin // @[CORDIC.scala 81:23]
      thetar_2 <= 32'sh0; // @[CORDIC.scala 81:23]
    end else begin
      thetar_2 <= theta_8; // @[CORDIC.scala 137:22]
    end
    if (reset) begin // @[CORDIC.scala 81:23]
      thetar_3 <= 32'sh0; // @[CORDIC.scala 81:23]
    end else begin
      thetar_3 <= theta_12; // @[CORDIC.scala 137:22]
    end
    if (reset) begin // @[CORDIC.scala 81:23]
      thetar_4 <= 32'sh0; // @[CORDIC.scala 81:23]
    end else begin
      thetar_4 <= theta_16; // @[CORDIC.scala 137:22]
    end
    if (reset) begin // @[CORDIC.scala 81:23]
      thetar_5 <= 32'sh0; // @[CORDIC.scala 81:23]
    end else begin
      thetar_5 <= theta_20; // @[CORDIC.scala 137:22]
    end
    if (reset) begin // @[CORDIC.scala 81:23]
      thetar_6 <= 32'sh0; // @[CORDIC.scala 81:23]
    end else begin
      thetar_6 <= theta_24; // @[CORDIC.scala 137:22]
    end
    if (reset) begin // @[CORDIC.scala 82:21]
      z0sr_1 <= 32'sh0; // @[CORDIC.scala 82:21]
    end else begin
      z0sr_1 <= io_in_z0; // @[CORDIC.scala 140:20]
    end
    if (reset) begin // @[CORDIC.scala 82:21]
      z0sr_2 <= 32'sh0; // @[CORDIC.scala 82:21]
    end else begin
      z0sr_2 <= z0sr_1; // @[CORDIC.scala 140:20]
    end
    if (reset) begin // @[CORDIC.scala 82:21]
      z0sr_3 <= 32'sh0; // @[CORDIC.scala 82:21]
    end else begin
      z0sr_3 <= z0sr_2; // @[CORDIC.scala 140:20]
    end
    if (reset) begin // @[CORDIC.scala 82:21]
      z0sr_4 <= 32'sh0; // @[CORDIC.scala 82:21]
    end else begin
      z0sr_4 <= z0sr_3; // @[CORDIC.scala 140:20]
    end
    if (reset) begin // @[CORDIC.scala 82:21]
      z0sr_5 <= 32'sh0; // @[CORDIC.scala 82:21]
    end else begin
      z0sr_5 <= z0sr_4; // @[CORDIC.scala 140:20]
    end
    if (reset) begin // @[CORDIC.scala 82:21]
      z0sr_6 <= 32'sh0; // @[CORDIC.scala 82:21]
    end else begin
      z0sr_6 <= z0sr_5; // @[CORDIC.scala 140:20]
    end
    if (reset) begin // @[CORDIC.scala 82:21]
      z0sr_7 <= 32'sh0; // @[CORDIC.scala 82:21]
    end else begin
      z0sr_7 <= z0sr_6; // @[CORDIC.scala 140:20]
    end
    if (reset) begin // @[CORDIC.scala 83:23]
      modesr_1 <= 2'h0; // @[CORDIC.scala 83:23]
    end else begin
      modesr_1 <= modes_0; // @[CORDIC.scala 141:22]
    end
    if (reset) begin // @[CORDIC.scala 83:23]
      modesr_2 <= 2'h0; // @[CORDIC.scala 83:23]
    end else begin
      modesr_2 <= modesr_1; // @[CORDIC.scala 141:22]
    end
    if (reset) begin // @[CORDIC.scala 83:23]
      modesr_3 <= 2'h0; // @[CORDIC.scala 83:23]
    end else begin
      modesr_3 <= modesr_2; // @[CORDIC.scala 141:22]
    end
    if (reset) begin // @[CORDIC.scala 83:23]
      modesr_4 <= 2'h0; // @[CORDIC.scala 83:23]
    end else begin
      modesr_4 <= modesr_3; // @[CORDIC.scala 141:22]
    end
    if (reset) begin // @[CORDIC.scala 83:23]
      modesr_5 <= 2'h0; // @[CORDIC.scala 83:23]
    end else begin
      modesr_5 <= modesr_4; // @[CORDIC.scala 141:22]
    end
    if (reset) begin // @[CORDIC.scala 83:23]
      modesr_6 <= 2'h0; // @[CORDIC.scala 83:23]
    end else begin
      modesr_6 <= modesr_5; // @[CORDIC.scala 141:22]
    end
    if (reset) begin // @[CORDIC.scala 83:23]
      modesr_7 <= 2'h0; // @[CORDIC.scala 83:23]
    end else begin
      modesr_7 <= modesr_6; // @[CORDIC.scala 141:22]
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
  xr_1 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  xr_2 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  xr_3 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  xr_4 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  xr_5 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  xr_6 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  xr_7 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  yr_1 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  yr_2 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  yr_3 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  yr_4 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  yr_5 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  yr_6 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  yr_7 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  thetar_1 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  thetar_2 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  thetar_3 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  thetar_4 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  thetar_5 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  thetar_6 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  z0sr_1 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  z0sr_2 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  z0sr_3 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  z0sr_4 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  z0sr_5 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  z0sr_6 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  z0sr_7 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  modesr_1 = _RAND_27[1:0];
  _RAND_28 = {1{`RANDOM}};
  modesr_2 = _RAND_28[1:0];
  _RAND_29 = {1{`RANDOM}};
  modesr_3 = _RAND_29[1:0];
  _RAND_30 = {1{`RANDOM}};
  modesr_4 = _RAND_30[1:0];
  _RAND_31 = {1{`RANDOM}};
  modesr_5 = _RAND_31[1:0];
  _RAND_32 = {1{`RANDOM}};
  modesr_6 = _RAND_32[1:0];
  _RAND_33 = {1{`RANDOM}};
  modesr_7 = _RAND_33[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Sin(
  input         clock,
  input         reset,
  input  [31:0] io_in,
  output [31:0] io_out
);
  wire  reducer_clock; // @[Sin.scala 20:23]
  wire  reducer_reset; // @[Sin.scala 20:23]
  wire [31:0] reducer_io_in; // @[Sin.scala 20:23]
  wire [31:0] reducer_io_out; // @[Sin.scala 20:23]
  wire [31:0] tofixedz0_io_in; // @[Sin.scala 27:25]
  wire [31:0] tofixedz0_io_out; // @[Sin.scala 27:25]
  wire  cordic_clock; // @[Sin.scala 32:22]
  wire  cordic_reset; // @[Sin.scala 32:22]
  wire [31:0] cordic_io_in_z0; // @[Sin.scala 32:22]
  wire [31:0] cordic_io_in_mode; // @[Sin.scala 32:22]
  wire [31:0] cordic_io_out_x; // @[Sin.scala 32:22]
  wire [1:0] cordic_io_out_mode; // @[Sin.scala 32:22]
  wire [31:0] adjangle = 32'sh1921fb60 - $signed(tofixedz0_io_out); // @[Sin.scala 48:29]
  wire [31:0] _theta_T_3 = $signed(adjangle) + 32'sh6487ed80; // @[Sin.scala 49:44]
  wire [31:0] theta = $signed(adjangle) < 32'sh0 ? $signed(_theta_T_3) : $signed(adjangle); // @[Sin.scala 49:18]
  wire [31:0] _cordic_io_in_z0_T_3 = $signed(theta) - 32'sh6487ed80; // @[Sin.scala 54:41]
  wire  _T_3 = $signed(theta) >= 32'sh1921fb60 & $signed(theta) < 32'sh4b65f200; // @[Sin.scala 55:34]
  wire [31:0] _cordic_io_in_z0_T_7 = 32'sh3243f6c0 - $signed(theta); // @[Sin.scala 57:37]
  wire [31:0] _cordic_io_in_z0_T_8 = $signed(adjangle) < 32'sh0 ? $signed(_theta_T_3) : $signed(adjangle); // @[Sin.scala 59:30]
  wire [31:0] _GEN_1 = $signed(theta) >= 32'sh1921fb60 & $signed(theta) < 32'sh4b65f200 ? _cordic_io_in_z0_T_7 :
    _cordic_io_in_z0_T_8; // @[Sin.scala 55:63 57:21 59:21]
  wire [1:0] _GEN_2 = $signed(theta) >= 32'sh4b65f200 ? 2'h2 : {{1'd0}, _T_3}; // @[Sin.scala 52:35 53:23]
  wire  _io_out_T_1 = ~cordic_io_out_x[31]; // @[Sin.scala 66:15]
  wire [31:0] _io_out_T_3 = {_io_out_T_1,cordic_io_out_x[30:0]}; // @[Sin.scala 66:36]
  wire [31:0] _GEN_4 = cordic_io_out_mode == 2'h1 ? _io_out_T_3 : cordic_io_out_x; // @[Sin.scala 65:31 66:12 68:12]
  TrigRangeReducer reducer ( // @[Sin.scala 20:23]
    .clock(reducer_clock),
    .reset(reducer_reset),
    .io_in(reducer_io_in),
    .io_out(reducer_io_out)
  );
  FloatToFixed32 tofixedz0 ( // @[Sin.scala 27:25]
    .io_in(tofixedz0_io_in),
    .io_out(tofixedz0_io_out)
  );
  CORDIC cordic ( // @[Sin.scala 32:22]
    .clock(cordic_clock),
    .reset(cordic_reset),
    .io_in_z0(cordic_io_in_z0),
    .io_in_mode(cordic_io_in_mode),
    .io_out_x(cordic_io_out_x),
    .io_out_mode(cordic_io_out_mode)
  );
  assign io_out = cordic_io_out_mode == 2'h2 ? cordic_io_out_x : _GEN_4; // @[Sin.scala 63:25 64:12]
  assign reducer_clock = clock;
  assign reducer_reset = reset;
  assign reducer_io_in = io_in; // @[Sin.scala 28:17]
  assign tofixedz0_io_in = reducer_io_out; // @[Sin.scala 29:19]
  assign cordic_clock = clock;
  assign cordic_reset = reset;
  assign cordic_io_in_z0 = $signed(theta) >= 32'sh4b65f200 ? _cordic_io_in_z0_T_3 : _GEN_1; // @[Sin.scala 52:35 54:21]
  assign cordic_io_in_mode = {{30'd0}, _GEN_2};
endmodule

