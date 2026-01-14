# Synchroniser
Asynchronous inputs like push button inputs need to be synchronised before they are used in the design. It takes
care of the metastability issues arising due to setup/hold time violations in sequentiual circuits.
## I/O Description
- i_clk: Input clock
- i_sig: Asynchronous input signal
- o_sig: Synchronised output signal (Active only for one clock period)
# Synchroniser + Debouncer
File sync_debouncer.v; added functionality of taking care of bouncing of mechanical push buttons. The parameter __DB_CYCLE__ is the number of clock pulses to update the new button value. The debounce delay can be get by multiplying DB_CYCLE with the clock period; e.g. for a debounce delay of 20ms and clock frequency of 1Khz the DB_CYCLE should be set to 20.


