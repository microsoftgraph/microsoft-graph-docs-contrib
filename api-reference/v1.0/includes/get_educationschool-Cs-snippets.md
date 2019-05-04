
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationSchool = await graphClient.Education.Schools["{school-id}"]
	.Request()
	.GetAsync();

```