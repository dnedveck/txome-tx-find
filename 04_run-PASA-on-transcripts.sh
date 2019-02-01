
# check out PASA
# https://github.com/PASApipeline/PASApipeline/wiki/PASA_alignment_assembly

~/miniconda3/opt/pasa-2.3.3/Launch_PASA_pipeline.pl \
           -c alignAssembly.config -C -R -g genome_sample.fasta \
           -t all_transcripts.fasta.clean \
           -T -u blast-results/named-results.fa \
           --ALIGNERS blat,gmap --CPU 2
