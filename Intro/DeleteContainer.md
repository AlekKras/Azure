Once you've finished with the container, it's possible to delete it using the CLI.

<code>az container delete \
--resource-group $resource \
--name nginx </code>
Viewing the container list will show that the container has been stopped and removed.

<code>az container list -o table</code>
