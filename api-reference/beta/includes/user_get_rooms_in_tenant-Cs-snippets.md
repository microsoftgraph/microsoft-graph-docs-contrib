
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailAddress = await graphClient.Me.FindRooms()
	.Request()
	.GetAsync();

```