
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var acceptedSenders = await graphClient.Groups["{id}"].AcceptedSenders
	.Request()
	.GetAsync();

```