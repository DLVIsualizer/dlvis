class Graph:
    def __init__(self, modelGraph):
        self.modelGraph = modelGraph
        self.actLayer = {}
        self.setActLayer()

    def setActLayer(self):
        self.actLayer = {op for op in self.modelGraph.get_operations() if op.name.endswith('Relu')}
        print(self.actLayer)


