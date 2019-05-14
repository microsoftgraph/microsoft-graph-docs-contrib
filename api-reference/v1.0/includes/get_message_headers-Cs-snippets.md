
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var message = await graphClient.Me.Messages["AAMkADhAAAW-VPeAAA="]
	.Request()
	.Select( e => new {
			 e.InternetMessageHeaders 
			 })
	.GetAsync();

```