
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var timeOffReasons = await graphClient.Teams["{teamId}"].Schedule.TimeOffReasons
	.Request()
	.GetAsync();

```