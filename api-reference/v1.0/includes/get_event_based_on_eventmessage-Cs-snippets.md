
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var message = await graphClient.Me.Messages["AAMkADYAAAImV_jAAA="]
	.Request()
	.Expand("eventMessage/event")
	.GetAsync();

```