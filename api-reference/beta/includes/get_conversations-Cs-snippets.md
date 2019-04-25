
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversation = await graphClient.Groups["{id}"].Conversations
	.Request()
	.GetAsync();

```