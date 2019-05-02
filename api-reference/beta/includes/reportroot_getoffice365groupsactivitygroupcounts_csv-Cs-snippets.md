
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var office365GroupsActivityGroupCounts = await graphClient.Reports.GetOffice365GroupsActivityGroupCounts('D7')
	.Request()
	.GetAsync();

```