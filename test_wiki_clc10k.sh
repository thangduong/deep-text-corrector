#!/bin/bash
#mkdir ../wiki_model_test
#rm -rvf ../wiki_model_test/*
#cp -rvf ../wiki_model/* ../wiki_model_test/
source ../env/bin/activate
export CUDA_VISIBLE_DEVICES=""
python3 correct_text.py --test_path ../data/preprocessed_clc10k.txt \
    --train_path ../data/ \
    --config DefaultWikiConfig --data_reader_type WikiDataReader \
    --model_path ../wiki_model_test \
    --task decode | tee output.txt
