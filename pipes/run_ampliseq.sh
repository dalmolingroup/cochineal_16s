#!/bin/bash

nextflow run nf-core/ampliseq \
    -r 2.10.0 \
    -profile docker \
    -resume \
    -with-tower \
    --single_end \
    --picrust \
    --ignore_failed_filtering \
    --input "data/ampliseq_samplesheet.tsv" \
    --metadata "data/ampliseq_metadata.tsv" \
    --FW_primer CCTACGGGNGGCWGCAG \
    --RV_primer GACTACHVGGGTATCTAATCC \
    --outdir "data/ampliseq_results"
