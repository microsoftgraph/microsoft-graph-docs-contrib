
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var threads = await graphClient.Groups["{id}"].Conversations["{id}"].Threads
	.Request()
	.GetAsync();

```