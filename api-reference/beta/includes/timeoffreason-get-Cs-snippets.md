
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var timeOffReason = await graphClient.Teams["{teamId}"].Schedule.TimeOffReasons["{timeOffReasonId}"]
	.Request()
	.GetAsync();

```