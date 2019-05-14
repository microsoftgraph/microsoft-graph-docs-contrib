
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var programs = await graphClient.Programs
	.Request()
	.GetAsync();

```