
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var AudioRoutingGroup = await graphClient.App.Calls["{id}"].AudioRoutingGroups
	.Request()
	.GetAsync();

```