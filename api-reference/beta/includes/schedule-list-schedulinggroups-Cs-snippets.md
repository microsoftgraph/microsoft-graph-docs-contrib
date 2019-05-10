
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var schedulingGroups = await graphClient.Teams["{teamId}"].Schedule.SchedulingGroups
	.Request()
	.GetAsync();

```