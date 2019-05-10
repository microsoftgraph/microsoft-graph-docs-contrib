
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupSettingTemplates = await graphClient.GroupSettingTemplates
	.Request()
	.GetAsync();

```