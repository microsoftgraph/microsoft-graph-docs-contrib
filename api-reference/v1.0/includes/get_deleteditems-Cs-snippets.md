
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var microsoft.graph.group = await graphClient.Directory.DeletedItems.Microsoft.graph.group
	.Request()
	.GetAsync();

```