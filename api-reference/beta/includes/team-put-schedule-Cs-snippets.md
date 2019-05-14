
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var schedule = new Schedule
{
	Enabled = true,
	TimeZone = "America/Chicago",
};

await graphClient.Teams["{teamId}"].Schedule
	.Request()
	.PutAsync(schedule);

```