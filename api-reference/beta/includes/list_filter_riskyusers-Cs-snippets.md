
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var riskyUser = await graphClient.RiskyUsers
	.Request()
	.Filter("riskLevel eq microsoft.graph.riskLevel'medium'")
	.GetAsync();

```