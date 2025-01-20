#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks=104
#SBATCH --mem=0
#SBATCH --account=ssc
#SBATCH --time=06:00:00
#SBATCH --partition=bigmem
#SBATCH --partition=standard
#SBATCH --output=data_processor_scratch.out
#SBATCH --tmp=1T

module purge
module load mamba
mamba activate wind_forecasting
echo $SLURM_NTASKS
export RUST_BACKTRACE=full

#export MPICH_SHARED_MEM_COLL_OPT=mpi_bcast,mpi_barrier 
#export MPICH_COLL_OPT_OFF=mpi_allreduce 
#export LD_LIBRARy_PATH=$CONDA_PREFIX/lib

# cd $LARGE_STORAGE/ahenry/wind_forecasting_env/wind-forecasting/wind_forecasting/preprocessing
# conda activate wind_forecasting_preprocessing
# python preprocessing_main.py --config /srv/data/nfs/ahenry/wind_forecasting_env/wind-forecasting/examples/inputs/preprocessing_inputs_server_awaken_new.yaml --reload_data --multiprocessor cf 

python preprocessing_main.py --config /$HOME/toolboxes/wind_forecasting_env/wind-forecasting/examples/inputs/preprocessing_inputs_kestrel_awaken_new.yaml --multiprocessor cf --preprocess_data

