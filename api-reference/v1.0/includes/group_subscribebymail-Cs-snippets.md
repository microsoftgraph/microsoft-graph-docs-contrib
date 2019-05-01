
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Groups["{id}"]
	.SubscribeByMail()
	.Request()
	.PostAsync()

```