
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationUser = await graphClient.Education.Users["{user-id}"]
	.Request()
	.GetAsync();

```