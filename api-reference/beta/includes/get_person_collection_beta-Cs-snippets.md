
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var person = await graphClient.Me.People
	.Request()
	.GetAsync();

```