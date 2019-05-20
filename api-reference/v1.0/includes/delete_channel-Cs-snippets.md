
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Teams["{id}"].Channels["{id}"]
	.Request()
	.DeleteAsync();

```