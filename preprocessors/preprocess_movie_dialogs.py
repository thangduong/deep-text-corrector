"""Preprocesses Cornell Movie Dialog data."""
import nltk
import tensorflow as tf

tf.app.flags.DEFINE_string("raw_data", "", "Raw data path")
tf.app.flags.DEFINE_string("out_file", "", "File to write preprocessed data "
                                           "to.")

FLAGS = tf.app.flags.FLAGS


def main(_):
    with open(FLAGS.raw_data, "r", encoding='utf-8', errors='ignore') as raw_data, \
            open(FLAGS.out_file, "w") as out:
        for line in raw_data:
            line = line.strip().rstrip().lstrip()
            parts = line.split(" +++$+++ ")
            dialog_line = parts[-1]
            s = dialog_line.strip().lower() #.decode("utf-8", "ignore")
            preprocessed_line = " ".join(nltk.word_tokenize(s))
            if len(preprocessed_line) == 0 or preprocessed_line=="\x00":
                continue
            out.write(preprocessed_line + "\n")

if __name__ == "__main__":
    tf.app.run()
