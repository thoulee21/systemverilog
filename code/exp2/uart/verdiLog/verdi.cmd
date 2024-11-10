debImport "-sv" "-f" "./file.list"
debLoadSimResult /home/eda/work5/uart_loopback.fsdb
wvCreateWindow
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "tb_uart_loopback.u_uart_loopback.u_uart_rx" -win $_nTrace1
srcSetScope "tb_uart_loopback.u_uart_loopback.u_uart_rx" -delim "." -win \
           $_nTrace1
srcHBSelect "tb_uart_loopback.u_uart_loopback.u_uart_rx" -win $_nTrace1
srcSelect -signal "rx_clk" -line 2 -pos 1 -win $_nTrace1
srcSelect -signal "rst_n" -line 3 -pos 1 -win $_nTrace1
srcSelect -signal "uart_rxd" -line 4 -pos 1 -win $_nTrace1
srcSelect -signal "uart_rx_done" -line 6 -pos 1 -win $_nTrace1
srcSelect -signal "uart_rx_data" -line 7 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcHBSelect "tb_uart_loopback.u_uart_loopback.u_uart_tx" -win $_nTrace1
srcSetScope "tb_uart_loopback.u_uart_loopback.u_uart_tx" -delim "." -win \
           $_nTrace1
srcHBSelect "tb_uart_loopback.u_uart_loopback.u_uart_tx" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcDeselectAll -win $_nTrace1
srcSelect -signal "tx_clk" -line 3 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcSelect -signal "rst_n" -line 4 -pos 1 -win $_nTrace1
srcSelect -signal "uart_tx_en" -line 5 -pos 1 -win $_nTrace1
srcSelect -signal "uart_tx_data" -line 6 -pos 1 -win $_nTrace1
srcSelect -signal "uart_txd" -line 8 -pos 1 -win $_nTrace1
srcSelect -signal "uart_tx_busy" -line 9 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
verdiSetActWin -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 73438836.612489 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 62207014.542344 -snap {("G1" 4)}
wvZoom -win $_nWave2 60479041.916168 108862275.449102
wvSetCursor -win $_nWave2 83690000.000000
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 83688973.635278 -snap {("G1" 3)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 83694383.397439 -snap {("G1" 4)}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvDeselectAll -win $_nWave2
schCreateWindow -delim "." -win $_nSchema1 -scope \
           "tb_uart_loopback.u_uart_loopback.u_uart_tx"
verdiSetActWin -win $_nSchema_3
schZoomIn -win $_nSchema3 -pos 39448 -3389
schZoomIn -win $_nSchema3 -pos 39448 -3389
schZoomIn -win $_nSchema3 -pos 39448 -3389
schZoomIn -win $_nSchema3 -pos 39449 -3389
schZoomOut -win $_nSchema3 -pos 39448 -3390
schZoomOut -win $_nSchema3 -pos 39447 -3391
schZoomOut -win $_nSchema3 -pos 39447 -3391
schZoomOut -win $_nSchema3 -pos 39447 -3391
schZoomOut -win $_nSchema3 -pos 39447 -3392
schZoomOut -win $_nSchema3 -pos 39447 -3392
schZoomIn -win $_nSchema3 -pos 30833 2262
schZoomIn -win $_nSchema3 -pos 31029 2262
schZoomIn -win $_nSchema3 -pos 31029 2261
schZoomIn -win $_nSchema3 -pos 31028 2261
schZoomIn -win $_nSchema3 -pos 31029 2261
schZoomIn -win $_nSchema3 -pos 31028 2261
schZoomIn -win $_nSchema3 -pos 31028 2261
schZoomOut -win $_nSchema3 -pos 28414 -2606
schZoomOut -win $_nSchema3 -pos 28414 -2606
schZoomOut -win $_nSchema3 -pos 28415 -2606
schZoomOut -win $_nSchema3 -pos 28414 -2606
schZoomOut -win $_nSchema3 -pos 28414 -2607
schZoomOut -win $_nSchema3 -pos 28414 -2607
schZoomOut -win $_nSchema3 -pos 28414 -2607
schZoomOut -win $_nSchema3 -pos 28413 -2607
schZoomIn -win $_nSchema3 -pos 5979 -13855
schZoomIn -win $_nSchema3 -pos 5979 -13855
schZoomIn -win $_nSchema3 -pos 5978 -13855
schZoomIn -win $_nSchema3 -pos 5977 -13856
schZoomIn -win $_nSchema3 -pos 5977 -13856
schZoomIn -win $_nSchema3 -pos 5976 -13857
schZoomOut -win $_nSchema3 -pos 6678 -13217
schZoomOut -win $_nSchema3 -pos 6679 -13216
schZoomOut -win $_nSchema3 -pos 6679 -13217
schZoomOut -win $_nSchema3 -pos 6679 -13217
schSelect -win $_nSchema3 -inst "uart_tx\(@1\):Always2:62:75:RegCombo"
schPushViewIn -win $_nSchema3
srcSelect -win $_nTrace1 -range {62 75 1 2 1 1}
verdiSetActWin -win $_nWave2
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiDockWidgetSetCurTab -dock windowDock_nSchema_3
verdiSetActWin -win $_nSchema_3
schSelect -win $_nSchema3 -inst "uart_tx\(@1\):Always0:25:44:RegCombo"
schPushViewIn -win $_nSchema3
srcSelect -win $_nTrace1 -range {25 44 1 2 1 1}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSignalView -on
verdiSetActWin -dock widgetDock_<Signal_List>
schCreateWindow -delim "." -win $_nSchema1 -scope \
           "tb_uart_loopback.u_uart_loopback.u_uart_tx"
verdiSetActWin -win $_nSchema_4
schZoomIn -win $_nSchema4 -pos 18257 -4560
schZoomIn -win $_nSchema4 -pos 18257 -4736
schZoomIn -win $_nSchema4 -pos 18256 -4737
schZoomIn -win $_nSchema4 -pos 18256 -4737
schZoomIn -win $_nSchema4 -pos 18257 -4737
schZoomIn -win $_nSchema4 -pos 18257 -4738
schSelect -win $_nSchema4 -signal "uart_tx_data\[7:0\]"
schSetOptions -win $_nSchema4 -pinName on
schDeselectAll -win $_nSchema4
schZoomOut -win $_nSchema4 -pos 8788 -2861
schZoomOut -win $_nSchema4 -pos 8788 -2862
schZoomOut -win $_nSchema4 -pos 8788 -2862
schZoomIn -win $_nSchema4 -pos -835 -3350
schZoomIn -win $_nSchema4 -pos -836 -3350
schZoomIn -win $_nSchema4 -pos -838 -3350
schZoomIn -win $_nSchema4 -pos -840 -3350
schZoomIn -win $_nSchema4 -pos -462 -3247
schZoomIn -win $_nSchema4 -pos -392 -3247
schZoomOut -win $_nSchema4 -pos -391 -3234
schZoomOut -win $_nSchema4 -pos -391 -3234
schZoomOut -win $_nSchema4 -pos -391 -3234
schZoomOut -win $_nSchema4 -pos -390 -3234
schZoomOut -win $_nSchema4 -pos -390 -3234
schSelect -win $_nSchema4 -signal "baud_cnt\[15:0\]"
schSetOptions -win $_nSchema4 -pinName off
schSetOptions -win $_nSchema4 -pinName on
schSelect -win $_nSchema4 -signal "baud_cnt\[15:0\]"
schZoomOut -win $_nSchema4 -pos 11749 -8316
schZoomOut -win $_nSchema4 -pos 11749 -8316
schZoomOut -win $_nSchema4 -pos 11748 -8316
schZoomOut -win $_nSchema4 -pos 11749 -8317
schZoomOut -win $_nSchema4 -pos 11748 -8317
schZoomOut -win $_nSchema4 -pos 11748 -8317
schZoomIn -win $_nSchema4 -pos 23285 -3083
schZoomIn -win $_nSchema4 -pos 23285 -3084
schZoomIn -win $_nSchema4 -pos 23284 -3084
schZoomIn -win $_nSchema4 -pos 23284 -3084
schZoomIn -win $_nSchema4 -pos 23284 -3085
schZoomIn -win $_nSchema4 -pos 23283 -3085
schZoomOut -win $_nSchema4 -pos 23282 -3086
schSelect -win $_nSchema4 -inst "uart_tx\(@1\):Always0:25:44:RegCombo"
schSelect -win $_nSchema4 -signal "uart_tx_data\[7:0\]"
schSetOptions -win $_nSchema4 -pinName off
schZoomOut -win $_nSchema4 -pos 12252 -3536
schZoomOut -win $_nSchema4 -pos 12251 -3536
schZoomOut -win $_nSchema4 -pos 12252 -3535
schZoomOut -win $_nSchema4 -pos 12252 -3537
schZoomOut -win $_nSchema4 -pos 12252 -3537
schZoomOut -win $_nSchema4 -pos 12252 -3537
schZoomOut -win $_nSchema4 -pos 12252 -3536
schZoomIn -win $_nSchema4 -pos 12251 -3536
schZoomIn -win $_nSchema4 -pos -775 -3537
schZoomIn -win $_nSchema4 -pos -962 -3436
schZoomIn -win $_nSchema4 -pos -963 -3436
schZoomIn -win $_nSchema4 -pos -967 -3437
schZoomIn -win $_nSchema4 -pos -928 -3395
schSelect -win $_nSchema4 -signal "uart_tx_data\[7:0\]"
schSetOptions -win $_nSchema4 -pinName on
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nSchema_4
schSetOptions -win $_nSchema4 -autoFit on
schSelect -win $_nSchema4 -signal "tx_data_t\[3\]"
schSelect -win $_nSchema4 -signal "tx_data_t\[0\]"
schSelect -win $_nSchema4 -signal "tx_cnt\[3:0\]"
schSelect -win $_nSchema4 -signal "tx_clk"
schSelect -win $_nSchema4 -signal "tx_data_t\[3\]"
schSelect -win $_nSchema4 -signal "tx_data_t\[4\]"
schSelect -win $_nSchema4 -signal "tx_data_t\[5\]"
schSelect -win $_nSchema4 -signal "tx_data_t\[3\]"
schSelect -win $_nSchema4 -signal "tx_data_t\[2\]"
schSelect -win $_nSchema4 -signal "tx_data_t\[1\]"
schSelect -win $_nSchema4 -signal "tx_cnt\[3:0\]"
schSelect -win $_nSchema4 -signal "tx_data_t\[1\]"
schCreateWindow -win $_nSchema4 -level 1 -fanin
schSelect -win $_nSchema4 -inst "uart_tx\(@1\):Always3:80:100:RegCombo"
schSelect -win $_nSchema4 -inst "uart_tx\(@1\):Always2:62:75:RegCombo"
schSelect -win $_nSchema4 -inst "uart_tx\(@1\):Always2:62:75:RegCombo"
schSelect -win $_nSchema4 -inst "uart_tx\(@1\):Always2:62:75:RegCombo"
schSelect -win $_nSchema4 -inst "uart_tx\(@1\):Always2:62:75:RegCombo"
schCreateWindow -win $_nSchema4 -level 1 -fanin
schZoomOut -win $_nSchema4 -pos 34321 -17
schZoomOut -win $_nSchema4 -pos 34320 -18
schZoomOut -win $_nSchema4 -pos 34319 116
schZoomOut -win $_nSchema4 -pos 23922 -4730
schZoomOut -win $_nSchema4 -pos 23922 -4729
schZoomOut -win $_nSchema4 -pos 19607 -10082
schZoomIn -win $_nSchema4 -pos 10882 -15303
schZoomIn -win $_nSchema4 -pos 10881 -15303
schZoomIn -win $_nSchema4 -pos 10881 -15303
schZoomIn -win $_nSchema4 -pos 10880 -15303
schZoomOut -win $_nSchema4 -pos 10881 -15304
schSelect -win $_nSchema4 -inst "uart_tx\(@1\):Always2:62:75:RegCombo"
schZoomOut -win $_nSchema4 -pos 33781 -11883
schZoomOut -win $_nSchema4 -pos 33781 -11884
schZoomOut -win $_nSchema4 -pos 33879 -11783
schZoomOut -win $_nSchema4 -pos 33878 -11783
schZoomIn -win $_nSchema4 -pos 33112 -15407
schZoomIn -win $_nSchema4 -pos 33112 -15407
schZoomOut -win $_nSchema4 -pos 33198 -15408
schZoomIn -win $_nSchema4 -pos 39012 11069
schZoomIn -win $_nSchema4 -pos 39013 11069
schZoomOut -win $_nSchema4 -pos 39013 11069
schZoomOut -win $_nSchema4 -pos 39013 11224
schZoomIn -win $_nSchema4 -pos 5313 2850
schZoomIn -win $_nSchema4 -pos 5313 2849
schZoomIn -win $_nSchema4 -pos 5312 2849
schZoomIn -win $_nSchema4 -pos 5312 2849
schZoomOut -win $_nSchema4 -pos 5312 2848
schZoomOut -win $_nSchema4 -pos 5349 2848
schZoomOut -win $_nSchema4 -pos 5349 2847
schZoomOut -win $_nSchema4 -pos 5349 2907
schZoomOut -win $_nSchema4 -pos 5348 2907
schZoomOut -win $_nSchema4 -pos 5348 3095
schCreateWindow -editSchematic -win $_nSchema4 -Hier -rscope \
           "tb_uart_loopback.u_uart_loopback.u_uart_tx" -connectionMode \
           exceptCommonInput
schPopViewUp -win $_nSchema4
schZoomOut -win $_nSchema4 -pos 18619 1659
schZoomOut -win $_nSchema4 -pos 18648 1659
schZoomOut -win $_nSchema4 -pos 18648 1658
schZoomOut -win $_nSchema4 -pos 18648 1704
schZoomIn -win $_nSchema4 -pos 18591 1820
schZoomIn -win $_nSchema4 -pos 18591 1689
schZoomIn -win $_nSchema4 -pos 18591 1623
schZoomOut -win $_nSchema4 -pos 18591 1623
schZoomOut -win $_nSchema4 -pos 18590 1622
schZoomOut -win $_nSchema4 -pos 18589 1622
verdiDockWidgetSetCurTab -dock windowDock_nSchema_6
verdiSetActWin -win $_nSchema_6
verdiDockWidgetSetCurTab -dock windowDock_nEditSchematic_7
verdiSetActWin -win $_nEditSchematic_7
verdiDockWidgetSetCurTab -dock windowDock_nSchema_6
verdiSetActWin -win $_nSchema_6
verdiDockWidgetSetCurTab -dock windowDock_nSchema_5
verdiSetActWin -win $_nSchema_5
verdiDockWidgetSetCurTab -dock windowDock_nSchema_4
verdiSetActWin -win $_nSchema_4
schCreateWindow -delim "." -win $_nSchema1 -scope \
           "tb_uart_loopback.u_uart_loopback.u_uart_tx"
verdiSetActWin -win $_nSchema_8
schSelect -win $_nSchema8 -inst "uart_tx\(@1\):Always2:62:75:RegCombo"
schPushViewIn -win $_nSchema8
srcSelect -win $_nTrace1 -range {62 75 1 2 1 1}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
schCreateWindow -delim "." -win $_nSchema1 -scope \
           "tb_uart_loopback.u_uart_loopback.u_uart_tx"
verdiSetActWin -win $_nSchema_9
schSelect -win $_nSchema9 -inst "uart_tx\(@1\):Always2:62:75:RegCombo"
schZoomOut -win $_nSchema9
schFit -win $_nSchema9
schCreateWindow -win $_nSchema9 -editSchematic
verdiSetActWin -win $_nEditSchematic_10
schZoom {30578} {6639} {35927} {7469} -win $_nSchema10
schZoomOut -win $_nSchema10
schZoomOut -win $_nSchema10
schZoomOut -win $_nSchema10
schZoomOut -win $_nSchema10
schZoomOut -win $_nSchema10
schZoomOut -win $_nSchema10
schZoomOut -win $_nSchema10
schZoomOut -win $_nSchema10
schZoomOut -win $_nSchema10
schZoomOut -win $_nSchema10
schZoomOut -win $_nSchema10
schZoomOut -win $_nSchema10
schZoomOut -win $_nSchema10
schZoomOut -win $_nSchema10
schSelect -win $_nSchema10 -inst "uart_tx\(@1\):Always3:80:100:RegCombo"
schMoveObj -win $_nSchema10 -offset 500 0
schZoom {30617} {7168} {47295} {7889} -win $_nSchema10
schZoomOut -win $_nSchema10
schZoomOut -win $_nSchema10
schZoomOut -win $_nSchema10
schZoomOut -win $_nSchema10
schZoomOut -win $_nSchema10
schZoomOut -win $_nSchema10
schZoomOut -win $_nSchema10
schMoveObj -win $_nSchema10 -offset -500 0
schMoveObj -win $_nSchema10 -offset -500 0
schMoveObj -win $_nSchema10 -offset 500 0
schMoveObj -win $_nSchema10 -offset 500 0
schMoveObj -win $_nSchema10 -offset 500 0
schMoveObj -win $_nSchema10 -offset 500 0
schMoveObj -win $_nSchema10 -offset 500 0
schMoveObj -win $_nSchema10 -offset -500 0
schMoveObj -win $_nSchema10 -offset -500 0
schMoveObj -win $_nSchema10 -offset -500 0
schMoveObj -win $_nSchema10 -offset -500 0
schMoveObj -win $_nSchema10 -offset 500 0
schMoveObj -win $_nSchema10 -offset -500 0
schUndo -win $_nSchema10
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiDockWidgetSetCurTab -dock windowDock_nSchema_4
verdiSetActWin -win $_nSchema_4
verdiDockWidgetSetCurTab -dock windowDock_nSchema_5
verdiSetActWin -win $_nSchema_5
verdiDockWidgetSetCurTab -dock windowDock_nSchema_6
verdiSetActWin -win $_nSchema_6
verdiDockWidgetSetCurTab -dock windowDock_nEditSchematic_7
verdiSetActWin -win $_nEditSchematic_7
verdiDockWidgetSetCurTab -dock windowDock_nSchema_8
verdiSetActWin -win $_nSchema_8
verdiDockWidgetSetCurTab -dock windowDock_nSchema_9
verdiSetActWin -win $_nSchema_9
verdiDockWidgetSetCurTab -dock windowDock_nSchema_8
verdiSetActWin -win $_nSchema_8
srcSignalView -on
srcSignalView -off
srcSignalView -on
debExit
