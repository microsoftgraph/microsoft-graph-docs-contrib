
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var report = await graphClient.Reports.GetOffice365GroupsActivityGroupCounts('D7')
	.Request()
	.GetAsync();

```