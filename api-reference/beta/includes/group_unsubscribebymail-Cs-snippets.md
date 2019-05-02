
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Groups["{id}"]
	.UnsubscribeByMail()
	.Request()
	.PostAsync()

```