#!/bin/bash
source ../env/bin/activate
mkdir ../wiki_model_test
rm -rvf ../wiki_model_test/*
cp -rvf ../wiki_model/* ../wiki_model_test/
export CUDA_VISIBLE_DEVICES=""
python3 correct_text.py --test_path ../data/preprocessed_movie_lines_test.txt \
    --train_path ../data/ \
    --config DefaultWikiConfig --data_reader_type WikiDataReader \
    --model_path ../wiki_model_test \
    --test_string "its raining men" \
    --task decode

#    --test_string "the quick brown fox jumped over the laxy dog" \

