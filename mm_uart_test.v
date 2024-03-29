//`define ENABLE_PCIE

module mm_uart_test(
                            ///////////CLOCK2/////////////
                            CLOCK2_50,

                            /////////CLOCK3/////////
                            CLOCK3_50,

                            /////////CLOCK/////////
                            CLOCK_50,

                            KEY,
                            SW,
                            LEDR,
/*
                            /////////DRAM/////////
                            DRAM_ADDR,
                            DRAM_BA,
                            DRAM_CAS_N,
                            DRAM_CKE,
                            DRAM_CLK,
                            DRAM_CS_N,
                            DRAM_DQ,
                            DRAM_DQM,
                            DRAM_RAS_N,
                            DRAM_WE_N,

                            /////////EEP/////////
                            EEP_I2C_SCLK,
                            EEP_I2C_SDAT,

                            /////////ENET/////////
                            ENET_GTX_CLK,
                            ENET_INT_N,
                            ENET_LINK100,
                            ENET_MDC,
                            ENET_MDIO,
                            ENET_RST_N,
                            ENET_RX_CLK,
                            ENET_RX_COL,
                            ENET_RX_CRS,
                            ENET_RX_DATA,
                            ENET_RX_DV,
                            ENET_RX_ER,
                            ENET_TX_CLK,
                            ENET_TX_DATA,
                            ENET_TX_EN,
                            ENET_TX_ER,

                            /////////FAN/////////
                            FAN_CTRL,

                            /////////FL/////////
                            FL_CE_N,
                            FL_OE_N,
                            FL_RY,
                            FL_WE_N,
                            FL_WP_N,
                            FL_RESET_N,
                            /////////FS/////////
                            FS_DQ,
                            FS_ADDR,
                            /////////GPIO/////////
                            GPIO,

                            /////////G/////////
                            G_SENSOR_INT1,
                            G_SENSOR_SCLK,
                            G_SENSOR_SDAT,

                            /////////HEX/////////
                            HEX0,
                            HEX1,
                            HEX2,
                            HEX3,
                            HEX4,
                            HEX5,
                            HEX6,
                            HEX7,

                            /////////HSMC/////////
                            HSMC_CLKIN0,
                            HSMC_CLKIN_N1,
                            HSMC_CLKIN_N2,
                            HSMC_CLKIN_P1,
                            HSMC_CLKIN_P2,
                            HSMC_CLKOUT0,
                            HSMC_CLKOUT_N1,
                            HSMC_CLKOUT_N2,
                            HSMC_CLKOUT_P1,
                            HSMC_CLKOUT_P2,
                            HSMC_D,
                            HSMC_I2C_SCLK,
                            HSMC_I2C_SDAT,
                            HSMC_RX_D_N,
                            HSMC_RX_D_P,
                            HSMC_TX_D_N,
                            HSMC_TX_D_P,

                            /////////I2C/////////
                            I2C_SCLK,
                            I2C_SDAT,

                            /////////IRDA/////////
                            IRDA_RXD,

                            /////////KEY/////////
                            KEY,

                            /////////LCD/////////
                            LCD_DATA,
                            LCD_EN,
                            LCD_ON,
                            LCD_RS,
                            LCD_RW,

                            /////////LEDG/////////
                            LEDG,

                            /////////LEDR/////////
                            LEDR,

                            /////////PCIE/////////
`ifdef ENABLE_PCIE

                            PCIE_PERST_N,
                            PCIE_REFCLK_P,
                            PCIE_RX_P,
                            PCIE_TX_P,
                            PCIE_WAKE_N,
`endif 
                            /////////SD/////////
                            SD_CLK,
                            SD_CMD,
                            SD_DAT,
                            SD_WP_N,

                            /////////SMA/////////
                            SMA_CLKIN,
                            SMA_CLKOUT,

                            /////////SSRAM/////////
                            SSRAM_ADSC_N,
                            SSRAM_ADSP_N,
                            SSRAM_ADV_N,
                            SSRAM_BE,
                            SSRAM_CLK,
                            SSRAM_GW_N,
                            SSRAM_OE_N,
                            SSRAM_WE_N,
                            SSRAM0_CE_N,
                            SSRAM1_CE_N,                            
                            /////////SW/////////
                            SW,

                            /////////TD/////////
                            TD_CLK27,
                            TD_DATA,
                            TD_HS,
                            TD_RESET_N,
                            TD_VS,

*/
                            /////////UART/////////
                            UART_CTS,
                            UART_RTS,
                            UART_RXD,
                            UART_TXD,

                            /////////VGA/////////
                            VGA_B,
                            VGA_BLANK_N,
                            VGA_CLK,
                            VGA_G,
                            VGA_HS,
                            VGA_R,
                            VGA_SYNC_N,
                            VGA_VS
);

//=======================================================
//  PORT declarations
//=======================================================

                            ///////////CLOCK2/////////////

input                                              CLOCK2_50;

///////// CLOCK3 /////////
input                                              CLOCK3_50;

///////// CLOCK /////////
input                                              CLOCK_50;

input                         [3:0]                KEY;
input                         [17:0]               SW;
output                        [17:0]               LEDR;
/*
///////// DRAM /////////
output                        [12:0]               DRAM_ADDR;
output                        [1:0]                DRAM_BA;
output                                             DRAM_CAS_N;
output                                             DRAM_CKE;
output                                             DRAM_CLK;
output                                             DRAM_CS_N;
inout                         [31:0]               DRAM_DQ;
output                        [3:0]                DRAM_DQM;
output                                             DRAM_RAS_N;
output                                             DRAM_WE_N;

///////// EEP /////////
output                                             EEP_I2C_SCLK;
inout                                              EEP_I2C_SDAT;

///////// ENET /////////
output                                             ENET_GTX_CLK;
input                                              ENET_INT_N;
input                                              ENET_LINK100;
output                                             ENET_MDC;
inout                                              ENET_MDIO;
output                                             ENET_RST_N;
input                                              ENET_RX_CLK;
input                                              ENET_RX_COL;
input                                              ENET_RX_CRS;
input                         [3:0]                ENET_RX_DATA;
input                                              ENET_RX_DV;
input                                              ENET_RX_ER;
input                                              ENET_TX_CLK;
output                        [3:0]                ENET_TX_DATA;
output                                             ENET_TX_EN;
output                                             ENET_TX_ER;

///////// FAN /////////
inout                                              FAN_CTRL;

///////// FL /////////
output                                             FL_CE_N;
output                                             FL_OE_N;
input                                              FL_RY;
output                                             FL_WE_N;
output                                             FL_WP_N;
output                                             FL_RESET_N;
///////// FS /////////
inout                         [31:0]               FS_DQ;
output                        [26:0]               FS_ADDR;
///////// GPIO /////////
inout                         [35:0]               GPIO;

///////// G /////////
input                                              G_SENSOR_INT1;
output                                             G_SENSOR_SCLK;
inout                                              G_SENSOR_SDAT;

///////// HEX /////////
output                        [6:0]                HEX0;
output                        [6:0]                HEX1;
output                        [6:0]                HEX2;
output                        [6:0]                HEX3;
output                        [6:0]                HEX4;
output                        [6:0]                HEX5;
output                        [6:0]                HEX6;
output                        [6:0]                HEX7;

///////// HSMC /////////
input                                              HSMC_CLKIN0;
input                                              HSMC_CLKIN_N1;
input                                              HSMC_CLKIN_N2;
input                                              HSMC_CLKIN_P1;
input                                              HSMC_CLKIN_P2;
output                                             HSMC_CLKOUT0;
inout                                              HSMC_CLKOUT_N1;
inout                                              HSMC_CLKOUT_N2;
inout                                              HSMC_CLKOUT_P1;
inout                                              HSMC_CLKOUT_P2;
inout                         [3:0]                HSMC_D;
output                                             HSMC_I2C_SCLK;
inout                                              HSMC_I2C_SDAT;
inout                         [16:0]               HSMC_RX_D_N;
inout                         [16:0]               HSMC_RX_D_P;
inout                         [16:0]               HSMC_TX_D_N;
inout                         [16:0]               HSMC_TX_D_P;

///////// I2C /////////
output                                             I2C_SCLK;
inout                                              I2C_SDAT;

///////// IRDA /////////
input                                              IRDA_RXD;

///////// KEY /////////
input                         [3:0]                KEY;

///////// LCD /////////
inout                         [7:0]                LCD_DATA;
output                                             LCD_EN;
output                                             LCD_ON;
output                                             LCD_RS;
output                                             LCD_RW;

///////// LEDG /////////
output                        [8:0]                LEDG;

///////// LEDR /////////
output                        [17:0]               LEDR;

///////// PCIE /////////
`ifdef ENABLE_PCIE
input                                              PCIE_PERST_N;
input                                              PCIE_REFCLK_P;
input                         [1:0]                PCIE_RX_P;
output                        [1:0]                PCIE_TX_P;
output                                             PCIE_WAKE_N;
`endif 
///////// SD /////////
output                                             SD_CLK;
inout                                              SD_CMD;
inout                         [3:0]                SD_DAT;
input                                              SD_WP_N;

///////// SMA /////////
input                                              SMA_CLKIN;
output                                             SMA_CLKOUT;

///////// SSRAM /////////
output                                             SSRAM_ADSC_N;
output                                             SSRAM_ADSP_N;
output                                             SSRAM_ADV_N;
output                         [3:0]                SSRAM_BE;
output                                             SSRAM_CLK;
output                                             SSRAM_GW_N;
output                                             SSRAM_OE_N;
output                                             SSRAM_WE_N;
output                                             SSRAM0_CE_N;
output                                             SSRAM1_CE_N;

///////// SW /////////
input                         [17:0]               SW;

///////// TD /////////
input                                              TD_CLK27;
input                         [7:0]                TD_DATA;
input                                              TD_HS;
output                                             TD_RESET_N;
input                                              TD_VS;
*/
///////// UART /////////
input                                             UART_CTS;
output                                              UART_RTS;
input                                              UART_RXD;
output                                             UART_TXD;

///////// VGA /////////
output                        [7:0]                VGA_B;
output                                             VGA_BLANK_N;
output                                             VGA_CLK;
output                        [7:0]                VGA_G;
output                                             VGA_HS;
output                        [7:0]                VGA_R;
output                                             VGA_SYNC_N;
output                                             VGA_VS;

//=======================================================
//  REG/WIRE declarations
//=======================================================





//=======================================================
//  Structural coding
//=======================================================

wire clock_25;
wire clock_baud_9600;
wire reset;
wire tx_start;


assign reset = ~KEY[3];



/*
debounce debounce_inst(
  .clock_25(clock_25),
  .reset(~reset),
  .button(~KEY[0]),
  .debounce(tx_start)
);
*/

pulse #(
  .COUNT_MAX(25000000)
) pulse_25 (
  .clock(clock_25),
  .reset(reset),
  .button(~KEY[0]), // pressed = 1, not pressed = 0
  .pulse(tx_start)
);

baud_gen baud_gen_inst (
    .clock(clock_25),
    .reset(reset),
    .clock_baud_9600(clock_baud_9600)
);


mm_uart mm_uart_inst (
  .clock(clock_25),
  .reset(reset),

  .we(tx_start),
  .data_in(SW[7:0]),
  .addr(32'h90000020),
  .data_out(),

  // UART I/O
  .serial_tx(UART_TXD),
  .serial_rx(UART_RXD)

);

pll_25_125 pll_inst(
	.areset(1'b0),
	.inclk0(CLOCK_50),
	.c0(clock_25),
	.locked(LEDR[17])
);

endmodule
