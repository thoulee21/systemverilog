
vcs_sim:
	./simv -l sim.log +notimingcheck +nospecify -k ucli.key \
		-cm line+tgl+branch+fsm+cond+assert
run_verdi:
	verdi -sv -cov -f ./file.list -ssf tbench_top.fsdb &
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
		-debug_access+cbk \
		-l compile.log \
		-P ${VERDI_HOME}/share/PLI/VCS/LINUX64/novas.tab \
		${VERDI_HOME}/share/PLI/VCS/LINUX64/pli.a \
		-cm line+tgl+fsm+cond+branch+assert \
	    -o simv
				
