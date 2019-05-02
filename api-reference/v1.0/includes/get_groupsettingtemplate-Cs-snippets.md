
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupSettingTemplate = await graphClient.GroupSettingTemplates["{id}"]
	.Request()
	.GetAsync();

```