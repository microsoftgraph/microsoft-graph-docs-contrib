
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Groups["{id}"]
	.RemoveFavorite()
	.Request()
	.PostAsync()

```