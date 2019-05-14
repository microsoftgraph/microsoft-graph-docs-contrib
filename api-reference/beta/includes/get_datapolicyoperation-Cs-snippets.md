
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var dataPolicyOperation = await graphClient.DataPolicyOperations["{id}"]
	.Request()
	.GetAsync();

```