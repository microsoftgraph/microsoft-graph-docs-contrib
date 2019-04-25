
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userIdsList = new List<String>();
userIdsList.Add( "04487ee0-f4f6-4e7f-8999-facc5a30e232" );
userIdsList.Add( "13387ee0-f4f6-4e7f-8999-facc5120e345" );

await graphClient.RiskyUsers
	.Dismiss(userIdsList)
	.Request()
	.PostAsync()

```