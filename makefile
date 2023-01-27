all: nve.dat nvt.out
LAMMPS=/home/apps/lammps/lmp_serial


nve.dat: nve.out
nvt.dat: nvt.out

nve.out:
	lmp_serial < nve.input > nve.out 

nvt.out:
	lmp_serial < nvt.input > nvt.out 

.PHONY: clean

clean:
	rm -f nve.out nvt.out nve.dat nvt.dat log.lammps
