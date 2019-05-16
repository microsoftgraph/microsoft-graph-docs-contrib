
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Me.Outlook.Tasks["AAMkADIyAAAhrb_QAAA="]
	.Request()
	.DeleteAsync();

```