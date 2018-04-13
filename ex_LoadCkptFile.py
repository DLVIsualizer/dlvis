import tensorflow as tf
from tensorflow.examples.tutorials.mnist import input_data

mnist = input_data.read_data_sets("./mnist/data/", one_hot=True)


#  Load model from stack overflow
# https://stackoverflow.com/questions/42894104/used-pretraing-model-in-tensorflow-ckpt-file?rq=1
model_name = "inception_v4"
checkpoint_folder= "SlimModels/inception_v4_2016_09_09.tar/"
checkpoint_path = "SlimModels/inception_v4_2016_09_09.tar/inception_v4.ckpt"


ret = tf.train.NewCheckpointReader(checkpoint_path)
a = ret.get_variable_to_shape_map()
b = [op for op in a.keys()]
c = []
for op in b:
    c += [ret.get_tensor(op)]

f =open(checkpoint_folder+model_name, mode="w")
listb = list(b)
listb.sort()
out = "\n".join(listb)
f.writelines(out)

print("")





