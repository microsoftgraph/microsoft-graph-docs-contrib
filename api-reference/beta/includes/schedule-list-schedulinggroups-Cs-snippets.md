
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var schedulingGroup = await graphClient.Teams["{teamId}"].Schedule.SchedulingGroups
	.Request()
	.GetAsync();

```