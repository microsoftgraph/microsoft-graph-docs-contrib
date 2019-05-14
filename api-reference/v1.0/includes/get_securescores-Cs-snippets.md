
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var secureScores = await graphClient.Security.SecureScores
	.Request()
	.Top(1)
	.GetAsync();

```