
import tensorflow as tf

class Layer:
    def __init__(self, tfOperations:tf.Operation, tfVariables:tf.Variable):
        """

        :param tfOperations:
        """
        self.tfLayer = tfOperations
        self.units = []


    def setVariable(self):
        # TODO
        pass
