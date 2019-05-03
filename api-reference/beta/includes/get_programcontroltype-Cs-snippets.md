
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var programControlType = await graphClient.ProgramControlTypes
	.Request()
	.GetAsync();

```