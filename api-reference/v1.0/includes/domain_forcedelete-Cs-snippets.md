
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var disableUserAccounts = true;

await graphClient.Domains["{id}"]
	.ForceDelete(disableUserAccounts)
	.Request()
	.PostAsync()

```