
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationUser = await graphClient.Education.Classes["11016"].Members
	.Request()
	.GetAsync();

```