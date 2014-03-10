-- (c) Copyright 1995-2014 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:blk_mem_gen:8.1
-- IP Revision: 0

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY blk_mem_gen_axi_if IS
  PORT (
    s_aclk : IN STD_LOGIC;
    s_aresetn : IN STD_LOGIC;
    s_axi_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_awvalid : IN STD_LOGIC;
    s_axi_awready : OUT STD_LOGIC;
    s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_wvalid : IN STD_LOGIC;
    s_axi_wready : OUT STD_LOGIC;
    s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_bvalid : OUT STD_LOGIC;
    s_axi_bready : IN STD_LOGIC;
    s_axi_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_arvalid : IN STD_LOGIC;
    s_axi_arready : OUT STD_LOGIC;
    s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_rvalid : OUT STD_LOGIC;
    s_axi_rready : IN STD_LOGIC
  );
END blk_mem_gen_axi_if;

ARCHITECTURE blk_mem_gen_axi_if_arch OF blk_mem_gen_axi_if IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF blk_mem_gen_axi_if_arch: ARCHITECTURE IS "yes";

  COMPONENT blk_mem_gen_v8_1 IS
    GENERIC (
      C_FAMILY : STRING;
      C_XDEVICEFAMILY : STRING;
      C_ELABORATION_DIR : STRING;
      C_INTERFACE_TYPE : INTEGER;
      C_AXI_TYPE : INTEGER;
      C_AXI_SLAVE_TYPE : INTEGER;
      C_HAS_AXI_ID : INTEGER;
      C_AXI_ID_WIDTH : INTEGER;
      C_MEM_TYPE : INTEGER;
      C_BYTE_SIZE : INTEGER;
      C_ALGORITHM : INTEGER;
      C_PRIM_TYPE : INTEGER;
      C_LOAD_INIT_FILE : INTEGER;
      C_INIT_FILE_NAME : STRING;
      C_INIT_FILE : STRING;
      C_USE_DEFAULT_DATA : INTEGER;
      C_DEFAULT_DATA : STRING;
      C_RST_TYPE : STRING;
      C_HAS_RSTA : INTEGER;
      C_RST_PRIORITY_A : STRING;
      C_RSTRAM_A : INTEGER;
      C_INITA_VAL : STRING;
      C_HAS_ENA : INTEGER;
      C_HAS_REGCEA : INTEGER;
      C_USE_BYTE_WEA : INTEGER;
      C_WEA_WIDTH : INTEGER;
      C_WRITE_MODE_A : STRING;
      C_WRITE_WIDTH_A : INTEGER;
      C_READ_WIDTH_A : INTEGER;
      C_WRITE_DEPTH_A : INTEGER;
      C_READ_DEPTH_A : INTEGER;
      C_ADDRA_WIDTH : INTEGER;
      C_HAS_RSTB : INTEGER;
      C_RST_PRIORITY_B : STRING;
      C_RSTRAM_B : INTEGER;
      C_INITB_VAL : STRING;
      C_HAS_ENB : INTEGER;
      C_HAS_REGCEB : INTEGER;
      C_USE_BYTE_WEB : INTEGER;
      C_WEB_WIDTH : INTEGER;
      C_WRITE_MODE_B : STRING;
      C_WRITE_WIDTH_B : INTEGER;
      C_READ_WIDTH_B : INTEGER;
      C_WRITE_DEPTH_B : INTEGER;
      C_READ_DEPTH_B : INTEGER;
      C_ADDRB_WIDTH : INTEGER;
      C_HAS_MEM_OUTPUT_REGS_A : INTEGER;
      C_HAS_MEM_OUTPUT_REGS_B : INTEGER;
      C_HAS_MUX_OUTPUT_REGS_A : INTEGER;
      C_HAS_MUX_OUTPUT_REGS_B : INTEGER;
      C_MUX_PIPELINE_STAGES : INTEGER;
      C_HAS_SOFTECC_INPUT_REGS_A : INTEGER;
      C_HAS_SOFTECC_OUTPUT_REGS_B : INTEGER;
      C_USE_SOFTECC : INTEGER;
      C_USE_ECC : INTEGER;
      C_HAS_INJECTERR : INTEGER;
      C_SIM_COLLISION_CHECK : STRING;
      C_COMMON_CLK : INTEGER;
      C_ENABLE_32BIT_ADDRESS : INTEGER;
      C_DISABLE_WARN_BHV_COLL : INTEGER;
      C_DISABLE_WARN_BHV_RANGE : INTEGER;
      C_USE_BRAM_BLOCK : INTEGER;
      C_CTRL_ECC_ALGO : STRING
    );
    PORT (
      clka : IN STD_LOGIC;
      rsta : IN STD_LOGIC;
      ena : IN STD_LOGIC;
      regcea : IN STD_LOGIC;
      wea : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      addra : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      clkb : IN STD_LOGIC;
      rstb : IN STD_LOGIC;
      enb : IN STD_LOGIC;
      regceb : IN STD_LOGIC;
      web : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      addrb : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      dinb : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      doutb : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      injectsbiterr : IN STD_LOGIC;
      injectdbiterr : IN STD_LOGIC;
      sbiterr : OUT STD_LOGIC;
      dbiterr : OUT STD_LOGIC;
      rdaddrecc : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      s_aclk : IN STD_LOGIC;
      s_aresetn : IN STD_LOGIC;
      s_axi_awid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_awvalid : IN STD_LOGIC;
      s_axi_awready : OUT STD_LOGIC;
      s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_wlast : IN STD_LOGIC;
      s_axi_wvalid : IN STD_LOGIC;
      s_axi_wready : OUT STD_LOGIC;
      s_axi_bid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_bvalid : OUT STD_LOGIC;
      s_axi_bready : IN STD_LOGIC;
      s_axi_arid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_arvalid : IN STD_LOGIC;
      s_axi_arready : OUT STD_LOGIC;
      s_axi_rid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_rlast : OUT STD_LOGIC;
      s_axi_rvalid : OUT STD_LOGIC;
      s_axi_rready : IN STD_LOGIC;
      s_axi_injectsbiterr : IN STD_LOGIC;
      s_axi_injectdbiterr : IN STD_LOGIC;
      s_axi_sbiterr : OUT STD_LOGIC;
      s_axi_dbiterr : OUT STD_LOGIC;
      s_axi_rdaddrecc : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
    );
  END COMPONENT blk_mem_gen_v8_1;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF blk_mem_gen_axi_if_arch: ARCHITECTURE IS "blk_mem_gen_v8_1,Vivado 2013.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF blk_mem_gen_axi_if_arch : ARCHITECTURE IS "blk_mem_gen_axi_if,blk_mem_gen_v8_1,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF blk_mem_gen_axi_if_arch: ARCHITECTURE IS "blk_mem_gen_axi_if,blk_mem_gen_v8_1,{x_ipProduct=Vivado 2013.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=blk_mem_gen,x_ipVersion=8.1,x_ipCoreRevision=0,x_ipLanguage=VERILOG,C_FAMILY=kintex7,C_XDEVICEFAMILY=kintex7,C_ELABORATION_DIR=./,C_INTERFACE_TYPE=1,C_AXI_TYPE=0,C_AXI_SLAVE_TYPE=0,C_HAS_AXI_ID=0,C_AXI_ID_WIDTH=4,C_MEM_TYPE=1,C_BYTE_SIZE=8,C_ALGORITHM=1,C_PRIM_TYPE=1,C_LOAD_INIT_FILE=0,C_INIT_FILE_NAME=no_coe_file_loaded,C_INIT_FILE=blk_mem_gen_axi_if.mem,C_USE_DEFAULT_DATA=0,C_DEFAULT_DATA=0,C_RST_TYPE=ASYNC,C_HAS_RSTA=0,C_RST_PRIORITY_A=CE,C_RSTRAM_A=0,C_INITA_VAL=0,C_HAS_ENA=1,C_HAS_REGCEA=0,C_USE_BYTE_WEA=1,C_WEA_WIDTH=4,C_WRITE_MODE_A=READ_FIRST,C_WRITE_WIDTH_A=32,C_READ_WIDTH_A=32,C_WRITE_DEPTH_A=1024,C_READ_DEPTH_A=1024,C_ADDRA_WIDTH=10,C_HAS_RSTB=1,C_RST_PRIORITY_B=CE,C_RSTRAM_B=0,C_INITB_VAL=0,C_HAS_ENB=1,C_HAS_REGCEB=0,C_USE_BYTE_WEB=1,C_WEB_WIDTH=4,C_WRITE_MODE_B=READ_FIRST,C_WRITE_WIDTH_B=32,C_READ_WIDTH_B=32,C_WRITE_DEPTH_B=1024,C_READ_DEPTH_B=1024,C_ADDRB_WIDTH=10,C_HAS_MEM_OUTPUT_REGS_A=0,C_HAS_MEM_OUTPUT_REGS_B=0,C_HAS_MUX_OUTPUT_REGS_A=0,C_HAS_MUX_OUTPUT_REGS_B=0,C_MUX_PIPELINE_STAGES=0,C_HAS_SOFTECC_INPUT_REGS_A=0,C_HAS_SOFTECC_OUTPUT_REGS_B=0,C_USE_SOFTECC=0,C_USE_ECC=0,C_HAS_INJECTERR=0,C_SIM_COLLISION_CHECK=ALL,C_COMMON_CLK=1,C_ENABLE_32BIT_ADDRESS=0,C_DISABLE_WARN_BHV_COLL=0,C_DISABLE_WARN_BHV_RANGE=0,C_USE_BRAM_BLOCK=0,C_CTRL_ECC_ALGO=NONE}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF s_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.ACLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.ARESETN RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI RREADY";
BEGIN
  U0 : blk_mem_gen_v8_1
    GENERIC MAP (
      C_FAMILY => "kintex7",
      C_XDEVICEFAMILY => "kintex7",
      C_ELABORATION_DIR => "./",
      C_INTERFACE_TYPE => 1,
      C_AXI_TYPE => 0,
      C_AXI_SLAVE_TYPE => 0,
      C_HAS_AXI_ID => 0,
      C_AXI_ID_WIDTH => 4,
      C_MEM_TYPE => 1,
      C_BYTE_SIZE => 8,
      C_ALGORITHM => 1,
      C_PRIM_TYPE => 1,
      C_LOAD_INIT_FILE => 0,
      C_INIT_FILE_NAME => "no_coe_file_loaded",
      C_INIT_FILE => "blk_mem_gen_axi_if.mem",
      C_USE_DEFAULT_DATA => 0,
      C_DEFAULT_DATA => "0",
      C_RST_TYPE => "ASYNC",
      C_HAS_RSTA => 0,
      C_RST_PRIORITY_A => "CE",
      C_RSTRAM_A => 0,
      C_INITA_VAL => "0",
      C_HAS_ENA => 1,
      C_HAS_REGCEA => 0,
      C_USE_BYTE_WEA => 1,
      C_WEA_WIDTH => 4,
      C_WRITE_MODE_A => "READ_FIRST",
      C_WRITE_WIDTH_A => 32,
      C_READ_WIDTH_A => 32,
      C_WRITE_DEPTH_A => 1024,
      C_READ_DEPTH_A => 1024,
      C_ADDRA_WIDTH => 10,
      C_HAS_RSTB => 1,
      C_RST_PRIORITY_B => "CE",
      C_RSTRAM_B => 0,
      C_INITB_VAL => "0",
      C_HAS_ENB => 1,
      C_HAS_REGCEB => 0,
      C_USE_BYTE_WEB => 1,
      C_WEB_WIDTH => 4,
      C_WRITE_MODE_B => "READ_FIRST",
      C_WRITE_WIDTH_B => 32,
      C_READ_WIDTH_B => 32,
      C_WRITE_DEPTH_B => 1024,
      C_READ_DEPTH_B => 1024,
      C_ADDRB_WIDTH => 10,
      C_HAS_MEM_OUTPUT_REGS_A => 0,
      C_HAS_MEM_OUTPUT_REGS_B => 0,
      C_HAS_MUX_OUTPUT_REGS_A => 0,
      C_HAS_MUX_OUTPUT_REGS_B => 0,
      C_MUX_PIPELINE_STAGES => 0,
      C_HAS_SOFTECC_INPUT_REGS_A => 0,
      C_HAS_SOFTECC_OUTPUT_REGS_B => 0,
      C_USE_SOFTECC => 0,
      C_USE_ECC => 0,
      C_HAS_INJECTERR => 0,
      C_SIM_COLLISION_CHECK => "ALL",
      C_COMMON_CLK => 1,
      C_ENABLE_32BIT_ADDRESS => 0,
      C_DISABLE_WARN_BHV_COLL => 0,
      C_DISABLE_WARN_BHV_RANGE => 0,
      C_USE_BRAM_BLOCK => 0,
      C_CTRL_ECC_ALGO => "NONE"
    )
    PORT MAP (
      clka => '0',
      rsta => '0',
      ena => '0',
      regcea => '0',
      wea => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      addra => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 10)),
      dina => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      clkb => '0',
      rstb => '0',
      enb => '0',
      regceb => '0',
      web => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      addrb => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 10)),
      dinb => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      injectsbiterr => '0',
      injectdbiterr => '0',
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_awid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_axi_awaddr => s_axi_awaddr,
      s_axi_awlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      s_axi_awsize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_axi_awburst => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_awready => s_axi_awready,
      s_axi_wdata => s_axi_wdata,
      s_axi_wstrb => s_axi_wstrb,
      s_axi_wlast => '0',
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wready => s_axi_wready,
      s_axi_bresp => s_axi_bresp,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_bready => s_axi_bready,
      s_axi_arid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_axi_araddr => s_axi_araddr,
      s_axi_arlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      s_axi_arsize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_axi_arburst => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_arready => s_axi_arready,
      s_axi_rdata => s_axi_rdata,
      s_axi_rresp => s_axi_rresp,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_rready => s_axi_rready,
      s_axi_injectsbiterr => '0',
      s_axi_injectdbiterr => '0'
    );
END blk_mem_gen_axi_if_arch;
