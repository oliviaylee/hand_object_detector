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
dirname="/iris/u/oliviayl/repos/affordance-learning/epic_kitchens/DATASETS/EPIC-KITCHENS-2018/frames_rgb_flow/rgb"
SECONDS=0
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder1" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f1.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder2" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f2.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder3" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f3.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder4" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f4.json' &

# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder5" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f5.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder6" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f6.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder7" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f7.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder8" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f8.json' &

# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder9" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f9.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder10" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f10.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder11" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f11.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder12" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f12.json' &

# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder13" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f13.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder14" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f14.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder15" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f15.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder16" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f16.json' &

# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder17" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f17.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder18" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f18.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder19" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f19.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder20" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f20.json' &

# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder21" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f21.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder22" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f22.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder23" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f23.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir="${dirname}/folder24" --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes_f24.json' &

wait
echo "Completed in $((SECONDS/60)) minutes and $((SECONDS%60)) seconds"

# TEST: P28_101
# echo $SLURMD_NODENAME
# cd /iris/u/oliviayl/repos/affordance-learning/hand_object_detector
# source activate handobj
# dirname="/iris/u/oliviayl/repos/affordance-learning/epic_kitchens/DATASETS/EPIC-KITCHENS-2018/frames_rgb_flow/rgb"
# SECONDS=0
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir=/iris/u/oliviayl/repos/affordance-learning/epic_kitchens/VISOR-FrameExtraction/results/P28_101/ --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir=/iris/u/oliviayl/repos/affordance-learning/epic_kitchens/VISOR-FrameExtraction/results/P28_101/folder1 --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes1.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir=/iris/u/oliviayl/repos/affordance-learning/epic_kitchens/VISOR-FrameExtraction/results/P28_101/folder2 --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes2.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir=/iris/u/oliviayl/repos/affordance-learning/epic_kitchens/VISOR-FrameExtraction/results/P28_101/folder3 --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes3.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir=/iris/u/oliviayl/repos/affordance-learning/epic_kitchens/VISOR-FrameExtraction/results/P28_101/folder4 --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes4.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir=/iris/u/oliviayl/repos/affordance-learning/epic_kitchens/VISOR-FrameExtraction/results/P28_101/folder5 --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes5.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir=/iris/u/oliviayl/repos/affordance-learning/epic_kitchens/VISOR-FrameExtraction/results/P28_101/folder6 --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes6.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir=/iris/u/oliviayl/repos/affordance-learning/epic_kitchens/VISOR-FrameExtraction/results/P28_101/folder7 --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes7.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir=/iris/u/oliviayl/repos/affordance-learning/epic_kitchens/VISOR-FrameExtraction/results/P28_101/folder8 --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes8.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir=/iris/u/oliviayl/repos/affordance-learning/epic_kitchens/VISOR-FrameExtraction/results/P28_101/folder9 --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes9.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir=/iris/u/oliviayl/repos/affordance-learning/epic_kitchens/VISOR-FrameExtraction/results/P28_101/folder10 --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes10.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir=/iris/u/oliviayl/repos/affordance-learning/epic_kitchens/VISOR-FrameExtraction/results/P28_101/folder11 --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes11.json' &
# CUDA_VISIBLE_DEVICES=0 python demo.py --cuda --image_dir=/iris/u/oliviayl/repos/affordance-learning/epic_kitchens/VISOR-FrameExtraction/results/P28_101/folder12 --checkepoch=8 --checkpoint=132028 --vis=False --json_filename='hand_bboxes12.json' &
# wait
# echo "Completed in $((SECONDS/60)) minutes and $((SECONDS%60)) seconds"


# echo "done"
# vid_name=$(basename $dir_name)
# echo "$dir_name"
# echo "$vid_name"
# cd /iris/u/oliviayl/repos/affordance-learning/hand_object_detector
# sh split_files.sh $dir_name
# mkdir -p "results/$vid_name"

# python3 json_combine.py --vid_name=$vid_name
# mv ${vid_name}_hand_bboxes.json /iris/u/oliviayl/repos/affordance-learning/epic_kitchens/frame_data/${vid_name}_hand_bboxes.json
# rm -r "results/$vid_name" #hand_bboxes*.json
# sh merge_files.sh $dir_name