rule count:
	input:
		COUNT_INPUT_FILES
	output:
		local(COUNT_FILE)
	group: "one"
	shell:
		"wc -w {input} > {output}"

