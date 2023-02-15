rule plot:
	input:
		local(PLOT_INPUT_FILES)
	output:
		PLOT_OUTPUT_FILE
	conda:
		f'{ENVS_DIR}/plot.yaml'
	group: "one"
	script:
		PLOT_SCRIPT
