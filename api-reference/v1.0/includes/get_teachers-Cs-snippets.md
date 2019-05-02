
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationUser = await graphClient.Education.Classes["{class-id}"].Teachers
	.Request()
	.GetAsync();

```