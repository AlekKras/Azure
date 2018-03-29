#log in into your account
$StorageAccountName = "mystorageaccount" 
$StorageAccountKey = "mystoragekey" 
$Ctx = New-AzureStorageContext $StorageAccountName - StorageAccountKey 
$StorageAccountKey
#create a new table
$tabName = "Mytablename"
New-AzureStorageTable –Name $tabName –Context $Ctx

