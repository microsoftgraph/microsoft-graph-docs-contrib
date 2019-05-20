
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var myRequests = await graphClient.PrivilegedApproval.MyRequests()
	.Request()
	.GetAsync();

```