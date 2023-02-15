rule concat:
	input:
		expand("temp/wc_{filename}.txt",filename=FILENAMES)
	output:
		CONCAT_FILE
	conda:
		f'{ENVS_DIR}/concat.yaml'
	group: "one"
	script:
		CONCAT_SCRIPT