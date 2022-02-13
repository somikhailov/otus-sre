# diagram.py
from diagrams import Diagram, Cluster
from diagrams.onprem.container import Docker
from diagrams.programming.language import Python
from diagrams.generic.database import SQL

# from diagrams.programming.language import Python

with Diagram("app", show=False):
    with Cluster("host"):
        Docker("docker")
        with Cluster("docker image"):
            Python("flask") >> SQL("sqllite3")
