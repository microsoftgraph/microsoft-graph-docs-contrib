
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var riskyUsers = await graphClient.RiskyUsers
	.Request()
	.Filter("riskLevel eq microsoft.graph.riskLevel'medium'")
	.GetAsync();

```