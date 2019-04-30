
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var localeInfo = await graphClient.Me.Outlook.SupportedLanguages()
	.Request()
	.GetAsync();

```