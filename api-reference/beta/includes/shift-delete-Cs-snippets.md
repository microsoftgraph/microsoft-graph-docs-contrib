
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Teams["{teamId}"].Schedule.Shifts["{shiftId}"]
	.Request()
	.DeleteAsync();

```