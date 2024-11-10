
vcs_sim:
	./simv -l sim.log -ucli -i ./dump_fsdb_vcs.tcl +fsdb+autoflush 
run_verdi:
	verdi -sv -f ./file.list -ssf uart_loopback.fsdb &
clean:
	rm -rf simv.daidir csrc DVEfiles verdiLog *.log  *.conf *.vpd *.key *.fsdb simv *.dump
collect_error:
	perl collect_vcs_error_warning.pl
vcs_compile:
	vcs +v2k -f ./file.list \
		-full64 \
		-sverilog \
		-debug_access+all \
		-timescale=1ns/1ps \
		-debug_access+all \
		-l compile.log \
		-P ${VERDI_HOME}/share/PLI/VCS/LINUX64/novas.tab \
		${VERDI_HOME}/share/PLI/VCS/LINUX64/pli.a \
	    -o simv
				
