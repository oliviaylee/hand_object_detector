#!/bin/bash

# # EPICK 2018
# cd /iris/u/oliviayl/repos/affordance-learning/epic_kitchens/DATASETS/EPIC-KITCHENS-2018/frames_rgb_flow/rgb # /iris/u/oliviayl/repos/affordance-learning/epic_kitchens/VISOR-FrameExtraction/results/P28_101/
# dir_size=$(ls -d */*/*/ | wc -l)
# echo "$dir_size"
# dir_name="folder"
# num_subdirs=23
# subdir_size=$(expr $dir_size / $num_subdirs)
# n=$((`ls -d */*/*/ | wc -l`/$subdir_size + 1)) # find . -mindepth 3 -maxdepth 3 -type d
# echo "$n"
# for i in `seq 1 $n`;
# do
#     mkdir -p "$dir_name$i";
#     ls -d */*/*/ | head -n $subdir_size | xargs -i mv "{}" "$dir_name$i"
#     echo "$i"
# done

# # EPICK 100
# cd /iris/u/oliviayl/repos/affordance-learning/epic_kitchens/DATASETS/EPIC-KITCHENS-100
# dir_size=$(ls -d */rgb_frames/*/ | wc -l)
# echo "$dir_size"
# dir_name="folder"
# num_subdirs=12
# subdir_size=$(expr $dir_size / $num_subdirs)
# echo "$subdir_size"
# # n=$((`find . -mindepth 3 -maxdepth 3 -type d -path "*/rgb_frames/*" | wc -l`/$subdir_size + 1))
# n=$((`ls -d */rgb_frames/*/ | wc -l`/$subdir_size + 1))
# echo "$n"
# idx=$((n+4))
# echo "$idx"
# for i in `seq 4 $idx`;
# do
#     mkdir -p "$dir_name$i";
#     ls -d */rgb_frames/*/ | head -n $subdir_size | xargs -i mv "{}" "$dir_name$i"
#     echo "$i"
# done

# # TEST: P28_101
# cd /iris/u/oliviayl/repos/affordance-learning/epic_kitchens/VISOR-FrameExtraction/results/P28_101/
# dir_size=$(ls -f | wc -l)
# echo "$dir_size"
# dir_name="folder"
# num_subdirs=12
# subdir_size=$(expr $dir_size / $num_subdirs)
# n=$((`ls -f | wc -l`/$subdir_size + 1)) # find . -maxdepth 1 -type f
# echo "$n"
# for i in `seq 1 $n`;
# do
#     mkdir -p "$dir_name$i";
#     ls -f | head -n $subdir_size | xargs -i mv "{}" "$dir_name$i"
#     echo "$i"
# done