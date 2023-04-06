#!/bin/bash

for i in {1..17}
do
	padded_number=$(printf "%02d" $i)
	python demo.py \
        	--config config/vox-512.yaml \
	        --driving_video "./assets/videos/doc-squares/Doc Lipsync Square ${i}.mp4" \
        	--source_image ./assets/images/512-1/docrealisticavatar.png \
	        --result_video "./results/512-1.1/doc_real-doc-lip-0-512-${padded_number}.mp4" \
	        --checkpoint checkpoints/vox-512.pth.tar \
	        --relative \
	        --adapt_scale \
	        --find_best_frame \
	        --audio
done

