Using the CLI, it's possible to view all of the running container instances using 
<code>az container list</code>

A preferred output might be to use the table, 

<code>az container list -o table</code>

The CLI gives you access to various runtime aspects of the container, such as the logs, allowing you to understand the execution of the workload.

<code>az container logs \
  -g $resource \
  --name nginx</code>

Use curl to access the IP address and see the results of the container.
