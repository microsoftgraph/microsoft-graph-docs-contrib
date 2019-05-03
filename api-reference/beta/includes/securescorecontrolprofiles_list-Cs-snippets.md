
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var secureScoreControlProfile = await graphClient.Security.SecureScoreControlProfiles
	.Request()
	.GetAsync();

```