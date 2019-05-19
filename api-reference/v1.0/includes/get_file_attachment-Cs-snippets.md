
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attachment = await graphClient.Me.Events["{id}"].Attachments["{id}"]
	.Request()
	.GetAsync();

```