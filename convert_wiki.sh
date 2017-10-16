#!/bin/bash
# convert wiki data for training
python3 preprocessors/preprocess_movie_dialogs.py --raw_data ../data/wiki2017CleanChainLifetime.enu.snt --out_file ../data/wiki2017CleanChainLifetime.enu.txt
python3 preprocessors/preprocess_movie_dialogs.py --raw_data ../data/wiki2017CleanChainLifetime.enz.snt --out_file ../data/wiki2017CleanChainLifetime.enz.txt
