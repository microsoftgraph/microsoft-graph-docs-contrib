
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var privilegedApproval = await graphClient.PrivilegedApproval.MyRequests()
	.Request()
	.GetAsync();

```