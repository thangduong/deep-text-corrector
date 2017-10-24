#!/bin/bash
export CUDA_VISIBLE_DEVICES=""
python3 preprocessors/preprocess_movie_dialogs.py --raw_data ../data/wiki2017CleanChainLifetime.enu.snt \
                                                 --out_file ../data/wiki2017CleanChainLifetime.enu.txt
python3 preprocessors/preprocess_movie_dialogs.py --raw_data ../data/wiki2017CleanChainLifetime.enz.snt \
                                                 --out_file ../data/wiki2017CleanChainLifetime.enz.txt
python3 preprocessors/preprocess_movie_dialogs.py --raw_data ../data/clc10k.txt \
                                                 --out_file ../data/processed_clc10k.txt
python3 splitfile.py --infile ../data/wiki2017CleanChainLifetime.enu.txt
python3 splitfile.py --infile ../data/wiki2017CleanChainLifetime.enz.txt
