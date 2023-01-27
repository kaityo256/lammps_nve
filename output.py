def read_file(basename):
  inputfile = basename + ".out"
  datfile = basename + ".dat"
  fdat = open(datfile, "w")
  with open(inputfile) as f:
    in_flag = False
    for line in f:
      if "Step Temp E_pair E_mol TotEng Press" in line:
        in_flag = True
        continue
      if not in_flag:
        continue
      if "Loop time of" in line:
        break
      a = line.split()
      fdat.write(f"{a[0]} {a[1]} {a[4]}\n")
    print(f"Generated {datfile}")


read_file("nve")
read_file("nvt")
