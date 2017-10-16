""" split data for training """
import tensorflow as tf

tf.app.flags.DEFINE_string("infile", "", "Raw data path")
FLAGS = tf.app.flags.FLAGS


def addsuffix(str,suffix):
    pieces = str.split('.')
    pieces[-2] += suffix
    return '.'.join(pieces)


def main(_):
    with open(FLAGS.infile, "r", encoding='utf-8', errors='ignore') as infile:
         lines = list(infile)
         count = len(lines)
         train = []
         val = []
         test = []
         valmark = int(.8*count)
         testmark = int(.9*count)
         for i, line in enumerate(lines):
             line = line.rstrip().lstrip()
             if i < valmark:
                 train.append(line)
             elif i < testmark:
                 val.append(line)
             else:
                 test.append(line)
         with open(addsuffix(FLAGS.infile,'_train'), 'w') as f:
             for line in train:
                 f.write('%s\n' % line)
         with open(addsuffix(FLAGS.infile,'_val'), 'w') as f:
             for line in val:
                 f.write('%s\n' % line)
         with open(addsuffix(FLAGS.infile,'_test'), 'w') as f:
             for line in test:
                 f.write('%s\n' % line)

if __name__ == "__main__":
    tf.app.run()









