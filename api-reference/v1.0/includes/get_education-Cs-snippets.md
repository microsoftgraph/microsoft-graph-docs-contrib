
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationRoot = await graphClient.Education
	.Request()
	.GetAsync();

```