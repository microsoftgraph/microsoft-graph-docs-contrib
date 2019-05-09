
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Groups["{id}"]
	.AddFavorite()
	.Request()
	.PostAsync()

```