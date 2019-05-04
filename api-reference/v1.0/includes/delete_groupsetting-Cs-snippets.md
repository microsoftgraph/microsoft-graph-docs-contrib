
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.GroupSettings["{id}"]
	.Request()
	.DeleteAsync();

```