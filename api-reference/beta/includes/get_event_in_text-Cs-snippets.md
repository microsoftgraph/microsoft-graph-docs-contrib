
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var _event = await graphClient.Me.Events["AAMkAGI1AAAoZDOFAAA="]
	.Request()
	.Header("Prefer","outlook.body-content-type="text"")
	.Select( e => new {
			 e.Subject,
			 e.Body,
			 e.BodyPreview 
			 })
	.GetAsync();

```