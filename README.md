# Synchroniser
Asynchronous inputs like push button inputs need to be synchronised before they are used in the design. It takes
care of the metastability issues arising due to setup/hold time violations in sequentiual circuits.
## I/O Description
- i_clk: Input clock
- i_sig: Asynchronous input signal
- o_sig: Synchronised output signal (Active only for one clock period)

