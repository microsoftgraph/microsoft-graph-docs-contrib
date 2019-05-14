
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var classes = await graphClient.Education.Me.Classes
	.Request()
	.GetAsync();

```