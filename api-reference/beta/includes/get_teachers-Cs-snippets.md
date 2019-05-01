
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationUser = await graphClient.Education.Classes["11023"].Teachers
	.Request()
	.GetAsync();

```