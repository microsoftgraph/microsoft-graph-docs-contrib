
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var office365ServicesUserCounts = await graphClient.Reports.GetOffice365ServicesUserCounts('D7')
	.Request()
	.GetAsync();

```