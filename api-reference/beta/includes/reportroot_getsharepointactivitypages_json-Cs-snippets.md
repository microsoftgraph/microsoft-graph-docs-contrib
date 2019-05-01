
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sharePointActivityPages = await graphClient.Reports.GetSharePointActivityPages('D7')
	.Request()
	.GetAsync();

```