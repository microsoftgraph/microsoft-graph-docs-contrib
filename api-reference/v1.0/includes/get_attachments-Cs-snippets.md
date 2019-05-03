
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attachment = await graphClient.Groups["{id}"].Threads["{id}"].Posts["{id}"].Attachments
	.Request()
	.GetAsync();

```