$QueueName = "myqueue" 
$Queue = Get-AzureStorageQueue -Name $QueueName -Context $ctx 
$InvisibleTimeout = [System.TimeSpan]::FromSeconds(10)
$QueueMessage = $Queue.CloudQueue.GetMessage($InvisibleTimeout)
$Queue.CloudQueue.DeleteMessage($QueueMessage)
