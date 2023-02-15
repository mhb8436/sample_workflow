rule plot:
	input:
		local(CONCAT_FILE)
	output:
		PLOT_FILE
	conda:
		f'{ENVS_DIR}/plot.yaml'
	group: "sample"
	script:
		PLOT_SCRIPT
