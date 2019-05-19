
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Me.Messages["{id}"].Mentions["{id}"]
	.Request()
	.DeleteAsync();

```