
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var message = await graphClient.Me.Messages["AQMkADJmMTUAAAgVZAAAA"]
	.Request()
	.Expand("mentions")
	.GetAsync();

```