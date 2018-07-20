import sys

# takes in 2 arguments, infile and outfile. Removes all content inside xml tags from infile

infile, outfile = sys.argv[1], sys.argv[2]

with open(infile) as f:
	str=""
	add=False
	for line in f:
		for c in line:
			if c == "<":
				add = True
			if add:
				str+=c
			if c == ">":
				add = False
with open(outfile, "w") as o:
	o.write(str)
	o.close()