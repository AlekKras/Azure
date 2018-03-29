$QueueName = "myqueue" 
$Queue = Get-AzureStorageQueue -Name $QueueName -Context $ctx 

if ($Queue -ne $null) {  
   $QueueMessage = New-Object -TypeName Microsoft.WindowsAzure.Storage.Queue.CloudQueueMessage
      -ArgumentList "my message is this"  
   $Queue.CloudQueue.AddMessage($QueueMessage) 
}
