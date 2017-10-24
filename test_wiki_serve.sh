#!/bin/bash
#python correct_text.py --test_path ../data/preprocessed_movie_lines_test.txt --train_path ../data/preprocessed_movie_lines_train.txt --config DefaultMovieDialogConfig --data_reader_type MovieDialogReader --model_path ../movie_dialog_model --decode
#python correct_text.py --test_path ../data/preprocessed_movie_lines_test.txt --train_path ../data/preprocessed_movie_lines_train.txt --config DefaultMovieDialogConfig --data_reader_type MovieDialogReader --model_path ../movie_dialog_model --test_string "the quick brown fox jumped over the laxy dog" --decode
#python correct_text.py --test_path ../data/preprocessed_movie_lines_test.txt --train_path ../data/preprocessed_movie_lines_train.txt --config DefaultMovieDialogConfig --data_reader_type MovieDialogReader --model_path ../movie_dialog_model --test_string "its raining men hallelujah" --decode
#python correct_text.py --test_path ../data/preprocessed_movie_lines_test.txt --train_path ../data/preprocessed_movie_lines_train.txt --config DefaultMovieDialogConfig --data_reader_type MovieDialogReader --model_path ../movie_dialog_model --test_string "there are more people today then yesterday" --decode
#mkdir ../wiki_model_test
#rm -rvf ../wiki_model_test/*
#cp -rvf ../wiki_model/* ../wiki_model_test/
export CUDA_VISIBLE_DEVICES=""
python3 correct_text.py --test_path ../data/preprocessed_movie_lines_test.txt \
    --train_path ../data/ \
    --config DefaultWikiConfig --data_reader_type WikiDataReader \
    --model_path ../wiki_model_test \
    --test_string "its raining men" \
    --task serve