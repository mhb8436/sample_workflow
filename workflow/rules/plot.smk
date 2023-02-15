rule plot:
	input:
		CONCAT_FILE
	output:
		PLOT_OUTPUT_FILE
	conda:
		f'{ENVS_DIR}/plot.yaml'
	group: "one"
	script:
		PLOT_SCRIPT
