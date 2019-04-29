-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Block_proc4 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    trem_out : IN STD_LOGIC_VECTOR (31 downto 0);
    out_V_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    out_V_TVALID : OUT STD_LOGIC;
    out_V_TREADY : IN STD_LOGIC );
end;


architecture behav of Block_proc4 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal out_V_1_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal out_V_1_vld_in : STD_LOGIC;
    signal out_V_1_vld_out : STD_LOGIC;
    signal out_V_1_ack_in : STD_LOGIC;
    signal out_V_1_ack_out : STD_LOGIC;
    signal out_V_1_payload_A : STD_LOGIC_VECTOR (31 downto 0);
    signal out_V_1_payload_B : STD_LOGIC_VECTOR (31 downto 0);
    signal out_V_1_sel_rd : STD_LOGIC := '0';
    signal out_V_1_sel_wr : STD_LOGIC := '0';
    signal out_V_1_sel : STD_LOGIC;
    signal out_V_1_load_A : STD_LOGIC;
    signal out_V_1_load_B : STD_LOGIC;
    signal out_V_1_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal out_V_1_state_cmp_full : STD_LOGIC;
    signal out_V_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_block_state1 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_continue)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (out_V_1_ack_in = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    out_V_1_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                out_V_1_sel_rd <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = out_V_1_ack_out) and (ap_const_logic_1 = out_V_1_vld_out))) then 
                                        out_V_1_sel_rd <= not(out_V_1_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    out_V_1_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                out_V_1_sel_wr <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = out_V_1_vld_in) and (ap_const_logic_1 = out_V_1_ack_in))) then 
                                        out_V_1_sel_wr <= not(out_V_1_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    out_V_1_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                out_V_1_state <= ap_const_lv2_0;
            else
                if ((((ap_const_logic_0 = out_V_1_vld_in) and (ap_const_logic_1 = out_V_1_ack_out) and (out_V_1_state = ap_const_lv2_3)) or ((ap_const_logic_0 = out_V_1_vld_in) and (out_V_1_state = ap_const_lv2_2)))) then 
                    out_V_1_state <= ap_const_lv2_2;
                elsif ((((ap_const_logic_1 = out_V_1_vld_in) and (ap_const_logic_0 = out_V_1_ack_out) and (out_V_1_state = ap_const_lv2_3)) or ((ap_const_logic_0 = out_V_1_ack_out) and (out_V_1_state = ap_const_lv2_1)))) then 
                    out_V_1_state <= ap_const_lv2_1;
                elsif ((((ap_const_logic_1 = out_V_1_vld_in) and (out_V_1_state = ap_const_lv2_2)) or ((ap_const_logic_1 = out_V_1_ack_out) and (out_V_1_state = ap_const_lv2_1)) or ((out_V_1_state = ap_const_lv2_3) and not(((ap_const_logic_1 = out_V_1_vld_in) and (ap_const_logic_0 = out_V_1_ack_out))) and not(((ap_const_logic_0 = out_V_1_vld_in) and (ap_const_logic_1 = out_V_1_ack_out)))))) then 
                    out_V_1_state <= ap_const_lv2_3;
                else 
                    out_V_1_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = out_V_1_load_A)) then
                out_V_1_payload_A <= trem_out;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = out_V_1_load_B)) then
                out_V_1_payload_B <= trem_out;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, out_V_1_ack_in, ap_CS_fsm_state2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1) or (ap_const_logic_0 = out_V_1_ack_in))))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (out_V_1_ack_in = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_done_assign_proc : process(ap_done_reg, out_V_1_ack_in, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (out_V_1_ack_in = ap_const_logic_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(out_V_1_ack_in, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (out_V_1_ack_in = ap_const_logic_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    out_V_1_ack_in <= out_V_1_state(1);
    out_V_1_ack_out <= out_V_TREADY;

    out_V_1_data_out_assign_proc : process(out_V_1_payload_A, out_V_1_payload_B, out_V_1_sel)
    begin
        if ((ap_const_logic_1 = out_V_1_sel)) then 
            out_V_1_data_out <= out_V_1_payload_B;
        else 
            out_V_1_data_out <= out_V_1_payload_A;
        end if; 
    end process;

    out_V_1_load_A <= (out_V_1_state_cmp_full and not(out_V_1_sel_wr));
    out_V_1_load_B <= (out_V_1_sel_wr and out_V_1_state_cmp_full);
    out_V_1_sel <= out_V_1_sel_rd;
    out_V_1_state_cmp_full <= '0' when (out_V_1_state = ap_const_lv2_1) else '1';

    out_V_1_vld_in_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, out_V_1_ack_in)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1) or (ap_const_logic_0 = out_V_1_ack_in))))) then 
            out_V_1_vld_in <= ap_const_logic_1;
        else 
            out_V_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

    out_V_1_vld_out <= out_V_1_state(0);
    out_V_TDATA <= out_V_1_data_out;

    out_V_TDATA_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, out_V_1_state, ap_CS_fsm_state2)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1)))) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            out_V_TDATA_blk_n <= out_V_1_state(1);
        else 
            out_V_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    out_V_TVALID <= out_V_1_state(0);
end behav;
