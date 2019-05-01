
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationClass = await graphClient.Education.Me.Classes
	.Request()
	.GetAsync();

```