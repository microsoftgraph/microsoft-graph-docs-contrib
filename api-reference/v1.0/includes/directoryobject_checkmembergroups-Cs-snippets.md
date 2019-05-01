
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupIdsList = new List<String>();
groupIdsList.Add( "fee2c45b-915a-4a64b130f4eb9e75525e" );
groupIdsList.Add( "4fe90ae065a-478b9400e0a0e1cbd540" );

await graphClient.DirectoryObjects["{id}"]
	.CheckMemberGroups(groupIdsList)
	.Request()
	.PostAsync()

```