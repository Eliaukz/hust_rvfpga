//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Sun Oct  8 11:02:05 2023
//Host        : LAPTOP-SSK6ALTK running 64-bit major release  (build 9200)
//Command     : generate_target swerv_soc.bd
//Design      : swerv_soc
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module s00_couplers_imp_RRH9HC
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [31:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_ds_ARADDR;
  wire [1:0]s00_couplers_to_auto_ds_ARBURST;
  wire [3:0]s00_couplers_to_auto_ds_ARCACHE;
  wire [5:0]s00_couplers_to_auto_ds_ARID;
  wire [7:0]s00_couplers_to_auto_ds_ARLEN;
  wire [0:0]s00_couplers_to_auto_ds_ARLOCK;
  wire [2:0]s00_couplers_to_auto_ds_ARPROT;
  wire [3:0]s00_couplers_to_auto_ds_ARQOS;
  wire s00_couplers_to_auto_ds_ARREADY;
  wire [3:0]s00_couplers_to_auto_ds_ARREGION;
  wire [2:0]s00_couplers_to_auto_ds_ARSIZE;
  wire s00_couplers_to_auto_ds_ARVALID;
  wire [31:0]s00_couplers_to_auto_ds_AWADDR;
  wire [1:0]s00_couplers_to_auto_ds_AWBURST;
  wire [3:0]s00_couplers_to_auto_ds_AWCACHE;
  wire [5:0]s00_couplers_to_auto_ds_AWID;
  wire [7:0]s00_couplers_to_auto_ds_AWLEN;
  wire [0:0]s00_couplers_to_auto_ds_AWLOCK;
  wire [2:0]s00_couplers_to_auto_ds_AWPROT;
  wire [3:0]s00_couplers_to_auto_ds_AWQOS;
  wire s00_couplers_to_auto_ds_AWREADY;
  wire [3:0]s00_couplers_to_auto_ds_AWREGION;
  wire [2:0]s00_couplers_to_auto_ds_AWSIZE;
  wire s00_couplers_to_auto_ds_AWVALID;
  wire [5:0]s00_couplers_to_auto_ds_BID;
  wire s00_couplers_to_auto_ds_BREADY;
  wire [1:0]s00_couplers_to_auto_ds_BRESP;
  wire s00_couplers_to_auto_ds_BVALID;
  wire [63:0]s00_couplers_to_auto_ds_RDATA;
  wire [5:0]s00_couplers_to_auto_ds_RID;
  wire s00_couplers_to_auto_ds_RLAST;
  wire s00_couplers_to_auto_ds_RREADY;
  wire [1:0]s00_couplers_to_auto_ds_RRESP;
  wire s00_couplers_to_auto_ds_RVALID;
  wire [63:0]s00_couplers_to_auto_ds_WDATA;
  wire s00_couplers_to_auto_ds_WLAST;
  wire s00_couplers_to_auto_ds_WREADY;
  wire [7:0]s00_couplers_to_auto_ds_WSTRB;
  wire s00_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[5:0] = s00_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[63:0] = s00_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[5:0] = s00_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_ds_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_ds_ARID = S_AXI_arid[5:0];
  assign s00_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_ds_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_ds_AWID = S_AXI_awid[5:0];
  assign s00_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_ds_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_ds_WDATA = S_AXI_wdata[63:0];
  assign s00_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[7:0];
  assign s00_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  swerv_soc_auto_ds_0 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_ds_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s00_couplers_to_auto_ds_ARID),
        .s_axi_arlen(s00_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion(s00_couplers_to_auto_ds_ARREGION),
        .s_axi_arsize(s00_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_ds_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_ds_AWID),
        .s_axi_awlen(s00_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion(s00_couplers_to_auto_ds_AWREGION),
        .s_axi_awsize(s00_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_ds_BID),
        .s_axi_bready(s00_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_ds_RDATA),
        .s_axi_rid(s00_couplers_to_auto_ds_RID),
        .s_axi_rlast(s00_couplers_to_auto_ds_RLAST),
        .s_axi_rready(s00_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_ds_WLAST),
        .s_axi_wready(s00_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_ds_WVALID));
  swerv_soc_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

(* CORE_GENERATION_INFO = "swerv_soc,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=swerv_soc,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "swerv_soc.hwdef" *) 
module swerv_soc
   (AN_0,
    Digits_Bits_0,
    bidir_0,
    clk_0,
    dmi_hard_reset_0,
    dmi_reg_addr_0,
    dmi_reg_en_0,
    dmi_reg_rdata_0,
    dmi_reg_wdata_0,
    dmi_reg_wr_en_0,
    extintsrc_req_0,
    i_ram_init_done_0,
    i_ram_init_error_0,
    i_sw,
    o_led,
    ram_araddr,
    ram_arburst,
    ram_arcache,
    ram_arid,
    ram_arlen,
    ram_arlock,
    ram_arprot,
    ram_arqos,
    ram_arready,
    ram_arregion,
    ram_arsize,
    ram_arvalid,
    ram_awaddr,
    ram_awburst,
    ram_awcache,
    ram_awid,
    ram_awlen,
    ram_awlock,
    ram_awprot,
    ram_awqos,
    ram_awready,
    ram_awregion,
    ram_awsize,
    ram_awvalid,
    ram_bid,
    ram_bready,
    ram_bresp,
    ram_bvalid,
    ram_rdata,
    ram_rid,
    ram_rlast,
    ram_rready,
    ram_rresp,
    ram_rvalid,
    ram_wdata,
    ram_wlast,
    ram_wready,
    ram_wstrb,
    ram_wvalid,
    rst_0);
  output [7:0]AN_0;
  output [6:0]Digits_Bits_0;
  output [31:0]bidir_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_BUSIF ram, ASSOCIATED_RESET rst_0, CLK_DOMAIN swerv_soc_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.DMI_HARD_RESET_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.DMI_HARD_RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input dmi_hard_reset_0;
  input [6:0]dmi_reg_addr_0;
  input dmi_reg_en_0;
  output [31:0]dmi_reg_rdata_0;
  input [31:0]dmi_reg_wdata_0;
  input dmi_reg_wr_en_0;
  input [8:1]extintsrc_req_0;
  input i_ram_init_done_0;
  input i_ram_init_error_0;
  input [15:0]i_sw;
  output [15:0]o_led;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ram, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN swerv_soc_clk_0, DATA_WIDTH 64, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]ram_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output [1:0]ram_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output [3:0]ram_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output [5:0]ram_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output [7:0]ram_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output ram_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output [2:0]ram_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output [3:0]ram_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) input ram_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output [3:0]ram_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output [2:0]ram_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output ram_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output [31:0]ram_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output [1:0]ram_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output [3:0]ram_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output [5:0]ram_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output [7:0]ram_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output ram_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output [2:0]ram_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output [3:0]ram_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) input ram_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output [3:0]ram_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output [2:0]ram_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output ram_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) input [5:0]ram_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output ram_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) input [1:0]ram_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) input ram_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) input [63:0]ram_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) input [5:0]ram_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) input ram_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output ram_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) input [1:0]ram_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) input ram_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output [63:0]ram_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output ram_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) input ram_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output [7:0]ram_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram " *) output ram_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_0;

  wire [31:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [5:0]S00_AXI_1_ARID;
  wire [7:0]S00_AXI_1_ARLEN;
  wire S00_AXI_1_ARLOCK;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [3:0]S00_AXI_1_ARQOS;
  wire S00_AXI_1_ARREADY;
  wire [3:0]S00_AXI_1_ARREGION;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire S00_AXI_1_ARVALID;
  wire [31:0]S00_AXI_1_AWADDR;
  wire [1:0]S00_AXI_1_AWBURST;
  wire [3:0]S00_AXI_1_AWCACHE;
  wire [5:0]S00_AXI_1_AWID;
  wire [7:0]S00_AXI_1_AWLEN;
  wire S00_AXI_1_AWLOCK;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [3:0]S00_AXI_1_AWQOS;
  wire S00_AXI_1_AWREADY;
  wire [3:0]S00_AXI_1_AWREGION;
  wire [2:0]S00_AXI_1_AWSIZE;
  wire S00_AXI_1_AWVALID;
  wire [5:0]S00_AXI_1_BID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [63:0]S00_AXI_1_RDATA;
  wire [5:0]S00_AXI_1_RID;
  wire S00_AXI_1_RLAST;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [63:0]S00_AXI_1_WDATA;
  wire S00_AXI_1_WLAST;
  wire S00_AXI_1_WREADY;
  wire [7:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire [31:0]axi2wb_intcon_wrapper_0_o_ram_axi4_ARADDR;
  wire [1:0]axi2wb_intcon_wrapper_0_o_ram_axi4_ARBURST;
  wire [3:0]axi2wb_intcon_wrapper_0_o_ram_axi4_ARCACHE;
  wire [5:0]axi2wb_intcon_wrapper_0_o_ram_axi4_ARID;
  wire [7:0]axi2wb_intcon_wrapper_0_o_ram_axi4_ARLEN;
  wire axi2wb_intcon_wrapper_0_o_ram_axi4_ARLOCK;
  wire [2:0]axi2wb_intcon_wrapper_0_o_ram_axi4_ARPROT;
  wire [3:0]axi2wb_intcon_wrapper_0_o_ram_axi4_ARQOS;
  wire axi2wb_intcon_wrapper_0_o_ram_axi4_ARREADY;
  wire [3:0]axi2wb_intcon_wrapper_0_o_ram_axi4_ARREGION;
  wire [2:0]axi2wb_intcon_wrapper_0_o_ram_axi4_ARSIZE;
  wire axi2wb_intcon_wrapper_0_o_ram_axi4_ARVALID;
  wire [31:0]axi2wb_intcon_wrapper_0_o_ram_axi4_AWADDR;
  wire [1:0]axi2wb_intcon_wrapper_0_o_ram_axi4_AWBURST;
  wire [3:0]axi2wb_intcon_wrapper_0_o_ram_axi4_AWCACHE;
  wire [5:0]axi2wb_intcon_wrapper_0_o_ram_axi4_AWID;
  wire [7:0]axi2wb_intcon_wrapper_0_o_ram_axi4_AWLEN;
  wire axi2wb_intcon_wrapper_0_o_ram_axi4_AWLOCK;
  wire [2:0]axi2wb_intcon_wrapper_0_o_ram_axi4_AWPROT;
  wire [3:0]axi2wb_intcon_wrapper_0_o_ram_axi4_AWQOS;
  wire axi2wb_intcon_wrapper_0_o_ram_axi4_AWREADY;
  wire [3:0]axi2wb_intcon_wrapper_0_o_ram_axi4_AWREGION;
  wire [2:0]axi2wb_intcon_wrapper_0_o_ram_axi4_AWSIZE;
  wire axi2wb_intcon_wrapper_0_o_ram_axi4_AWVALID;
  wire [5:0]axi2wb_intcon_wrapper_0_o_ram_axi4_BID;
  wire axi2wb_intcon_wrapper_0_o_ram_axi4_BREADY;
  wire [1:0]axi2wb_intcon_wrapper_0_o_ram_axi4_BRESP;
  wire axi2wb_intcon_wrapper_0_o_ram_axi4_BVALID;
  wire [63:0]axi2wb_intcon_wrapper_0_o_ram_axi4_RDATA;
  wire [5:0]axi2wb_intcon_wrapper_0_o_ram_axi4_RID;
  wire axi2wb_intcon_wrapper_0_o_ram_axi4_RLAST;
  wire axi2wb_intcon_wrapper_0_o_ram_axi4_RREADY;
  wire [1:0]axi2wb_intcon_wrapper_0_o_ram_axi4_RRESP;
  wire axi2wb_intcon_wrapper_0_o_ram_axi4_RVALID;
  wire [63:0]axi2wb_intcon_wrapper_0_o_ram_axi4_WDATA;
  wire axi2wb_intcon_wrapper_0_o_ram_axi4_WLAST;
  wire axi2wb_intcon_wrapper_0_o_ram_axi4_WREADY;
  wire [7:0]axi2wb_intcon_wrapper_0_o_ram_axi4_WSTRB;
  wire axi2wb_intcon_wrapper_0_o_ram_axi4_WVALID;
  wire [7:0]axi2wb_intcon_wrapper_0_wb_gpio_adr_o;
  wire axi2wb_intcon_wrapper_0_wb_gpio_cyc_o;
  wire [31:0]axi2wb_intcon_wrapper_0_wb_gpio_dat_o;
  wire [3:0]axi2wb_intcon_wrapper_0_wb_gpio_sel_o;
  wire axi2wb_intcon_wrapper_0_wb_gpio_stb_o;
  wire axi2wb_intcon_wrapper_0_wb_gpio_we_o;
  wire [31:0]axi2wb_intcon_wrapper_0_wb_rom_adr_o;
  wire axi2wb_intcon_wrapper_0_wb_rom_cyc_o;
  wire [31:0]axi2wb_intcon_wrapper_0_wb_rom_dat_o;
  wire [3:0]axi2wb_intcon_wrapper_0_wb_rom_sel_o;
  wire axi2wb_intcon_wrapper_0_wb_rom_we_o;
  wire [31:0]axi2wb_intcon_wrapper_0_wb_spi_flash_adr_o;
  wire [31:0]axi2wb_intcon_wrapper_0_wb_sys_adr_o;
  wire axi2wb_intcon_wrapper_0_wb_sys_cyc_o;
  wire [31:0]axi2wb_intcon_wrapper_0_wb_sys_dat_o;
  wire [3:0]axi2wb_intcon_wrapper_0_wb_sys_sel_o;
  wire axi2wb_intcon_wrapper_0_wb_sys_stb_o;
  wire axi2wb_intcon_wrapper_0_wb_sys_we_o;
  wire [15:0]axi_gpio_0_gpio_io_o;
  wire [31:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire axi_interconnect_0_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire axi_interconnect_0_M00_AXI_AWVALID;
  wire axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_RDATA;
  wire axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire axi_interconnect_0_M00_AXI_WVALID;
  wire bootrom_wrapper_0_o_wb_ack;
  wire [31:0]bootrom_wrapper_0_o_wb_rdt;
  wire clk_0_1;
  wire dmi_hard_reset_0_1;
  wire [6:0]dmi_reg_addr_0_1;
  wire dmi_reg_en_0_1;
  wire [31:0]dmi_reg_wdata_0_1;
  wire dmi_reg_wr_en_0_1;
  wire [8:1]extintsrc_req_0_1;
  wire [15:0]gpio2_io_i_0_1;
  wire i_ram_init_done_0_1;
  wire i_ram_init_error_0_1;
  wire rst_0_1;
  wire [31:0]swerv_wrapper_verilog_0_dmi_reg_rdata;
  wire [31:0]swerv_wrapper_verilog_0_ifu_axi_ARADDR;
  wire [1:0]swerv_wrapper_verilog_0_ifu_axi_ARBURST;
  wire [3:0]swerv_wrapper_verilog_0_ifu_axi_ARCACHE;
  wire [2:0]swerv_wrapper_verilog_0_ifu_axi_ARID;
  wire [7:0]swerv_wrapper_verilog_0_ifu_axi_ARLEN;
  wire swerv_wrapper_verilog_0_ifu_axi_ARLOCK;
  wire [2:0]swerv_wrapper_verilog_0_ifu_axi_ARPROT;
  wire [3:0]swerv_wrapper_verilog_0_ifu_axi_ARQOS;
  wire swerv_wrapper_verilog_0_ifu_axi_ARREADY;
  wire [3:0]swerv_wrapper_verilog_0_ifu_axi_ARREGION;
  wire [2:0]swerv_wrapper_verilog_0_ifu_axi_ARSIZE;
  wire swerv_wrapper_verilog_0_ifu_axi_ARVALID;
  wire [63:0]swerv_wrapper_verilog_0_ifu_axi_RDATA;
  wire [2:0]swerv_wrapper_verilog_0_ifu_axi_RID;
  wire swerv_wrapper_verilog_0_ifu_axi_RLAST;
  wire swerv_wrapper_verilog_0_ifu_axi_RREADY;
  wire [1:0]swerv_wrapper_verilog_0_ifu_axi_RRESP;
  wire swerv_wrapper_verilog_0_ifu_axi_RVALID;
  wire [31:0]swerv_wrapper_verilog_0_lsu_axi_ARADDR;
  wire [1:0]swerv_wrapper_verilog_0_lsu_axi_ARBURST;
  wire [3:0]swerv_wrapper_verilog_0_lsu_axi_ARCACHE;
  wire [3:0]swerv_wrapper_verilog_0_lsu_axi_ARID;
  wire [7:0]swerv_wrapper_verilog_0_lsu_axi_ARLEN;
  wire swerv_wrapper_verilog_0_lsu_axi_ARLOCK;
  wire [2:0]swerv_wrapper_verilog_0_lsu_axi_ARPROT;
  wire [3:0]swerv_wrapper_verilog_0_lsu_axi_ARQOS;
  wire swerv_wrapper_verilog_0_lsu_axi_ARREADY;
  wire [3:0]swerv_wrapper_verilog_0_lsu_axi_ARREGION;
  wire [2:0]swerv_wrapper_verilog_0_lsu_axi_ARSIZE;
  wire swerv_wrapper_verilog_0_lsu_axi_ARVALID;
  wire [31:0]swerv_wrapper_verilog_0_lsu_axi_AWADDR;
  wire [1:0]swerv_wrapper_verilog_0_lsu_axi_AWBURST;
  wire [3:0]swerv_wrapper_verilog_0_lsu_axi_AWCACHE;
  wire [3:0]swerv_wrapper_verilog_0_lsu_axi_AWID;
  wire [7:0]swerv_wrapper_verilog_0_lsu_axi_AWLEN;
  wire swerv_wrapper_verilog_0_lsu_axi_AWLOCK;
  wire [2:0]swerv_wrapper_verilog_0_lsu_axi_AWPROT;
  wire [3:0]swerv_wrapper_verilog_0_lsu_axi_AWQOS;
  wire swerv_wrapper_verilog_0_lsu_axi_AWREADY;
  wire [3:0]swerv_wrapper_verilog_0_lsu_axi_AWREGION;
  wire [2:0]swerv_wrapper_verilog_0_lsu_axi_AWSIZE;
  wire swerv_wrapper_verilog_0_lsu_axi_AWVALID;
  wire [3:0]swerv_wrapper_verilog_0_lsu_axi_BID;
  wire swerv_wrapper_verilog_0_lsu_axi_BREADY;
  wire [1:0]swerv_wrapper_verilog_0_lsu_axi_BRESP;
  wire swerv_wrapper_verilog_0_lsu_axi_BVALID;
  wire [63:0]swerv_wrapper_verilog_0_lsu_axi_RDATA;
  wire [3:0]swerv_wrapper_verilog_0_lsu_axi_RID;
  wire swerv_wrapper_verilog_0_lsu_axi_RLAST;
  wire swerv_wrapper_verilog_0_lsu_axi_RREADY;
  wire [1:0]swerv_wrapper_verilog_0_lsu_axi_RRESP;
  wire swerv_wrapper_verilog_0_lsu_axi_RVALID;
  wire [63:0]swerv_wrapper_verilog_0_lsu_axi_WDATA;
  wire swerv_wrapper_verilog_0_lsu_axi_WLAST;
  wire swerv_wrapper_verilog_0_lsu_axi_WREADY;
  wire [7:0]swerv_wrapper_verilog_0_lsu_axi_WSTRB;
  wire swerv_wrapper_verilog_0_lsu_axi_WVALID;
  wire [31:0]swerv_wrapper_verilog_0_sb_axi_ARADDR;
  wire [1:0]swerv_wrapper_verilog_0_sb_axi_ARBURST;
  wire [3:0]swerv_wrapper_verilog_0_sb_axi_ARCACHE;
  wire [0:0]swerv_wrapper_verilog_0_sb_axi_ARID;
  wire [7:0]swerv_wrapper_verilog_0_sb_axi_ARLEN;
  wire swerv_wrapper_verilog_0_sb_axi_ARLOCK;
  wire [2:0]swerv_wrapper_verilog_0_sb_axi_ARPROT;
  wire [3:0]swerv_wrapper_verilog_0_sb_axi_ARQOS;
  wire swerv_wrapper_verilog_0_sb_axi_ARREADY;
  wire [3:0]swerv_wrapper_verilog_0_sb_axi_ARREGION;
  wire [2:0]swerv_wrapper_verilog_0_sb_axi_ARSIZE;
  wire swerv_wrapper_verilog_0_sb_axi_ARVALID;
  wire [31:0]swerv_wrapper_verilog_0_sb_axi_AWADDR;
  wire [1:0]swerv_wrapper_verilog_0_sb_axi_AWBURST;
  wire [3:0]swerv_wrapper_verilog_0_sb_axi_AWCACHE;
  wire [0:0]swerv_wrapper_verilog_0_sb_axi_AWID;
  wire [7:0]swerv_wrapper_verilog_0_sb_axi_AWLEN;
  wire swerv_wrapper_verilog_0_sb_axi_AWLOCK;
  wire [2:0]swerv_wrapper_verilog_0_sb_axi_AWPROT;
  wire [3:0]swerv_wrapper_verilog_0_sb_axi_AWQOS;
  wire swerv_wrapper_verilog_0_sb_axi_AWREADY;
  wire [3:0]swerv_wrapper_verilog_0_sb_axi_AWREGION;
  wire [2:0]swerv_wrapper_verilog_0_sb_axi_AWSIZE;
  wire swerv_wrapper_verilog_0_sb_axi_AWVALID;
  wire [0:0]swerv_wrapper_verilog_0_sb_axi_BID;
  wire swerv_wrapper_verilog_0_sb_axi_BREADY;
  wire [1:0]swerv_wrapper_verilog_0_sb_axi_BRESP;
  wire swerv_wrapper_verilog_0_sb_axi_BVALID;
  wire [63:0]swerv_wrapper_verilog_0_sb_axi_RDATA;
  wire [0:0]swerv_wrapper_verilog_0_sb_axi_RID;
  wire swerv_wrapper_verilog_0_sb_axi_RLAST;
  wire swerv_wrapper_verilog_0_sb_axi_RREADY;
  wire [1:0]swerv_wrapper_verilog_0_sb_axi_RRESP;
  wire swerv_wrapper_verilog_0_sb_axi_RVALID;
  wire [63:0]swerv_wrapper_verilog_0_sb_axi_WDATA;
  wire swerv_wrapper_verilog_0_sb_axi_WLAST;
  wire swerv_wrapper_verilog_0_sb_axi_WREADY;
  wire [7:0]swerv_wrapper_verilog_0_sb_axi_WSTRB;
  wire swerv_wrapper_verilog_0_sb_axi_WVALID;
  wire [7:0]syscon_wrapper_0_AN;
  wire [6:0]syscon_wrapper_0_Digits_Bits;
  wire syscon_wrapper_0_o_nmi_int;
  wire [31:0]syscon_wrapper_0_o_nmi_vec;
  wire syscon_wrapper_0_o_timer_irq;
  wire syscon_wrapper_0_o_wb_ack;
  wire [31:0]syscon_wrapper_0_o_wb_rdt;
  wire [31:0]wb_gpio_wrapper_0_bidir;
  wire wb_gpio_wrapper_0_wb_ack_o;
  wire [31:0]wb_gpio_wrapper_0_wb_dat_o;
  wire wb_gpio_wrapper_0_wb_err_o;
  wire wb_gpio_wrapper_0_wb_inta_o;

  assign AN_0[7:0] = syscon_wrapper_0_AN;
  assign Digits_Bits_0[6:0] = syscon_wrapper_0_Digits_Bits;
  assign axi2wb_intcon_wrapper_0_o_ram_axi4_ARREADY = ram_arready;
  assign axi2wb_intcon_wrapper_0_o_ram_axi4_AWREADY = ram_awready;
  assign axi2wb_intcon_wrapper_0_o_ram_axi4_BID = ram_bid[5:0];
  assign axi2wb_intcon_wrapper_0_o_ram_axi4_BRESP = ram_bresp[1:0];
  assign axi2wb_intcon_wrapper_0_o_ram_axi4_BVALID = ram_bvalid;
  assign axi2wb_intcon_wrapper_0_o_ram_axi4_RDATA = ram_rdata[63:0];
  assign axi2wb_intcon_wrapper_0_o_ram_axi4_RID = ram_rid[5:0];
  assign axi2wb_intcon_wrapper_0_o_ram_axi4_RLAST = ram_rlast;
  assign axi2wb_intcon_wrapper_0_o_ram_axi4_RRESP = ram_rresp[1:0];
  assign axi2wb_intcon_wrapper_0_o_ram_axi4_RVALID = ram_rvalid;
  assign axi2wb_intcon_wrapper_0_o_ram_axi4_WREADY = ram_wready;
  assign bidir_0[31:0] = wb_gpio_wrapper_0_bidir;
  assign clk_0_1 = clk_0;
  assign dmi_hard_reset_0_1 = dmi_hard_reset_0;
  assign dmi_reg_addr_0_1 = dmi_reg_addr_0[6:0];
  assign dmi_reg_en_0_1 = dmi_reg_en_0;
  assign dmi_reg_rdata_0[31:0] = swerv_wrapper_verilog_0_dmi_reg_rdata;
  assign dmi_reg_wdata_0_1 = dmi_reg_wdata_0[31:0];
  assign dmi_reg_wr_en_0_1 = dmi_reg_wr_en_0;
  assign extintsrc_req_0_1 = extintsrc_req_0[8:1];
  assign gpio2_io_i_0_1 = i_sw[15:0];
  assign i_ram_init_done_0_1 = i_ram_init_done_0;
  assign i_ram_init_error_0_1 = i_ram_init_error_0;
  assign o_led[15:0] = axi_gpio_0_gpio_io_o;
  assign ram_araddr[31:0] = axi2wb_intcon_wrapper_0_o_ram_axi4_ARADDR;
  assign ram_arburst[1:0] = axi2wb_intcon_wrapper_0_o_ram_axi4_ARBURST;
  assign ram_arcache[3:0] = axi2wb_intcon_wrapper_0_o_ram_axi4_ARCACHE;
  assign ram_arid[5:0] = axi2wb_intcon_wrapper_0_o_ram_axi4_ARID;
  assign ram_arlen[7:0] = axi2wb_intcon_wrapper_0_o_ram_axi4_ARLEN;
  assign ram_arlock = axi2wb_intcon_wrapper_0_o_ram_axi4_ARLOCK;
  assign ram_arprot[2:0] = axi2wb_intcon_wrapper_0_o_ram_axi4_ARPROT;
  assign ram_arqos[3:0] = axi2wb_intcon_wrapper_0_o_ram_axi4_ARQOS;
  assign ram_arregion[3:0] = axi2wb_intcon_wrapper_0_o_ram_axi4_ARREGION;
  assign ram_arsize[2:0] = axi2wb_intcon_wrapper_0_o_ram_axi4_ARSIZE;
  assign ram_arvalid = axi2wb_intcon_wrapper_0_o_ram_axi4_ARVALID;
  assign ram_awaddr[31:0] = axi2wb_intcon_wrapper_0_o_ram_axi4_AWADDR;
  assign ram_awburst[1:0] = axi2wb_intcon_wrapper_0_o_ram_axi4_AWBURST;
  assign ram_awcache[3:0] = axi2wb_intcon_wrapper_0_o_ram_axi4_AWCACHE;
  assign ram_awid[5:0] = axi2wb_intcon_wrapper_0_o_ram_axi4_AWID;
  assign ram_awlen[7:0] = axi2wb_intcon_wrapper_0_o_ram_axi4_AWLEN;
  assign ram_awlock = axi2wb_intcon_wrapper_0_o_ram_axi4_AWLOCK;
  assign ram_awprot[2:0] = axi2wb_intcon_wrapper_0_o_ram_axi4_AWPROT;
  assign ram_awqos[3:0] = axi2wb_intcon_wrapper_0_o_ram_axi4_AWQOS;
  assign ram_awregion[3:0] = axi2wb_intcon_wrapper_0_o_ram_axi4_AWREGION;
  assign ram_awsize[2:0] = axi2wb_intcon_wrapper_0_o_ram_axi4_AWSIZE;
  assign ram_awvalid = axi2wb_intcon_wrapper_0_o_ram_axi4_AWVALID;
  assign ram_bready = axi2wb_intcon_wrapper_0_o_ram_axi4_BREADY;
  assign ram_rready = axi2wb_intcon_wrapper_0_o_ram_axi4_RREADY;
  assign ram_wdata[63:0] = axi2wb_intcon_wrapper_0_o_ram_axi4_WDATA;
  assign ram_wlast = axi2wb_intcon_wrapper_0_o_ram_axi4_WLAST;
  assign ram_wstrb[7:0] = axi2wb_intcon_wrapper_0_o_ram_axi4_WSTRB;
  assign ram_wvalid = axi2wb_intcon_wrapper_0_o_ram_axi4_WVALID;
  assign rst_0_1 = rst_0;
  swerv_soc_axi2wb_intcon_wrapper_0_0 axi2wb_intcon_wrapper_0
       (.clk_i_wrapper(clk_0_1),
        .i_ifu_araddr(swerv_wrapper_verilog_0_ifu_axi_ARADDR),
        .i_ifu_arburst(swerv_wrapper_verilog_0_ifu_axi_ARBURST),
        .i_ifu_arcache(swerv_wrapper_verilog_0_ifu_axi_ARCACHE),
        .i_ifu_arid(swerv_wrapper_verilog_0_ifu_axi_ARID),
        .i_ifu_arlen(swerv_wrapper_verilog_0_ifu_axi_ARLEN),
        .i_ifu_arlock(swerv_wrapper_verilog_0_ifu_axi_ARLOCK),
        .i_ifu_arprot(swerv_wrapper_verilog_0_ifu_axi_ARPROT),
        .i_ifu_arqos(swerv_wrapper_verilog_0_ifu_axi_ARQOS),
        .i_ifu_arregion(swerv_wrapper_verilog_0_ifu_axi_ARREGION),
        .i_ifu_arsize(swerv_wrapper_verilog_0_ifu_axi_ARSIZE),
        .i_ifu_arvalid(swerv_wrapper_verilog_0_ifu_axi_ARVALID),
        .i_ifu_rready(swerv_wrapper_verilog_0_ifu_axi_RREADY),
        .i_lsu_araddr(swerv_wrapper_verilog_0_lsu_axi_ARADDR),
        .i_lsu_arburst(swerv_wrapper_verilog_0_lsu_axi_ARBURST),
        .i_lsu_arcache(swerv_wrapper_verilog_0_lsu_axi_ARCACHE),
        .i_lsu_arid(swerv_wrapper_verilog_0_lsu_axi_ARID),
        .i_lsu_arlen(swerv_wrapper_verilog_0_lsu_axi_ARLEN),
        .i_lsu_arlock(swerv_wrapper_verilog_0_lsu_axi_ARLOCK),
        .i_lsu_arprot(swerv_wrapper_verilog_0_lsu_axi_ARPROT),
        .i_lsu_arqos(swerv_wrapper_verilog_0_lsu_axi_ARQOS),
        .i_lsu_arregion(swerv_wrapper_verilog_0_lsu_axi_ARREGION),
        .i_lsu_arsize(swerv_wrapper_verilog_0_lsu_axi_ARSIZE),
        .i_lsu_arvalid(swerv_wrapper_verilog_0_lsu_axi_ARVALID),
        .i_lsu_awaddr(swerv_wrapper_verilog_0_lsu_axi_AWADDR),
        .i_lsu_awburst(swerv_wrapper_verilog_0_lsu_axi_AWBURST),
        .i_lsu_awcache(swerv_wrapper_verilog_0_lsu_axi_AWCACHE),
        .i_lsu_awid(swerv_wrapper_verilog_0_lsu_axi_AWID),
        .i_lsu_awlen(swerv_wrapper_verilog_0_lsu_axi_AWLEN),
        .i_lsu_awlock(swerv_wrapper_verilog_0_lsu_axi_AWLOCK),
        .i_lsu_awprot(swerv_wrapper_verilog_0_lsu_axi_AWPROT),
        .i_lsu_awqos(swerv_wrapper_verilog_0_lsu_axi_AWQOS),
        .i_lsu_awregion(swerv_wrapper_verilog_0_lsu_axi_AWREGION),
        .i_lsu_awsize(swerv_wrapper_verilog_0_lsu_axi_AWSIZE),
        .i_lsu_awvalid(swerv_wrapper_verilog_0_lsu_axi_AWVALID),
        .i_lsu_bready(swerv_wrapper_verilog_0_lsu_axi_BREADY),
        .i_lsu_rready(swerv_wrapper_verilog_0_lsu_axi_RREADY),
        .i_lsu_wdata(swerv_wrapper_verilog_0_lsu_axi_WDATA),
        .i_lsu_wlast(swerv_wrapper_verilog_0_lsu_axi_WLAST),
        .i_lsu_wstrb(swerv_wrapper_verilog_0_lsu_axi_WSTRB),
        .i_lsu_wvalid(swerv_wrapper_verilog_0_lsu_axi_WVALID),
        .i_ram_arready(axi2wb_intcon_wrapper_0_o_ram_axi4_ARREADY),
        .i_ram_awready(axi2wb_intcon_wrapper_0_o_ram_axi4_AWREADY),
        .i_ram_bid(axi2wb_intcon_wrapper_0_o_ram_axi4_BID),
        .i_ram_bresp(axi2wb_intcon_wrapper_0_o_ram_axi4_BRESP),
        .i_ram_bvalid(axi2wb_intcon_wrapper_0_o_ram_axi4_BVALID),
        .i_ram_rdata(axi2wb_intcon_wrapper_0_o_ram_axi4_RDATA),
        .i_ram_rid(axi2wb_intcon_wrapper_0_o_ram_axi4_RID),
        .i_ram_rlast(axi2wb_intcon_wrapper_0_o_ram_axi4_RLAST),
        .i_ram_rresp(axi2wb_intcon_wrapper_0_o_ram_axi4_RRESP),
        .i_ram_rvalid(axi2wb_intcon_wrapper_0_o_ram_axi4_RVALID),
        .i_ram_wready(axi2wb_intcon_wrapper_0_o_ram_axi4_WREADY),
        .i_sb_araddr(swerv_wrapper_verilog_0_sb_axi_ARADDR),
        .i_sb_arburst(swerv_wrapper_verilog_0_sb_axi_ARBURST),
        .i_sb_arcache(swerv_wrapper_verilog_0_sb_axi_ARCACHE),
        .i_sb_arid(swerv_wrapper_verilog_0_sb_axi_ARID),
        .i_sb_arlen(swerv_wrapper_verilog_0_sb_axi_ARLEN),
        .i_sb_arlock(swerv_wrapper_verilog_0_sb_axi_ARLOCK),
        .i_sb_arprot(swerv_wrapper_verilog_0_sb_axi_ARPROT),
        .i_sb_arqos(swerv_wrapper_verilog_0_sb_axi_ARQOS),
        .i_sb_arregion(swerv_wrapper_verilog_0_sb_axi_ARREGION),
        .i_sb_arsize(swerv_wrapper_verilog_0_sb_axi_ARSIZE),
        .i_sb_arvalid(swerv_wrapper_verilog_0_sb_axi_ARVALID),
        .i_sb_awaddr(swerv_wrapper_verilog_0_sb_axi_AWADDR),
        .i_sb_awburst(swerv_wrapper_verilog_0_sb_axi_AWBURST),
        .i_sb_awcache(swerv_wrapper_verilog_0_sb_axi_AWCACHE),
        .i_sb_awid(swerv_wrapper_verilog_0_sb_axi_AWID),
        .i_sb_awlen(swerv_wrapper_verilog_0_sb_axi_AWLEN),
        .i_sb_awlock(swerv_wrapper_verilog_0_sb_axi_AWLOCK),
        .i_sb_awprot(swerv_wrapper_verilog_0_sb_axi_AWPROT),
        .i_sb_awqos(swerv_wrapper_verilog_0_sb_axi_AWQOS),
        .i_sb_awregion(swerv_wrapper_verilog_0_sb_axi_AWREGION),
        .i_sb_awsize(swerv_wrapper_verilog_0_sb_axi_AWSIZE),
        .i_sb_awvalid(swerv_wrapper_verilog_0_sb_axi_AWVALID),
        .i_sb_bready(swerv_wrapper_verilog_0_sb_axi_BREADY),
        .i_sb_rready(swerv_wrapper_verilog_0_sb_axi_RREADY),
        .i_sb_wdata(swerv_wrapper_verilog_0_sb_axi_WDATA),
        .i_sb_wlast(swerv_wrapper_verilog_0_sb_axi_WLAST),
        .i_sb_wstrb(swerv_wrapper_verilog_0_sb_axi_WSTRB),
        .i_sb_wvalid(swerv_wrapper_verilog_0_sb_axi_WVALID),
        .i_user_arready(S00_AXI_1_ARREADY),
        .i_user_awready(S00_AXI_1_AWREADY),
        .i_user_bid(S00_AXI_1_BID),
        .i_user_bresp(S00_AXI_1_BRESP),
        .i_user_bvalid(S00_AXI_1_BVALID),
        .i_user_rdata(S00_AXI_1_RDATA),
        .i_user_rid(S00_AXI_1_RID),
        .i_user_rlast(S00_AXI_1_RLAST),
        .i_user_rresp(S00_AXI_1_RRESP),
        .i_user_rvalid(S00_AXI_1_RVALID),
        .i_user_wready(S00_AXI_1_WREADY),
        .o_ifu_arready(swerv_wrapper_verilog_0_ifu_axi_ARREADY),
        .o_ifu_rdata(swerv_wrapper_verilog_0_ifu_axi_RDATA),
        .o_ifu_rid(swerv_wrapper_verilog_0_ifu_axi_RID),
        .o_ifu_rlast(swerv_wrapper_verilog_0_ifu_axi_RLAST),
        .o_ifu_rresp(swerv_wrapper_verilog_0_ifu_axi_RRESP),
        .o_ifu_rvalid(swerv_wrapper_verilog_0_ifu_axi_RVALID),
        .o_lsu_arready(swerv_wrapper_verilog_0_lsu_axi_ARREADY),
        .o_lsu_awready(swerv_wrapper_verilog_0_lsu_axi_AWREADY),
        .o_lsu_bid(swerv_wrapper_verilog_0_lsu_axi_BID),
        .o_lsu_bresp(swerv_wrapper_verilog_0_lsu_axi_BRESP),
        .o_lsu_bvalid(swerv_wrapper_verilog_0_lsu_axi_BVALID),
        .o_lsu_rdata(swerv_wrapper_verilog_0_lsu_axi_RDATA),
        .o_lsu_rid(swerv_wrapper_verilog_0_lsu_axi_RID),
        .o_lsu_rlast(swerv_wrapper_verilog_0_lsu_axi_RLAST),
        .o_lsu_rresp(swerv_wrapper_verilog_0_lsu_axi_RRESP),
        .o_lsu_rvalid(swerv_wrapper_verilog_0_lsu_axi_RVALID),
        .o_lsu_wready(swerv_wrapper_verilog_0_lsu_axi_WREADY),
        .o_ram_araddr(axi2wb_intcon_wrapper_0_o_ram_axi4_ARADDR),
        .o_ram_arburst(axi2wb_intcon_wrapper_0_o_ram_axi4_ARBURST),
        .o_ram_arcache(axi2wb_intcon_wrapper_0_o_ram_axi4_ARCACHE),
        .o_ram_arid(axi2wb_intcon_wrapper_0_o_ram_axi4_ARID),
        .o_ram_arlen(axi2wb_intcon_wrapper_0_o_ram_axi4_ARLEN),
        .o_ram_arlock(axi2wb_intcon_wrapper_0_o_ram_axi4_ARLOCK),
        .o_ram_arprot(axi2wb_intcon_wrapper_0_o_ram_axi4_ARPROT),
        .o_ram_arqos(axi2wb_intcon_wrapper_0_o_ram_axi4_ARQOS),
        .o_ram_arregion(axi2wb_intcon_wrapper_0_o_ram_axi4_ARREGION),
        .o_ram_arsize(axi2wb_intcon_wrapper_0_o_ram_axi4_ARSIZE),
        .o_ram_arvalid(axi2wb_intcon_wrapper_0_o_ram_axi4_ARVALID),
        .o_ram_awaddr(axi2wb_intcon_wrapper_0_o_ram_axi4_AWADDR),
        .o_ram_awburst(axi2wb_intcon_wrapper_0_o_ram_axi4_AWBURST),
        .o_ram_awcache(axi2wb_intcon_wrapper_0_o_ram_axi4_AWCACHE),
        .o_ram_awid(axi2wb_intcon_wrapper_0_o_ram_axi4_AWID),
        .o_ram_awlen(axi2wb_intcon_wrapper_0_o_ram_axi4_AWLEN),
        .o_ram_awlock(axi2wb_intcon_wrapper_0_o_ram_axi4_AWLOCK),
        .o_ram_awprot(axi2wb_intcon_wrapper_0_o_ram_axi4_AWPROT),
        .o_ram_awqos(axi2wb_intcon_wrapper_0_o_ram_axi4_AWQOS),
        .o_ram_awregion(axi2wb_intcon_wrapper_0_o_ram_axi4_AWREGION),
        .o_ram_awsize(axi2wb_intcon_wrapper_0_o_ram_axi4_AWSIZE),
        .o_ram_awvalid(axi2wb_intcon_wrapper_0_o_ram_axi4_AWVALID),
        .o_ram_bready(axi2wb_intcon_wrapper_0_o_ram_axi4_BREADY),
        .o_ram_rready(axi2wb_intcon_wrapper_0_o_ram_axi4_RREADY),
        .o_ram_wdata(axi2wb_intcon_wrapper_0_o_ram_axi4_WDATA),
        .o_ram_wlast(axi2wb_intcon_wrapper_0_o_ram_axi4_WLAST),
        .o_ram_wstrb(axi2wb_intcon_wrapper_0_o_ram_axi4_WSTRB),
        .o_ram_wvalid(axi2wb_intcon_wrapper_0_o_ram_axi4_WVALID),
        .o_sb_arready(swerv_wrapper_verilog_0_sb_axi_ARREADY),
        .o_sb_awready(swerv_wrapper_verilog_0_sb_axi_AWREADY),
        .o_sb_bid(swerv_wrapper_verilog_0_sb_axi_BID),
        .o_sb_bresp(swerv_wrapper_verilog_0_sb_axi_BRESP),
        .o_sb_bvalid(swerv_wrapper_verilog_0_sb_axi_BVALID),
        .o_sb_rdata(swerv_wrapper_verilog_0_sb_axi_RDATA),
        .o_sb_rid(swerv_wrapper_verilog_0_sb_axi_RID),
        .o_sb_rlast(swerv_wrapper_verilog_0_sb_axi_RLAST),
        .o_sb_rresp(swerv_wrapper_verilog_0_sb_axi_RRESP),
        .o_sb_rvalid(swerv_wrapper_verilog_0_sb_axi_RVALID),
        .o_sb_wready(swerv_wrapper_verilog_0_sb_axi_WREADY),
        .o_user_araddr(S00_AXI_1_ARADDR),
        .o_user_arburst(S00_AXI_1_ARBURST),
        .o_user_arcache(S00_AXI_1_ARCACHE),
        .o_user_arid(S00_AXI_1_ARID),
        .o_user_arlen(S00_AXI_1_ARLEN),
        .o_user_arlock(S00_AXI_1_ARLOCK),
        .o_user_arprot(S00_AXI_1_ARPROT),
        .o_user_arqos(S00_AXI_1_ARQOS),
        .o_user_arregion(S00_AXI_1_ARREGION),
        .o_user_arsize(S00_AXI_1_ARSIZE),
        .o_user_arvalid(S00_AXI_1_ARVALID),
        .o_user_awaddr(S00_AXI_1_AWADDR),
        .o_user_awburst(S00_AXI_1_AWBURST),
        .o_user_awcache(S00_AXI_1_AWCACHE),
        .o_user_awid(S00_AXI_1_AWID),
        .o_user_awlen(S00_AXI_1_AWLEN),
        .o_user_awlock(S00_AXI_1_AWLOCK),
        .o_user_awprot(S00_AXI_1_AWPROT),
        .o_user_awqos(S00_AXI_1_AWQOS),
        .o_user_awregion(S00_AXI_1_AWREGION),
        .o_user_awsize(S00_AXI_1_AWSIZE),
        .o_user_awvalid(S00_AXI_1_AWVALID),
        .o_user_bready(S00_AXI_1_BREADY),
        .o_user_rready(S00_AXI_1_RREADY),
        .o_user_wdata(S00_AXI_1_WDATA),
        .o_user_wlast(S00_AXI_1_WLAST),
        .o_user_wstrb(S00_AXI_1_WSTRB),
        .o_user_wvalid(S00_AXI_1_WVALID),
        .rst_ni_wrapper(rst_0_1),
        .wb_gpio_ack_i(wb_gpio_wrapper_0_wb_ack_o),
        .wb_gpio_adr_o(axi2wb_intcon_wrapper_0_wb_gpio_adr_o),
        .wb_gpio_cyc_o(axi2wb_intcon_wrapper_0_wb_gpio_cyc_o),
        .wb_gpio_dat_i(wb_gpio_wrapper_0_wb_dat_o),
        .wb_gpio_dat_o(axi2wb_intcon_wrapper_0_wb_gpio_dat_o),
        .wb_gpio_err_i(wb_gpio_wrapper_0_wb_err_o),
        .wb_gpio_sel_o(axi2wb_intcon_wrapper_0_wb_gpio_sel_o),
        .wb_gpio_stb_o(axi2wb_intcon_wrapper_0_wb_gpio_stb_o),
        .wb_gpio_we_o(axi2wb_intcon_wrapper_0_wb_gpio_we_o),
        .wb_ptc_ack_i(1'b0),
        .wb_ptc_dat_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wb_ptc_err_i(1'b0),
        .wb_ptc_rty_i(1'b0),
        .wb_rom_ack_i(bootrom_wrapper_0_o_wb_ack),
        .wb_rom_adr_o(axi2wb_intcon_wrapper_0_wb_rom_adr_o),
        .wb_rom_cyc_o(axi2wb_intcon_wrapper_0_wb_rom_cyc_o),
        .wb_rom_dat_i(bootrom_wrapper_0_o_wb_rdt),
        .wb_rom_dat_o(axi2wb_intcon_wrapper_0_wb_rom_dat_o),
        .wb_rom_sel_o(axi2wb_intcon_wrapper_0_wb_rom_sel_o),
        .wb_rom_we_o(axi2wb_intcon_wrapper_0_wb_rom_we_o),
        .wb_spi_accel_ack_i(1'b0),
        .wb_spi_accel_dat_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wb_spi_accel_err_i(1'b0),
        .wb_spi_accel_rty_i(1'b0),
        .wb_spi_flash_ack_i(1'b0),
        .wb_spi_flash_adr_o(axi2wb_intcon_wrapper_0_wb_spi_flash_adr_o),
        .wb_spi_flash_dat_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wb_spi_flash_err_i(1'b0),
        .wb_spi_flash_rty_i(1'b0),
        .wb_sys_ack_i(syscon_wrapper_0_o_wb_ack),
        .wb_sys_adr_o(axi2wb_intcon_wrapper_0_wb_sys_adr_o),
        .wb_sys_cyc_o(axi2wb_intcon_wrapper_0_wb_sys_cyc_o),
        .wb_sys_dat_i(syscon_wrapper_0_o_wb_rdt),
        .wb_sys_dat_o(axi2wb_intcon_wrapper_0_wb_sys_dat_o),
        .wb_sys_err_i(1'b0),
        .wb_sys_rty_i(1'b0),
        .wb_sys_sel_o(axi2wb_intcon_wrapper_0_wb_sys_sel_o),
        .wb_sys_stb_o(axi2wb_intcon_wrapper_0_wb_sys_stb_o),
        .wb_sys_we_o(axi2wb_intcon_wrapper_0_wb_sys_we_o),
        .wb_uart_ack_i(1'b0),
        .wb_uart_dat_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wb_uart_err_i(1'b0),
        .wb_uart_rty_i(1'b0));
  swerv_soc_axi_gpio_0_0 axi_gpio_0
       (.gpio2_io_i(gpio2_io_i_0_1),
        .gpio_io_o(axi_gpio_0_gpio_io_o),
        .s_axi_aclk(clk_0_1),
        .s_axi_araddr(axi_interconnect_0_M00_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_0_1),
        .s_axi_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M00_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M00_AXI_WVALID));
  swerv_soc_axi_interconnect_0_0 axi_interconnect_0
       (.ACLK(clk_0_1),
        .ARESETN(rst_0_1),
        .M00_ACLK(clk_0_1),
        .M00_ARESETN(rst_0_1),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .S00_ACLK(clk_0_1),
        .S00_ARESETN(rst_0_1),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arburst(S00_AXI_1_ARBURST),
        .S00_AXI_arcache(S00_AXI_1_ARCACHE),
        .S00_AXI_arid(S00_AXI_1_ARID),
        .S00_AXI_arlen(S00_AXI_1_ARLEN),
        .S00_AXI_arlock(S00_AXI_1_ARLOCK),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arqos(S00_AXI_1_ARQOS),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arregion(S00_AXI_1_ARREGION),
        .S00_AXI_arsize(S00_AXI_1_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awburst(S00_AXI_1_AWBURST),
        .S00_AXI_awcache(S00_AXI_1_AWCACHE),
        .S00_AXI_awid(S00_AXI_1_AWID),
        .S00_AXI_awlen(S00_AXI_1_AWLEN),
        .S00_AXI_awlock(S00_AXI_1_AWLOCK),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awqos(S00_AXI_1_AWQOS),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awregion(S00_AXI_1_AWREGION),
        .S00_AXI_awsize(S00_AXI_1_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bid(S00_AXI_1_BID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rid(S00_AXI_1_RID),
        .S00_AXI_rlast(S00_AXI_1_RLAST),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wlast(S00_AXI_1_WLAST),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID));
  swerv_soc_bootrom_wrapper_0_0 bootrom_wrapper_0
       (.i_clk(clk_0_1),
        .i_rst(rst_0_1),
        .i_wb_adr(axi2wb_intcon_wrapper_0_wb_rom_adr_o),
        .i_wb_cyc(axi2wb_intcon_wrapper_0_wb_rom_cyc_o),
        .i_wb_dat(axi2wb_intcon_wrapper_0_wb_rom_dat_o),
        .i_wb_sel(axi2wb_intcon_wrapper_0_wb_rom_sel_o),
        .i_wb_stb(axi2wb_intcon_wrapper_0_wb_spi_flash_adr_o[0]),
        .i_wb_we(axi2wb_intcon_wrapper_0_wb_rom_we_o),
        .o_wb_ack(bootrom_wrapper_0_o_wb_ack),
        .o_wb_rdt(bootrom_wrapper_0_o_wb_rdt));
  swerv_soc_swerv_wrapper_verilog_0_0 swerv_wrapper_verilog_0
       (.clk(clk_0_1),
        .dmi_hard_reset(dmi_hard_reset_0_1),
        .dmi_reg_addr(dmi_reg_addr_0_1),
        .dmi_reg_en(dmi_reg_en_0_1),
        .dmi_reg_rdata(swerv_wrapper_verilog_0_dmi_reg_rdata),
        .dmi_reg_wdata(dmi_reg_wdata_0_1),
        .dmi_reg_wr_en(dmi_reg_wr_en_0_1),
        .extintsrc_req(extintsrc_req_0_1),
        .ifu_axi_araddr(swerv_wrapper_verilog_0_ifu_axi_ARADDR),
        .ifu_axi_arburst(swerv_wrapper_verilog_0_ifu_axi_ARBURST),
        .ifu_axi_arcache(swerv_wrapper_verilog_0_ifu_axi_ARCACHE),
        .ifu_axi_arid(swerv_wrapper_verilog_0_ifu_axi_ARID),
        .ifu_axi_arlen(swerv_wrapper_verilog_0_ifu_axi_ARLEN),
        .ifu_axi_arlock(swerv_wrapper_verilog_0_ifu_axi_ARLOCK),
        .ifu_axi_arprot(swerv_wrapper_verilog_0_ifu_axi_ARPROT),
        .ifu_axi_arqos(swerv_wrapper_verilog_0_ifu_axi_ARQOS),
        .ifu_axi_arready(swerv_wrapper_verilog_0_ifu_axi_ARREADY),
        .ifu_axi_arregion(swerv_wrapper_verilog_0_ifu_axi_ARREGION),
        .ifu_axi_arsize(swerv_wrapper_verilog_0_ifu_axi_ARSIZE),
        .ifu_axi_arvalid(swerv_wrapper_verilog_0_ifu_axi_ARVALID),
        .ifu_axi_rdata(swerv_wrapper_verilog_0_ifu_axi_RDATA),
        .ifu_axi_rid(swerv_wrapper_verilog_0_ifu_axi_RID),
        .ifu_axi_rlast(swerv_wrapper_verilog_0_ifu_axi_RLAST),
        .ifu_axi_rready(swerv_wrapper_verilog_0_ifu_axi_RREADY),
        .ifu_axi_rresp(swerv_wrapper_verilog_0_ifu_axi_RRESP),
        .ifu_axi_rvalid(swerv_wrapper_verilog_0_ifu_axi_RVALID),
        .lsu_axi_araddr(swerv_wrapper_verilog_0_lsu_axi_ARADDR),
        .lsu_axi_arburst(swerv_wrapper_verilog_0_lsu_axi_ARBURST),
        .lsu_axi_arcache(swerv_wrapper_verilog_0_lsu_axi_ARCACHE),
        .lsu_axi_arid(swerv_wrapper_verilog_0_lsu_axi_ARID),
        .lsu_axi_arlen(swerv_wrapper_verilog_0_lsu_axi_ARLEN),
        .lsu_axi_arlock(swerv_wrapper_verilog_0_lsu_axi_ARLOCK),
        .lsu_axi_arprot(swerv_wrapper_verilog_0_lsu_axi_ARPROT),
        .lsu_axi_arqos(swerv_wrapper_verilog_0_lsu_axi_ARQOS),
        .lsu_axi_arready(swerv_wrapper_verilog_0_lsu_axi_ARREADY),
        .lsu_axi_arregion(swerv_wrapper_verilog_0_lsu_axi_ARREGION),
        .lsu_axi_arsize(swerv_wrapper_verilog_0_lsu_axi_ARSIZE),
        .lsu_axi_arvalid(swerv_wrapper_verilog_0_lsu_axi_ARVALID),
        .lsu_axi_awaddr(swerv_wrapper_verilog_0_lsu_axi_AWADDR),
        .lsu_axi_awburst(swerv_wrapper_verilog_0_lsu_axi_AWBURST),
        .lsu_axi_awcache(swerv_wrapper_verilog_0_lsu_axi_AWCACHE),
        .lsu_axi_awid(swerv_wrapper_verilog_0_lsu_axi_AWID),
        .lsu_axi_awlen(swerv_wrapper_verilog_0_lsu_axi_AWLEN),
        .lsu_axi_awlock(swerv_wrapper_verilog_0_lsu_axi_AWLOCK),
        .lsu_axi_awprot(swerv_wrapper_verilog_0_lsu_axi_AWPROT),
        .lsu_axi_awqos(swerv_wrapper_verilog_0_lsu_axi_AWQOS),
        .lsu_axi_awready(swerv_wrapper_verilog_0_lsu_axi_AWREADY),
        .lsu_axi_awregion(swerv_wrapper_verilog_0_lsu_axi_AWREGION),
        .lsu_axi_awsize(swerv_wrapper_verilog_0_lsu_axi_AWSIZE),
        .lsu_axi_awvalid(swerv_wrapper_verilog_0_lsu_axi_AWVALID),
        .lsu_axi_bid(swerv_wrapper_verilog_0_lsu_axi_BID),
        .lsu_axi_bready(swerv_wrapper_verilog_0_lsu_axi_BREADY),
        .lsu_axi_bresp(swerv_wrapper_verilog_0_lsu_axi_BRESP),
        .lsu_axi_bvalid(swerv_wrapper_verilog_0_lsu_axi_BVALID),
        .lsu_axi_rdata(swerv_wrapper_verilog_0_lsu_axi_RDATA),
        .lsu_axi_rid(swerv_wrapper_verilog_0_lsu_axi_RID),
        .lsu_axi_rlast(swerv_wrapper_verilog_0_lsu_axi_RLAST),
        .lsu_axi_rready(swerv_wrapper_verilog_0_lsu_axi_RREADY),
        .lsu_axi_rresp(swerv_wrapper_verilog_0_lsu_axi_RRESP),
        .lsu_axi_rvalid(swerv_wrapper_verilog_0_lsu_axi_RVALID),
        .lsu_axi_wdata(swerv_wrapper_verilog_0_lsu_axi_WDATA),
        .lsu_axi_wlast(swerv_wrapper_verilog_0_lsu_axi_WLAST),
        .lsu_axi_wready(swerv_wrapper_verilog_0_lsu_axi_WREADY),
        .lsu_axi_wstrb(swerv_wrapper_verilog_0_lsu_axi_WSTRB),
        .lsu_axi_wvalid(swerv_wrapper_verilog_0_lsu_axi_WVALID),
        .nmi_int(syscon_wrapper_0_o_nmi_int),
        .nmi_vec(syscon_wrapper_0_o_nmi_vec),
        .rst(rst_0_1),
        .sb_axi_araddr(swerv_wrapper_verilog_0_sb_axi_ARADDR),
        .sb_axi_arburst(swerv_wrapper_verilog_0_sb_axi_ARBURST),
        .sb_axi_arcache(swerv_wrapper_verilog_0_sb_axi_ARCACHE),
        .sb_axi_arid(swerv_wrapper_verilog_0_sb_axi_ARID),
        .sb_axi_arlen(swerv_wrapper_verilog_0_sb_axi_ARLEN),
        .sb_axi_arlock(swerv_wrapper_verilog_0_sb_axi_ARLOCK),
        .sb_axi_arprot(swerv_wrapper_verilog_0_sb_axi_ARPROT),
        .sb_axi_arqos(swerv_wrapper_verilog_0_sb_axi_ARQOS),
        .sb_axi_arready(swerv_wrapper_verilog_0_sb_axi_ARREADY),
        .sb_axi_arregion(swerv_wrapper_verilog_0_sb_axi_ARREGION),
        .sb_axi_arsize(swerv_wrapper_verilog_0_sb_axi_ARSIZE),
        .sb_axi_arvalid(swerv_wrapper_verilog_0_sb_axi_ARVALID),
        .sb_axi_awaddr(swerv_wrapper_verilog_0_sb_axi_AWADDR),
        .sb_axi_awburst(swerv_wrapper_verilog_0_sb_axi_AWBURST),
        .sb_axi_awcache(swerv_wrapper_verilog_0_sb_axi_AWCACHE),
        .sb_axi_awid(swerv_wrapper_verilog_0_sb_axi_AWID),
        .sb_axi_awlen(swerv_wrapper_verilog_0_sb_axi_AWLEN),
        .sb_axi_awlock(swerv_wrapper_verilog_0_sb_axi_AWLOCK),
        .sb_axi_awprot(swerv_wrapper_verilog_0_sb_axi_AWPROT),
        .sb_axi_awqos(swerv_wrapper_verilog_0_sb_axi_AWQOS),
        .sb_axi_awready(swerv_wrapper_verilog_0_sb_axi_AWREADY),
        .sb_axi_awregion(swerv_wrapper_verilog_0_sb_axi_AWREGION),
        .sb_axi_awsize(swerv_wrapper_verilog_0_sb_axi_AWSIZE),
        .sb_axi_awvalid(swerv_wrapper_verilog_0_sb_axi_AWVALID),
        .sb_axi_bid(swerv_wrapper_verilog_0_sb_axi_BID),
        .sb_axi_bready(swerv_wrapper_verilog_0_sb_axi_BREADY),
        .sb_axi_bresp(swerv_wrapper_verilog_0_sb_axi_BRESP),
        .sb_axi_bvalid(swerv_wrapper_verilog_0_sb_axi_BVALID),
        .sb_axi_rdata(swerv_wrapper_verilog_0_sb_axi_RDATA),
        .sb_axi_rid(swerv_wrapper_verilog_0_sb_axi_RID),
        .sb_axi_rlast(swerv_wrapper_verilog_0_sb_axi_RLAST),
        .sb_axi_rready(swerv_wrapper_verilog_0_sb_axi_RREADY),
        .sb_axi_rresp(swerv_wrapper_verilog_0_sb_axi_RRESP),
        .sb_axi_rvalid(swerv_wrapper_verilog_0_sb_axi_RVALID),
        .sb_axi_wdata(swerv_wrapper_verilog_0_sb_axi_WDATA),
        .sb_axi_wlast(swerv_wrapper_verilog_0_sb_axi_WLAST),
        .sb_axi_wready(swerv_wrapper_verilog_0_sb_axi_WREADY),
        .sb_axi_wstrb(swerv_wrapper_verilog_0_sb_axi_WSTRB),
        .sb_axi_wvalid(swerv_wrapper_verilog_0_sb_axi_WVALID),
        .timer_int(syscon_wrapper_0_o_timer_irq));
  swerv_soc_syscon_wrapper_0_0 syscon_wrapper_0
       (.AN(syscon_wrapper_0_AN),
        .Digits_Bits(syscon_wrapper_0_Digits_Bits),
        .gpio_irq(wb_gpio_wrapper_0_wb_inta_o),
        .i_clk(clk_0_1),
        .i_ram_init_done(i_ram_init_done_0_1),
        .i_ram_init_error(i_ram_init_error_0_1),
        .i_rst(rst_0_1),
        .i_wb_adr(axi2wb_intcon_wrapper_0_wb_sys_adr_o),
        .i_wb_cyc(axi2wb_intcon_wrapper_0_wb_sys_cyc_o),
        .i_wb_dat(axi2wb_intcon_wrapper_0_wb_sys_dat_o),
        .i_wb_sel(axi2wb_intcon_wrapper_0_wb_sys_sel_o),
        .i_wb_stb(axi2wb_intcon_wrapper_0_wb_sys_stb_o),
        .i_wb_we(axi2wb_intcon_wrapper_0_wb_sys_we_o),
        .o_nmi_int(syscon_wrapper_0_o_nmi_int),
        .o_nmi_vec(syscon_wrapper_0_o_nmi_vec),
        .o_timer_irq(syscon_wrapper_0_o_timer_irq),
        .o_wb_ack(syscon_wrapper_0_o_wb_ack),
        .o_wb_rdt(syscon_wrapper_0_o_wb_rdt),
        .ptc_irq(1'b0));
  swerv_soc_wb_gpio_wrapper_0_0 wb_gpio_wrapper_0
       (.bidir(wb_gpio_wrapper_0_bidir),
        .wb_ack_o(wb_gpio_wrapper_0_wb_ack_o),
        .wb_adr_i(axi2wb_intcon_wrapper_0_wb_gpio_adr_o),
        .wb_clk_i(clk_0_1),
        .wb_cyc_i(axi2wb_intcon_wrapper_0_wb_gpio_cyc_o),
        .wb_dat_i(axi2wb_intcon_wrapper_0_wb_gpio_dat_o),
        .wb_dat_o(wb_gpio_wrapper_0_wb_dat_o),
        .wb_err_o(wb_gpio_wrapper_0_wb_err_o),
        .wb_inta_o(wb_gpio_wrapper_0_wb_inta_o),
        .wb_rst_i(rst_0_1),
        .wb_sel_i(axi2wb_intcon_wrapper_0_wb_gpio_sel_o),
        .wb_stb_i(axi2wb_intcon_wrapper_0_wb_gpio_stb_o),
        .wb_we_i(axi2wb_intcon_wrapper_0_wb_gpio_we_o));
endmodule

module swerv_soc_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [5:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [5:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [5:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [63:0]S00_AXI_rdata;
  output [5:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [63:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [7:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_0_ACLK_net;
  wire axi_interconnect_0_ARESETN_net;
  wire [31:0]axi_interconnect_0_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARCACHE;
  wire [5:0]axi_interconnect_0_to_s00_couplers_ARID;
  wire [7:0]axi_interconnect_0_to_s00_couplers_ARLEN;
  wire [0:0]axi_interconnect_0_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARQOS;
  wire axi_interconnect_0_to_s00_couplers_ARREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARREGION;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARSIZE;
  wire axi_interconnect_0_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWCACHE;
  wire [5:0]axi_interconnect_0_to_s00_couplers_AWID;
  wire [7:0]axi_interconnect_0_to_s00_couplers_AWLEN;
  wire [0:0]axi_interconnect_0_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWQOS;
  wire axi_interconnect_0_to_s00_couplers_AWREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWREGION;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWSIZE;
  wire axi_interconnect_0_to_s00_couplers_AWVALID;
  wire [5:0]axi_interconnect_0_to_s00_couplers_BID;
  wire axi_interconnect_0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_BRESP;
  wire axi_interconnect_0_to_s00_couplers_BVALID;
  wire [63:0]axi_interconnect_0_to_s00_couplers_RDATA;
  wire [5:0]axi_interconnect_0_to_s00_couplers_RID;
  wire axi_interconnect_0_to_s00_couplers_RLAST;
  wire axi_interconnect_0_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_RRESP;
  wire axi_interconnect_0_to_s00_couplers_RVALID;
  wire [63:0]axi_interconnect_0_to_s00_couplers_WDATA;
  wire axi_interconnect_0_to_s00_couplers_WLAST;
  wire axi_interconnect_0_to_s00_couplers_WREADY;
  wire [7:0]axi_interconnect_0_to_s00_couplers_WSTRB;
  wire axi_interconnect_0_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_0_ARADDR;
  wire s00_couplers_to_axi_interconnect_0_ARREADY;
  wire s00_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_0_AWADDR;
  wire s00_couplers_to_axi_interconnect_0_AWREADY;
  wire s00_couplers_to_axi_interconnect_0_AWVALID;
  wire s00_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_0_BRESP;
  wire s00_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_0_RDATA;
  wire s00_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_0_RRESP;
  wire s00_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_0_WDATA;
  wire s00_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]s00_couplers_to_axi_interconnect_0_WSTRB;
  wire s00_couplers_to_axi_interconnect_0_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_axi_interconnect_0_ARADDR;
  assign M00_AXI_arvalid = s00_couplers_to_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_axi_interconnect_0_AWADDR;
  assign M00_AXI_awvalid = s00_couplers_to_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_interconnect_0_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_axi_interconnect_0_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_axi_interconnect_0_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_interconnect_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[5:0] = axi_interconnect_0_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[63:0] = axi_interconnect_0_to_s00_couplers_RDATA;
  assign S00_AXI_rid[5:0] = axi_interconnect_0_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_0_to_s00_couplers_WREADY;
  assign axi_interconnect_0_ACLK_net = M00_ACLK;
  assign axi_interconnect_0_ARESETN_net = M00_ARESETN;
  assign axi_interconnect_0_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARID = S00_AXI_arid[5:0];
  assign axi_interconnect_0_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_0_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign axi_interconnect_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWID = S00_AXI_awid[5:0];
  assign axi_interconnect_0_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_0_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign axi_interconnect_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_0_to_s00_couplers_WDATA = S00_AXI_wdata[63:0];
  assign axi_interconnect_0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[7:0];
  assign axi_interconnect_0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_interconnect_0_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_interconnect_0_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_interconnect_0_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_interconnect_0_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_axi_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_interconnect_0_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_interconnect_0_WREADY = M00_AXI_wready;
  s00_couplers_imp_RRH9HC s00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(s00_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(s00_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(s00_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(s00_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(s00_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_0_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_0_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_0_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_0_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_0_to_s00_couplers_ARREADY),
        .S_AXI_arregion(axi_interconnect_0_to_s00_couplers_ARREGION),
        .S_AXI_arsize(axi_interconnect_0_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_0_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_0_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_0_to_s00_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_0_to_s00_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_0_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_0_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_0_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_0_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_0_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_0_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s00_couplers_WVALID));
endmodule
