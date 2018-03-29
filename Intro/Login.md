Once the credentials have been created, they will be assigned to environment variables making it easier for you to use the Azure CLI.

Use the credentials to login to the Azure CLI. From the CLI you can create and manage your Azure resources.

<code>az login -u $username -p $password </code>

You're now ready to start deploying containers.

Note: The credentials will automatically expire after 1 hour and remove any resources you have created.
