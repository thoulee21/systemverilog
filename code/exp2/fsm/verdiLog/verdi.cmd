debImport "-sv" "-f" "./file.list"
debLoadSimResult /home/eda/work6/fsm_3_tb.fsdb
wvCreateWindow
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcSignalViewSelect "FSM_3_tb.clk"
srcSignalViewAddSelectedToWave -win $_nTrace1
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "FSM_3_tb.clk"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "FSM_3_tb.in\[1:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "FSM_3_tb.out\[1:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "FSM_3_tb.out_vld"
srcSignalViewAddSelectedToWave -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope "FSM_3_tb"
verdiSetActWin -win $_nSchema_3
srcHBSelect "FSM_3_tb.u_FSM_3" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "FSM_3_tb" -win $_nTrace1
srcHBSelect "FSM_3_tb" -win $_nTrace1
srcSetScope "FSM_3_tb" -delim "." -win $_nTrace1
srcHBSelect "FSM_3_tb" -win $_nTrace1
srcHBSelect "FSM_3_tb.u_FSM_3" -win $_nTrace1
srcSetScope "FSM_3_tb.u_FSM_3" -delim "." -win $_nTrace1
srcHBSelect "FSM_3_tb.u_FSM_3" -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope "FSM_3_tb.u_FSM_3"
verdiSetActWin -win $_nSchema_4
schSelect -win $_nSchema4 -inst "FSM_3:FSM0:23:80:FSM"
schPushViewIn -win $_nSchema4
fsmSetCurrentWindow -win $_nState5
fsmResizeWindow 0 25 766 204 -win $_nState5
fsmResizeWindow 0 25 766 204 -win $_nState5
fsmResizeWindow 0 25 766 204 -win $_nState5
verdiSetActWin -win $_nState_5
fsmSelect -add -state "S0" -win $_nState5
fsmSetSearchMode -state "S0" -win $_nState5
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
verdiSetActWin -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 724036.538789 -snap {("G1" 5)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
srcSignalView -on
srcSignalView -off
srcSignalView -on
verdiDockWidgetRestore -dock windowDock_nWave_2
verdiSetActWin -win $_nState_5
srcSignalViewSelect "FSM_3_tb.u_FSM_3.state_c\[3:0\]"
fsmResizeWindow 0 25 766 202 -win $_nState5
srcSignalViewAddSelectedToWave -win $_nTrace1
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "FSM_3_tb.u_FSM_3.state_n\[3:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 880000.000000
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 219050.315431 -snap {("G1" 6)}
verdiSetActWin -win $_nState_5
fsmSelect -state "S2" -win $_nState5
fsmSetSearchMode -state "S2" -win $_nState5
fsmSelect   -state "S0" "S3" -win $_nState5
fsmSelect -state "S2" -win $_nState5
fsmSelect   -state "S0" "S3" -win $_nState5
fsmSelect -state "S2" -win $_nState5
fsmSelect   -state "S0" "S3" -win $_nState5
fsmSelect -state "S1" -win $_nState5
fsmSelect   -state "S2" "S3" -win $_nState5
fsmSelect   -state "S0" "S3" -win $_nState5
fsmSelect -state "S2" -win $_nState5
fsmSelect -state "S1" -win $_nState5
fsmSetSearchMode -state "S1" -win $_nState5
fsmLastView -win $_nState5
fsmLastView -win $_nState5
fsmLastView -win $_nState5
fsmLastView -win $_nState5
verdiSetActWin -win $_nWave2
verdiSetActWin -win $_nState_5
fsmSelect -state "S3" -win $_nState5
fsmSelect -state "Others" -win $_nState5
fsmSetSearchMode -state "Others" -win $_nState5
fsmSelect -state "S0" -win $_nState5
fsmSetSearchMode -state "S0" -win $_nState5
fsmSelect -state "S1" -win $_nState5
fsmSetSearchMode -state "S1" -win $_nState5
fsmSelect -state "S2" -win $_nState5
fsmSetSearchMode -state "S2" -win $_nState5
fsmSelect -state "S3" -win $_nState5
fsmSetSearchMode -state "S3" -win $_nState5
srcSignalViewSelect "FSM_3_tb.u_FSM_3.in\[1:0\]"
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "FSM_3_tb.u_FSM_3.rst_n"
srcSignalViewSelect "FSM_3_tb.u_FSM_3.clk"
srcSignalViewSelect "FSM_3_tb.u_FSM_3.rst_n"
srcSignalViewSelect "FSM_3_tb.u_FSM_3.state_c\[3:0\]"
srcSignalViewSelect "FSM_3_tb.u_FSM_3.S0"
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
schCreateWindow -delim "." -win $_nSchema1 -scope "FSM_3_tb.u_FSM_3"
verdiSetActWin -win $_nSchema_6
schSelect -win $_nSchema6 -inst "FSM_3:FSM0:23:80:FSM"
schPushViewIn -win $_nSchema6
fsmResizeWindow 0 25 766 204 -win $_nState5
verdiSetActWin -dock widgetDock_<Signal_List>
verdiSetActWin -win $_nState_5
fsmSetOptions -animation 1 -win $_nState5
fsmSelect -state "S0" -win $_nState5
fsmSetSearchMode -state "S0" -win $_nState5
fsmSearchPrev -win $_nState5
fsmSearchNext -win $_nState5
fsmSearchNext -win $_nState5
fsmSearchNext -win $_nState5
fsmSearchNext -win $_nState5
fsmSearchNext -win $_nState5
fsmResizeWindow 0 25 764 202 -win $_nState5
fsmResizeWindow 0 25 766 202 -win $_nState5
fsmAddSequence "new_instance" "S0:1" "S1:1" "S2:1" "S3:*"  -win $_nState5
fsmSetSearchMode -sequence "new_instance" -win $_nState5
debExit
