# Snakemake 워크플로우 프로젝트

이 프로젝트는 Snakemake를 사용하여 데이터 처리 파이프라인을 구현한 예제입니다.

## 프로젝트 구조
```
.
├── config/         # 설정 파일 디렉토리
├── workflow/       # 워크플로우 관련 파일
│   ├── scripts/   # 실행 스크립트
│   ├── envs/      # 환경 설정 파일
│   ├── rules/     # Snakemake 규칙 파일
│   └── Snakefile  # 메인 워크플로우 파일
└── README.md
```

## 워크플로우 설명
이 워크플로우는 다음과 같은 작업을 수행합니다:
1. 입력 파일(A.txt, B.txt, C.txt)의 단어 수를 계산
2. 계산된 결과를 하나의 CSV 파일로 통합
3. 통합된 데이터를 시각화하여 그래프 생성

## 실행 방법
다음 명령어로 워크플로우를 실행할 수 있습니다:

```bash
snakemake \
    --cores all \
    --jobs 8 \
    --default-resources mem_mb=None disk_mb=None \
    --rerun-incomplete \
    --config \
        data_dir=input_folders/TestProject/workflow3/AN10001 \
        outputs_dir=output_folders/TestProject/workflow3/AN10002 \
    --envvars AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY GITHUB_TOKEN \
    --rerun-incomplete \
    --kubernetes \
    --default-remote-provider S3 \
    --default-remote-prefix mindera-mlops-prod-bucket \
    --container-image 779792627677.dkr.ecr.us-west-2.amazonaws.com/mindera-mlops-prod-snakemake:0.4 \
    --use-conda \
    --use-singularity
```

### 주요 파라미터 설명
- `--cores all`: 사용 가능한 모든 CPU 코어 사용
- `--jobs 8`: 동시에 실행할 수 있는 최대 작업 수
- `--config`: 입력 및 출력 디렉토리 설정
- `--kubernetes`: Kubernetes 클러스터에서 실행
- `--use-conda`: Conda 환경 사용
- `--use-singularity`: Singularity 컨테이너 사용

## 환경 요구사항
- Snakemake
- Python 3.x
- Conda
- Singularity
- AWS 자격 증명 (S3 접근용)
- GitHub 토큰