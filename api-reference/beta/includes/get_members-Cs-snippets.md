
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var members = await graphClient.Education.Classes["11016"].Members
	.Request()
	.GetAsync();

```