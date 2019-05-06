
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var group = await graphClient.Me.JoinedTeams
	.Request()
	.GetAsync();

```