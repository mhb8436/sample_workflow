rule concat:
	input:
		CONCAT_INPUT_FILES
	output:
		CONCAT_OUTPUT_FILE
	conda:
		f'{ENVS_DIR}/concat.yaml'
	group: "one"
	script:
		CONCAT_SCRIPT