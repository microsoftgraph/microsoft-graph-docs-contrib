
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var secureScoreControlProfiles = await graphClient.Security.SecureScoreControlProfiles
	.Request()
	.GetAsync();

```