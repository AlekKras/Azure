# 1) Go to "Windows PowerShell"
# Run ISE as Admin
$context = New-AzureStorageContext -StorageAccountName alekkras StorageAccountKey

iUZNeeJD+ChFHt9XHL6D5rkKFWjzyW4FhV0iLyvweDi+Xtzfy76juPzJ+mWtDmbqCWjsu/nr+1pqBJj rdOO2+A==

# You may want to change some of those variables

# 2) Run Subscription command

Get-AzureSubscription

# 3) Run the command to upload your blob

Set-AzureStorageBlobContent -Blob Montiorlog.png -Container images -File
"E:\MyPictures\MonitorLog.png" -Context $context -Force

# You may want to change some of that

# 4) Verify if it's uploaded successfully

Get-AzureStorageBlob -Container $ContainerName -Context $ctx | Select Name

