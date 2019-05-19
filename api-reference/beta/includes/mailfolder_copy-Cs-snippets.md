
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var destinationId = "destinationId-value";

await graphClient.Me.MailFolders["{id}"]
	.Copy(destinationId)
	.Request()
	.PostAsync()

```