#!/bin/bash
#python correct_text.py --test_path ../data/preprocessed_movie_lines_test.txt --train_path ../data/preprocessed_movie_lines_train.txt --config DefaultMovieDialogConfig --data_reader_type MovieDialogReader --model_path ../movie_dialog_model --decode
python correct_text.py --test_path ../data/preprocessed_movie_lines_test.txt --train_path ../data/preprocessed_movie_lines_train.txt --config DefaultMovieDialogConfig --data_reader_type MovieDialogReader --model_path ../movie_dialog_model --test_string "the quick brown fox jumped over the laxy dog" --decode
