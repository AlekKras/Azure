function Add-Entity() { 
   [CmdletBinding()] 
	
   param( 
      $table, 
      [String]$partitionKey, 
      [String]$rowKey, 
      [String]$title, 
      [Int]$id, 
      [String]$publisher, 
      [String]$author 
   )  
   
   $entity = New-Object -TypeName Microsoft.WindowsAzure.Storage.Table.DynamicTableEntity 
      -ArgumentList $partitionKey, $rowKey 
		
   $entity.Properties.Add("Title", $title) 
   $entity.Properties.Add("ID", $id) 
   $entity.Properties.Add("Publisher", $publisher) 
   $entity.Properties.Add("Author", $author) 
   
   
   $result = $table.CloudTable.Execute(
      [Microsoft.WindowsAzure.Storage.Table.TableOperation]
      ::Insert($entity)) 
}
  
$StorageAccountName = "alekkras" 
$StorageAccountKey = Get-AzureStorageKey -StorageAccountName $StorageAccountName 
$Ctx = New-AzureStorageContext $StorageAccountName - StorageAccountKey 
   $StorageAccountKey.Primary  

$TableName = "Book"
  
$table = Get-AzureStorageTable –Name $TableName -Context $Ctx -ErrorAction Ignore 
 
#Add multiple entities to a table. 
Add-Entity -Table $table -PartitionKey Partition1 -RowKey Row1 -Title .Net -Id 1
   -Publisher abc -Author abc 
Add-Entity -Table $table -PartitionKey Partition2 -RowKey Row2 -Title JAVA -Id 2 
   -Publisher abc -Author abc 
Add-Entity -Table $table -PartitionKey Partition3 -RowKey Row3 -Title PHP -Id 3
   -Publisher xyz -Author xyz 
Add-Entity -Table $table -PartitionKey Partition4 -RowKey Row4 -Title SQL -Id 4 
   -Publisher xyz -Author xyz
