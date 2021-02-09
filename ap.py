from flask import Flask, request
from flask_restful import Resource, Api
from sqlalchemy import create_engine
from json import dumps



e = create_engine('sqlite:///todosqli.db')

app = Flask(__name__)
api = Api(app)



class Task(Resource):
    def get(self):
        conn = e.connect()
        query = conn.execute("select * from Task")
        #Query the result and get cursor.Dumping that data to a JSON is looked by extension
        result = {'data': [dict(zip(tuple (query.keys()) ,i)) for i in query.cursor.fetchall()]}
        return result

class Task_by_ID(Resource):
    def get(self,task_id):
        conn = e.connect()
        query = conn.execute("select * from Task where TaskID='%s'"%task_id.upper())
        #Query the result and get cursor.Dumping that data to a JSON is looked by extension
        result = {'data': [dict(zip(tuple (query.keys()) ,i)) for i in query.cursor]}
        return result
 
api.add_resource(Task, '/task')
api.add_resource(Task_by_ID, '/task/<string:task_id>')

if __name__ == '__main__':
     app.run()