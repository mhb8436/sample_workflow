rule count:
	input:
		COUNT_INPUT_FILES
	output:
		COUNT_FILE
	group: "sample"
	shell:
		"wc -w {input} > {output}"

