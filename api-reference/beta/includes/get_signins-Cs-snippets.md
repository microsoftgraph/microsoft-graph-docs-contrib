
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var signIn = await graphClient.AuditLogs.SignIns
	.Request()
	.GetAsync();

```