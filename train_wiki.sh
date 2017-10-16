mkdir ../wiki_model
python correct_text.py --train_path ../data/ \
                       --val_path ../data/ \
                       --config DefaultWikiConfig \
                       --data_reader_type WikiDataReader \
                       --model_path ../wiki_model
