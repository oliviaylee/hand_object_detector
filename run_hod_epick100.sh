#!/bin/bash
#SBATCH --account=iris
#SBATCH --partition=iris-hi # Run on IRIS nodes
#SBATCH --time=120:00:00 # Max job length is 5 days
#SBATCH --nodes=1 # Only use one node (machine)
#SBATCH --cpus-per-task=4 # Request 8 CPUs for this task
#SBATCH --mem=64G # Request 8GB of memory
#SBATCH --gres=gpu:1 # Request one GPU
#SBATCH --job-name="f1-6" # Name the job
#SBATCH --output=clusteroutput%j.out
#SBATCH --exclude=iris[2,5-7],iris-hp-z8
##SBATCH --mail-user=oliviayl@stanford.edu
##SBATCH --mail-type=ALL

echo $SLURMD_NODENAME
cd /iris/u/oliviayl/repos/affordance-learning/hand_object_detector
source activate handobj
dirname="/iris/u/oliviayl/repos/affordance-learning/epic_kitchens/DATASETS/EPIC-KITCHENS-100"
SECONDS=0

# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder1" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f1_epick100.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder2" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f2_epick100.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder3" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f3_epick100.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder4" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f4_epick100.json' &

# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder5" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f5_epick100.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder6" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f6_epick100.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder7" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f7_epick100.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder8" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f8_epick100.json' &

# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder9" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f9_epick100.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder10" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f10_epick100.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder11" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f11_epick100.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder12" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f12_epick100.json' &

CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder13" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f13_epick100.json' &
CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder14" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f14_epick100.json' &
CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder15" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f15_epick100.json' &
CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder16" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f16_epick100.json' &

wait
echo "Completed in $((SECONDS/60)) minutes and $((SECONDS%60)) seconds"