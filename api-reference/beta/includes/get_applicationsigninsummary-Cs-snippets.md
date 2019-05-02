
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var applicationSignInSummary = await graphClient.Reports.GetAzureADApplicationSignInSummary('D7')
	.Request()
	.GetAsync();

```