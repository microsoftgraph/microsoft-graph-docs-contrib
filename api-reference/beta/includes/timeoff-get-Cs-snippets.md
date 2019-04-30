
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var timeOff = await graphClient.Teams["{teamId}"].Schedule.TimesOff["{timeOffId}"]
	.Request()
	.GetAsync();

```