
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationUser = await graphClient.Education.Users["13012"]
	.Request()
	.GetAsync();

```