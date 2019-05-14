
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var createdObjects = await graphClient.Me.CreatedObjects
	.Request()
	.GetAsync();

```