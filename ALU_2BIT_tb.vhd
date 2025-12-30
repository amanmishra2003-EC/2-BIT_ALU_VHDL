-- Test bench file for 2BIT ALU

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU_2BIT_tb is
--  Port ( );
end ALU_2BIT_tb;

architecture Behavioral of ALU_2BIT_tb is

    -- DUT component declaration
    component ALU_2bit
        Port (
            A      : in  STD_LOGIC_VECTOR(1 downto 0);
            B      : in  STD_LOGIC_VECTOR(1 downto 0);
            SEL    : in  STD_LOGIC_VECTOR(1 downto 0);
            RESULT : out STD_LOGIC_VECTOR(1 downto 0);
            CARRY  : out STD_LOGIC
        );
    end component;

    -- Testbench signals
    signal A_tb      : STD_LOGIC_VECTOR(1 downto 0) := "00";
    signal B_tb      : STD_LOGIC_VECTOR(1 downto 0) := "00";
    signal SEL_tb    : STD_LOGIC_VECTOR(1 downto 0) := "00";
    signal RESULT_tb : STD_LOGIC_VECTOR(1 downto 0);
    signal CARRY_tb  : STD_LOGIC;

begin

    -- Instantiate the ALU
    DUT : ALU_2bit
        port map (
            A      => A_tb,
            B      => B_tb,
            SEL    => SEL_tb,
            RESULT => RESULT_tb,
            CARRY  => CARRY_tb
        );

    -- Stimulus process
    stimulus : process
    begin
        -- Loop through all ALU operations
        for sel_val in 0 to 3 loop
            SEL_tb <= std_logic_vector(to_unsigned(sel_val, 2));
            wait for 10 ns;

            -- Loop through all values of A
            for a_val in 0 to 3 loop
                A_tb <= std_logic_vector(to_unsigned(a_val, 2));

                -- Loop through all values of B
                for b_val in 0 to 3 loop
                    B_tb <= std_logic_vector(to_unsigned(b_val, 2));
                    wait for 10 ns;
                end loop;
            end loop;
        end loop;

        -- End simulation
        wait;
    end process;

end Behavioral;
