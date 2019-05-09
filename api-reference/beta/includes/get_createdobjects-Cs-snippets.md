
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = await graphClient.Me.CreatedObjects
	.Request()
	.GetAsync();

```