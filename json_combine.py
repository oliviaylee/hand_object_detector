import os
import json
import argparse

# parser = argparse.ArgumentParser(description='Combine hand bbox jsons')
# parser.add_argument('--vid_name', dest='vid_name',
#                     help='video name e.g. P01_01',
#                     type=str)
# args = parser.parse_args()

json_data_dir = "/iris/u/oliviayl/repos/affordance-learning/hand_object_detector/json_data"
read_files = [f for f in os.listdir(json_data_dir) if os.path.isfile(os.path.join(json_data_dir, f))]
print(read_files)
output_list = []

for f in read_files:
    full_f = os.path.join("/iris/u/oliviayl/repos/affordance-learning/hand_object_detector/json_data", f)
    print(full_f)
    with open(full_f, "rb") as infile:
        output_list.append(json.load(infile))

all_items = {}
for json_file in output_list:
    for key in json_file.keys():
        if key not in all_items.keys():
            all_items[key] = json_file[key]
        else:
            all_items[key].update(json_file[key])

json_path = "/iris/u/oliviayl/repos/affordance-learning/epic_kitchens/frame_data/" + "all_hod_hands.json"
with open(json_path, 'w') as fp:
      json.dump(all_items, fp)