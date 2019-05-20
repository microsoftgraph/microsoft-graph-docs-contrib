
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directorySettingTemplate = await graphClient.DirectorySettingTemplates["{id}"]
	.Request()
	.GetAsync();

```