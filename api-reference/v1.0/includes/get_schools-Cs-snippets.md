
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var schools = await graphClient.Education.Me.Schools
	.Request()
	.GetAsync();

```