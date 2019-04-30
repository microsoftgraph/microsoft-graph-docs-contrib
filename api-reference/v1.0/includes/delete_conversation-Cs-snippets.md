
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Groups["{id}"].Conversations["{id}"]
	.Request()
	.DeleteAsync();

```