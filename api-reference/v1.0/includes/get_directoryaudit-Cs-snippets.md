
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryAudits = await graphClient.AuditLogs.DirectoryAudits
	.Request()
	.GetAsync();

```