
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryAudit = await graphClient.AuditLogs.DirectoryAudits
	.Request()
	.GetAsync();

```