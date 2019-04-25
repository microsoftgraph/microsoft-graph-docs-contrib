
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupIdsList = new List<String>();
groupIdsList.Add( "fee2c45b-915a-4a64-b130-f4eb9e75525e" );
groupIdsList.Add( "4fe90ae7-065a-478b-9400-e0a0e1cbd540" );

await graphClient.Me
	.CheckMemberGroups(groupIdsList)
	.Request()
	.PostAsync()

```