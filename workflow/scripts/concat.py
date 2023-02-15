import re
import pandas as pd

PTRN = re.compile(r'\s*(\d+)\s[^\s]+([^\s\/]+.txt)')

with open(snakemake.output[0], 'wt') as f:
	f.write('fname, count\n')
	for fn in snakemake.input:
		line = open(fn, 'rt').read()
		cnt, fn = PTRN.search(line).groups()
		f.write('{}, {}\n'.format(fn,cnt))
