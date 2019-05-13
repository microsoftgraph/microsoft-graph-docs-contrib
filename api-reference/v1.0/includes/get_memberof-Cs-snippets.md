
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var memberOf = await graphClient.Me.MemberOf
	.Request()
	.GetAsync();

```