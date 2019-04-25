
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendar = new Calendar
{
	Name = "Social events",
};

await graphClient.Me.Calendar
	.Request()
	.UpdateAsync(calendar);

```