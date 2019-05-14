
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contact = await graphClient.Me.Contacts["AAMkAGI2THk0AAA="]
	.Request()
	.GetAsync();

```