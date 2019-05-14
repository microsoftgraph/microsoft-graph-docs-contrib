
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Me
	.InvalidateAllRefreshTokens()
	.Request()
	.PostAsync()

```