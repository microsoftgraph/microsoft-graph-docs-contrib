
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Groups["{id}"]
	.ResetUnseenCount()
	.Request()
	.PostAsync()

```