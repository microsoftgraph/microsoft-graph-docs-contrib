
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var outlookTaskFolder = new OutlookTaskFolder
{
	Name = "Volunteer",
};

await graphClient.Me.Outlook.TaskFolders
	.Request()
	.AddAsync(outlookTaskFolder);

```