LAMMPS=/home/apps/lammps/lmp_serial

all:
	$(LAMMPS) < nve.input > nve.out 
	$(LAMMPS) < nvt.input > nvt.out 
	python3 output.py
	gnuplot nve.plt
	gnuplot nvt.plt

.PHONY: clean

clean:
	rm -f nve.out nvt.out nve.dat nvt.dat nve.pdf nvt.pdf log.lammps
