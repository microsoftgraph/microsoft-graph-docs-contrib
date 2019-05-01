
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var office365GroupsActivityDetail = await graphClient.Reports.GetOffice365GroupsActivityDetail('D7')
	.Request()
	.GetAsync();

```