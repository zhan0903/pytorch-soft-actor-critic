#!/bin/bash

# Script to reproduce results

for ((i=0;i<1;i+=1))
do 
	python main.py \
	--env-name "HumanoidBulletEnv-v0" \
	--seed $i \
	--start_steps 10000

	python main.py \
	--env-name "AntBulletEnv-v0" \
	--seed $i \
	--start_steps 10000

	python main.py \
	--env-name "HopperBulletEnv-v0" \
	--seed $i \
	--start_steps 1000

	python main.py \
	--env-name "Walker2DBulletEnv-v0" \
	--seed $i \
	--start_steps 1000
done
