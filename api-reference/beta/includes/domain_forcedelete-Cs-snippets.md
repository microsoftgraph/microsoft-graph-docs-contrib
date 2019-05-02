
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var disableUserAccounts = true;

await graphClient.Domains["contoso.com"]
	.ForceDelete(disableUserAccounts)
	.Request()
	.PostAsync()

```