
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var office365ActiveUserCounts = await graphClient.Reports.GetOffice365ActiveUserCounts('D7')
	.Request()
	.GetAsync();

```