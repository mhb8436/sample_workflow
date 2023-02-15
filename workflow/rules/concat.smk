rule concat:
	input:
		local(CONCAT_INPUT_FILES)
	output:
		local(CONCAT_OUTPUT_FILE)
	conda:
		f'{ENVS_DIR}/concat.yaml'
	group: "one"
	script:
		CONCAT_SCRIPT