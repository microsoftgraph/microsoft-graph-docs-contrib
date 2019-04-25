
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = await graphClient.Me.TransitiveMemberOf
	.Request()
	.GetAsync();

```