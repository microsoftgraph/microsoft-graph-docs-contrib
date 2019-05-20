
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var events = await graphClient.Groups["{id}"].Events
	.Request()
	.GetAsync();

```