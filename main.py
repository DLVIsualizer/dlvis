from flask import Flask
import dlv

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello'

if __name__ == '__main__':
    # app.run()
    graph = dlv.graph.Graph()
    print(graph)
