
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var timeZoneInformation = await graphClient.Me.Outlook.SupportedTimeZones()
	.Request()
	.GetAsync();

```