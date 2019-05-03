
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Security.SecurityActions["{id}"]
	.CancelSecurityAction()
	.Request()
	.PostAsync()

```