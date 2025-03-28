
# Demo script to run benchmark numbering runs.
# ANARCI can be run to generate multiple sequence alignments in csv format according to a chosen numbering scheme.
# Parallel processing is enabled by the --ncpu option.

OUTDIR='/tmp'
NCPU=4

# Expect < 5 minutes per run with 4 processes on a desktop. ~10,000 sequences all of which are numbered.
time ANARCI -i pdb_sequences.fa.txt.gz -s i -r ig --csv -o $OUTDIR/pdb_imgt --ncpu $NCPU --assign_germline
time ANARCI -i pdb_sequences.fa.txt.gz -s k -r ig --csv -o $OUTDIR/pdb_kabat --ncpu $NCPU --assign_germline
time ANARCI -i pdb_sequences.fa.txt.gz -s c -r ig --csv -o $OUTDIR/pdb_chothia --ncpu $NCPU --assign_germline
time ANARCI -i pdb_sequences.fa.txt.gz -s m -r ig --csv -o $OUTDIR/pdb_martin --ncpu $NCPU --assign_germline
time ANARCI -i pdb_sequences.fa.txt.gz -s a -r ig --csv -o $OUTDIR/pdb_aho --ncpu $NCPU --assign_germline
time ANARCI -i pdb_sequences.fa.txt.gz -s w -r ig --csv -o $OUTDIR/pdb_wolfguy --ncpu $NCPU --assign_germline
