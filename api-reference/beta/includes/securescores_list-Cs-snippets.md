
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var secureScore = await graphClient.Security.SecureScores
	.Request()
	.Top(1)
	.GetAsync();

```