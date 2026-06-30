set ::env(DESIGN_NAME) ALU

set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

# No clock required (Combinational Circuit)
set ::env(CLOCK_PORT) ""
set ::env(CLOCK_NET) ""

# Dummy clock period
set ::env(CLOCK_PERIOD) "10"

# Floorplan settings
set ::env(FP_SIZING) absolute

set ::env(DIE_AREA) "0 0 100 100"
set ::env(CORE_AREA) "10 10 90 90"

set ::env(FP_ASPECT_RATIO) 1

set ::env(FP_PDN_CORE_RING) 1
set ::env(FP_PDN_CORE_RING_VWIDTH) 3
set ::env(FP_PDN_CORE_RING_HWIDTH) 3
set ::env(FP_PDN_CORE_RING_VSPACING) 2
set ::env(FP_PDN_CORE_RING_HSPACING) 2

# Pin configuration
set ::env(FP_PIN_ORDER_CFG) $::env(DESIGN_DIR)/pin_order.cfg

# Synthesis
set ::env(SYNTH_STRATEGY) "DELAY 1"

# Placement
set ::env(PL_TARGET_DENSITY) 0.25
set ::env(CELL_PAD) 2

# Routing
set ::env(RT_MIN_LAYER) met1
set ::env(RT_MAX_LAYER) met5
