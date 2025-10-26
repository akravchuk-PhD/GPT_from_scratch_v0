#!/bin/bash
#SBATCH --mem-per-cpu=16G
#SBATCH --time=3-0
#SBATCH --mail-user=alexandra.kravchuk@mail.mcgill.ca
#SBATCH --mail-type=ALL
module load python/3.13.2 # Make sure to choose a version that suits your application
virtualenv --no-download $SLURM_TMPDIR/env
source $SLURM_TMPDIR/env/bin/activate
pip install torch --no-index

python bigram.py


