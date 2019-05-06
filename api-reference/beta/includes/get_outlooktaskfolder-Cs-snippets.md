
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var outlookTaskFolder = await graphClient.Me.Outlook.TaskFolders["AAMkADIyAAAAABrJAAA="]
	.Request()
	.GetAsync();

```