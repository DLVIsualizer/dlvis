import tensorflow as tf
import copy

class LoadModel:
    def loadSessFromPb(filepath:str):
        """
        Loads graph from pb file as sess type

        :param filepath: load filepath
        :return:  Session Copy of that pbgraph
        """
        with tf.gfile.FastGFile(filepath, 'rb') as fp:
            graph_def = tf.GraphDef()
            graph_def.ParseFromString(fp.read())
            tf.import_graph_def(graph_def, name='')

        with tf.Session() as sess:
            graph = sess.graph
            print()

        return copy.copy(sess)


    def loadTensorDictFromCkpt(filepath:str):
        """

        :param filepath: load filepath
        :return:  dictionary of Tensors
        """
        #  Load model from stack overflow
        # https://stackoverflow.com/questions/42894104/used-pretraing-model-in-tensorflow-ckpt-file?rq=1
        ret = tf.train.NewCheckpointReader(filepath)
        a = ret.get_variable_to_shape_map()
        b = [op for op in a.keys()]
        c = []
        dict ={}
        for op in b:
            dict[op] = ret.get_tensor(op)

        return copy.deepcopy(dict)


    def loadSessFromSavedModel(filepath:str):
        pass
