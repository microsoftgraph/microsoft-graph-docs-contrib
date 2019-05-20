
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var people = await graphClient.Me.People
	.Request()
	.GetAsync();

```