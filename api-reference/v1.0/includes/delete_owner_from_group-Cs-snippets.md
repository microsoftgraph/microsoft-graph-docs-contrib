
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Groups["{id}"].Owners["{id}"]
	.Request()
	.DeleteAsync();

```