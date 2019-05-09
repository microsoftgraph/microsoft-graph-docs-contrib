
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var _event = await graphClient.Groups["{id}"].Events
	.Request()
	.GetAsync();

```