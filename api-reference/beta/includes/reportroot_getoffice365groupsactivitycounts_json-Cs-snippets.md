
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var office365GroupsActivityCounts = await graphClient.Reports.GetOffice365GroupsActivityCounts('D7')
	.Request()
	.GetAsync();

```