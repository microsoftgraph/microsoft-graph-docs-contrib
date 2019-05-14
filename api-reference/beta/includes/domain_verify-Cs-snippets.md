
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Domains["contoso.com"]
	.Verify()
	.Request()
	.PostAsync()

```