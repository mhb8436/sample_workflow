rule concat:
	input:
		COUNT_FILE
	output:
		CONCAT_FILE
	conda:
		f'{ENVS_DIR}/concat.yaml'
	group: "sample"
	script:
		CONCAT_SCRIPT