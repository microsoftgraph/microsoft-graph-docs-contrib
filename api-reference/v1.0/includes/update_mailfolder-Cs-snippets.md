
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var mailFolder = new MailFolder
{
	DisplayName = "displayName-value",
};

await graphClient.Me.MailFolders["{id}"]
	.Request()
	.UpdateAsync(mailFolder);

```