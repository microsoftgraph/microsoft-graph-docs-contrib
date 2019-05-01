
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailAddress = await graphClient.Me.FindRooms('Building2Rooms@contoso.onmicrosoft.com')
	.Request()
	.GetAsync();

```