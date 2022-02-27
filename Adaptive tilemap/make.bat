c:\gbdk\bin\png2mtspr square.png -sh 16 -spr8x8 -c square.c
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wf--debug -Wl-y -Wl-w -c -o square.o square.c
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wf--debug -Wl-y -Wl-w -c -o main.o main.c
c:\gbdk\bin\bankpack -ext=.rel -v -yt19 main.o square.o
c:\gbdk\bin\lcc -Wa-l -Wl-m  -Wl-yt19 -Wl-yo4 -Wl-ya4 -o main.gb main.rel square.rel