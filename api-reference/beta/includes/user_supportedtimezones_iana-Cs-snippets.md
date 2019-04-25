
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var timeZoneInformation = await graphClient.Me.Outlook.SupportedTimeZones(microsoft.graph.timeZoneStandard'Iana')
	.Request()
	.GetAsync();

```