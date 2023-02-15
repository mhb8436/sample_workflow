# Snakemake Shell Command
```bash
snakemake --cores all --jobs 8 --default-resources mem_mb=None disk_mb=None --rerun-incomplete --config data_dir=rnaseq_data/data outputs_dir=rnaseq_data/outputs/test resources_dir=rna_resources --envvars AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY GITHUB_TOKEN --rerun-incomplete --kubernetes --default-remote-provider S3 --default-remote-prefix mindera-mlops-prod-bucket --container-image 779792627677.dkr.ecr.us-west-2.amazonaws.com/mindera-mlops-prod-snakemake:0.4 --use-conda --use-singularity
```
