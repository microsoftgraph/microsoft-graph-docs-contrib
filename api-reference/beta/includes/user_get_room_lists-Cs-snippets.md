
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var findRoomLists = await graphClient.Me.FindRoomLists()
	.Request()
	.GetAsync();

```