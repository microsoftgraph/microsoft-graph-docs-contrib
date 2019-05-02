
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var outlookCategory = await graphClient.Me.Outlook.MasterCategories
	.Request()
	.GetAsync();

```