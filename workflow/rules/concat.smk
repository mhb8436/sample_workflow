rule concat:
	input:
		local(COUNT_FILE)
	output:
		CONCAT_FILE
	conda:
		f'{ENVS_DIR}/concat.yaml'
	group: "one"
	script:
		CONCAT_SCRIPT