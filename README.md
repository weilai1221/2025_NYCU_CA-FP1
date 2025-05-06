# 2025\_NYCU\_CA-FP1

This repository contains the course materials for the CA-FP1 course at National Yang Ming Chiao Tung University (NYCU). The course focuses on the design and implementation of a genomic sequence alignment algorithm, evaluated and profiled using the gem5 simulator.

> **Note:** The `gem5` directory is a submodule linking to the official [gem5 repository](https://github.com/gem5/gem5). We recommend using the TA-provided Docker image to avoid lengthy environment setup and ensure consistency.

## Getting Started

1. **Run with Docker**
   If you have already pulled the TA’s image, list containers then attach via `docker exec`:

   ```bash
   sudo docker ps -a
   docker exec -it <container_id> bash
   ```

   > **TIP:** Inside the container, install and configure an SSH server, forward the container’s SSH port, and use MobaXterm to connect for an interactive session.

2. **Run evaluation scripts**
   Execute all experiments and generate results:

   ```bash
   cd CA-FP1/evaluation
   ./00_run_all.sh
   ```



## Documentation

See the `doc/` directory for:

* **CA-FP1.pdf**: Course assignment specification
* **Instructions\_to\_reduce\_Gem5\_simulation\_runtime.pdf**: Tips to speed up gem5 simulations

## Full Repository Structure

```
2025_NYCU_CA-FP1/
├── gem5 @ b9da2bf
├── CA-FP1
│   ├── baseline
│   │   ├── Makefile
│   │   ├── index_and_quantify
│   │   ├── index_and_quantify.cpp
│   │   └── sequence_util.h
│   ├── data
│   │   ├── Saccharomyces_cerevisiae.R64-1-1.cdna.all.fa
│   │   ├── queries.1M.fa.tar.gz
│   │   ├── queries.slides_example.fa
│   │   └── transcripts.slides_example.fa
│   ├── data_generator
│   │   ├── Makefile
│   │   ├── generate_fasta
│   │   └── generate_fasta.cpp
│   └── evaluation
│       ├── 00_run_all.sh
│       ├── 01_make_and_run_distribute.sh
│       ├── 02_change_transcripts_and_query_length.sh
│       ├── 03_make_and_run_index.sh
│       ├── 04_make_and_run_qantify.sh
│       ├── 1-1_make_distribute.log
│       ├── 1-2_run_distribute.log
│       ├── 3-1_make_index.log
│       ├── 3-2_run_index.log
│       ├── 4-1_make_quantify.log
│       ├── 4-2_run_quantify.log
│       ├── Makefile
│       ├── distribute
│       ├── distribute.cpp
│       ├── gem5_utils.h
│       ├── hash-map.h
│       ├── index.c
│       ├── index.o
│       ├── index_result
│       │   ├── hash-map.txt
│       │   └── m5out
│       │       ├── config.dot
│       │       ├── config.dot.pdf
│       │       ├── config.dot.svg
│       │       ├── config.ini
│       │       ├── config.json
│       │       ├── fs
│       │       │   ├── proc
│       │       │   │   ├── cpuinfo
│       │       │   │   └── stat
│       │       │   ├── sys
│       │       │   │   └── devices
│       │       │   │       └── system
│       │       │   │           └── cpu
│       │       │   │               ├── online
│       │       │   │               └── possible
│       │       │   └── tmp
│       │       └── stats.txt
│       ├── quantify.c
│       ├── quantify.o
│       ├── quantify_result
│       │   ├── final_result.txt
│       │   └── m5out
│       │       ├── config.dot
│       │       ├── config.dot.pdf
│       │       ├── config.dot.svg
│       │       ├── config.ini
│       │       ├── config.json
│       │       ├── fs
│       │       │   ├── proc
│       │       │   │   ├── cpuinfo
│       │       │   │   └── stat
│       │       │   ├── sys
│       │       │   │   └── devices
│       │       │   │       └── system
│       │       │   │           └── cpu
│       │       │   │               ├── online
│       │       │   │               └── possible
│       │       │   └── tmp
│       │       └── stats.txt
│       ├── query_data.h
│       ├── sequence_util.h
│       └── transcripts_data.h
├── README.md
└── doc
    ├── CA-FP1.pdf
    └── Instructions_to_reduce_Gem5_simulation_runtime.pdf

25 directories, 59 files
```

## License

This course material is provided for educational purposes only. Original course materials provided by [NYCU PCS Lab](https://sites.google.com/nycu.edu.tw/pcs-lab/)

