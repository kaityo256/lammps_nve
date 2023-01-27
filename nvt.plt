set term pdfcairo
set out "nvt.pdf"
set style data line
set xlabel "t"
set ylabel "T"
set y2label "E"
set y2tics
set y2range [-6:0]
p "nvt.dat" axis x1y1 t "Temperature","nvt.dat" u 1:3 axis x1y2 t "Energy"
