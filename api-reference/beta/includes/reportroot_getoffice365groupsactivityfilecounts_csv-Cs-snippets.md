
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var office365GroupsActivityFileCounts = await graphClient.Reports.GetOffice365GroupsActivityFileCounts('D7')
	.Request()
	.GetAsync();

```