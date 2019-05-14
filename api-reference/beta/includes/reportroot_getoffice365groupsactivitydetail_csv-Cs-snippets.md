
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getOffice365GroupsActivityDetail = await graphClient.Reports.GetOffice365GroupsActivityDetail('D7')
	.Request()
	.GetAsync();

```