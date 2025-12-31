library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU_2bit is
    Port (
        A      : in  STD_LOGIC_VECTOR(1 downto 0); --2BIT INPUT A
        B      : in  STD_LOGIC_VECTOR(1 downto 0); --2BIT INPUT B
        SEL    : in  STD_LOGIC_VECTOR(1 downto 0); --2BIT INPUT SELECT LINES
        RESULT : out STD_LOGIC_VECTOR(1 downto 0); --2BIT OUTPUT
        CARRY  : out STD_LOGIC                     -- 1BIT OUTPUT CARRY
    );
end ALU_2bit;                                      --end of entity

architecture Behavioral of ALU_2bit is
    signal temp : UNSIGNED(2 downto 0);
begin

    process(A, B, SEL)
    begin
        case SEL is
            when "00" =>  -- ADDITION
                temp   <= ('0' & unsigned(A)) + unsigned(B);
                RESULT <= std_logic_vector(temp(1 downto 0));
                CARRY  <= temp(2);

            when "01" =>  -- SUBTRACTION
                RESULT <= std_logic_vector(unsigned(A) - unsigned(B));
                CARRY  <= '0';

            when "10" =>  -- AND OPERATION
                RESULT <= A and B;
                CARRY  <= '0';

            when "11" =>  -- OR OPERATION
                RESULT <= A or B;
                CARRY  <= '0';

            when others =>
                RESULT <= "00";
                CARRY  <= '0';
        end case;
    end process;

end Behavioral;                    -- end of architecture behavioral 
