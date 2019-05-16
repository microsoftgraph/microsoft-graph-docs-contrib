
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationClass = await graphClient.Education.Classes["11023"]
	.Request()
	.GetAsync();

```