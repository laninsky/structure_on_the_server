#PBS -N job_name
#PBS -l nodes=1:ppn=1:avx,mem=5000m,walltime=96:00:00
#PBS -M your_email_address
#PBS -t 0-19
#PBS -r n
#PBS -m n
#PBS -j oe
#PBS -o /dev/null
#PBS -d /scratch/pathway_to_your_data_and_params_files

structure -m your_param_file -k nok -o nok_${PBS_ARRAYID} > ${PBS_O_WORKDIR}/$PBS_JOBNAME.log
