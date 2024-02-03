<h3 align="center">TICK Stack Implementation</h3>
<p align="center">
This project is a demonstration of TICK stack, which is a collection of technologies combined to store, visualize, monitor time series data.
</p>

### Getting Started
To get started, clone this project and navigate into the TICK-STACK folder.
Install the prerequisites and then follow the steps to set up TICK stack using docker swarm.

### Prerequisites
To get started, you need to install docker and docker swarm.

### Setup
1. ```docker swarm init```
2. ```docker stack deploy tick -c tick.yaml```
3. ```docker service ls``` <br />
  Once all the services and replicas are up and running, then populate the data by running the script.
  ```./enrich-data.sh```

  Now you should see logs similar to 

_http://localhost:8186/write temp value=24.98 1638575074000000000_ 
<br />
_HTTP/1.1 204 No Content_
<br />
_Date: Tue, 01 Mar 2022 06:02:19 GMT_
<br />

  This means that the data is posted to telegraph service. Now open the browser and go to the url http://localhost:8888/ <br />
  In the explore section, you can type the below query to verify the data,<br />
  ```select "value" from "test"."autogen"."temp"``` <br />
  You should be able to see the time series data which will in the form of a sine wave.
