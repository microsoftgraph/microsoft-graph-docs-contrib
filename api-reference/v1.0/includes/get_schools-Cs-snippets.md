
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationSchool = await graphClient.Education.Me.Schools
	.Request()
	.GetAsync();

```