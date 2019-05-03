
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var mailFolder = await graphClient.Me.MailFolders["AAMkAGVmMDEzM"]
	.Request()
	.GetAsync();

```