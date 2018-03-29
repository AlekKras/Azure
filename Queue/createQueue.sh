# 1) May want to change some of that
$context = New-AzureStorageContext -StorageAccountName tutorialspoint StorageAccountKey 
iUZNeeJD+ChFHt9XHL6D5rkKFWjzyW4FhV0iLyvweDi+Xtzfy76juPzJ+mWtDmbqCWjsu/nr+1pqBJj rdOO2+A==

# 2) Specify the storage account
Set-AzureSubscription –SubscriptionName "CheckTest" -CurrentStorageAccount alekkras

# 3) Create a queue
$QueueName = "thisisaqueue" && $Queue = New-AzureStorageQueue –Name $QueueName -Context $Ctx 
