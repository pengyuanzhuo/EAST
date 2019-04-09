#!/bin/bash
nohup python3 -u multigpu_train.py --gpu_list=0,1,2,3 \
                                   --input_size=512 \
                                   --batch_size_per_gpu=14 \
                                   --checkpoint_path=/workspace/mnt/group/alg-pro/pengyuanzhuo/checkpoint/east_ads_resnet_v1_50/ \
                                   --text_scale=480 \
                                   --training_data_path=/workspace/mnt/group/alg-pro/pengyuanzhuo/dataset/ocr/ads/all/ \
                                   --geometry=RBOX \
                                   --learning_rate=0.0001 \
                                   --num_readers=24 \
                                   --pretrained_model_path=/workspace/mnt/group/alg-pro/pengyuanzhuo/models/tf/resnet_v1_50.ckpt > /workspace/mnt/group/alg-pro/logs/training-ads.txt &
