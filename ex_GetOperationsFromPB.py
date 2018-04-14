import tensorflow as tf
import util


sess = util.LoadModel.loadSessFromPb('z_SlimModels/vgg_16_2016_08_28.tar/vgg_16_inf_graph.pb')
operations = [op.name for op in sess.graph.get_operations()]
util.FileUtil.saveStrListTofile(operations, 'z_SlimModels/vgg_16_2016_08_28.tar/vgg_16_operations.txt')
print()