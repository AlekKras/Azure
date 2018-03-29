# 1) Set directory

$localTargetDirectory = "C:\Users\NotYou\Downloads"

# you may want to change the path

# 2) Download it

$BlobName = "Montiorlog.png" Get-AzureStorageBlobContent -Blob $BlobName
Container $ContainerName -Destination $localTargetDirectory -Context $ctx


