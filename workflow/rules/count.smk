rule count:
	input:
		COUNT_INPUT_FILES
	output:
		COUNT_OUTPUT_FILE
	group: "one"
	shell:
		"wc -w {input} > {output}"

