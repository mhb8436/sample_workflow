rule count:
	input:
		COUNT_INPUT_FILES
	output:
		expand("temp/wc_{filename}.txt",filename=FILENAMES)
	group: "one"
	shell:
		"wc -w {input} > {output}"

