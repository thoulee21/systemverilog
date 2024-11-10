run 10ns
dump -file vcdplus.vpd -type VPD
dump -add top.DUT -depth 0 -fid VPD0
run 20ns
dump -close
run
