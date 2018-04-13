import dlv
import tensorflow as tf

class Graph:
    def __init__(self, tfGraph: tf.Graph):
        self.tfGraph = tfGraph
        self.variables = []
        self.setVariables()
        self.layers = []
        self.setLayers()
        self.actLayers = []
        self.setActLayers()

    def setLayers(self):
        tfLayer = []

    def setActLayers(self):
        tfActLayer = []

        # Get All Activaion layers
        for op in self.tfGraph.get_operations():
          if(op._op_def.output_arg):
              if(op._op_def.output_arg[0].name == "activations"):
                  tfActLayer += [op]

        # Set All Activation Layers
        self.actLayers = [dlv.Layer(tflayer) for tflayer in tfActLayer]
        print("")

    def setVariables(self):
        self.variables = self.tfGraph.get_collection('trainable_variables')


