
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var office365GroupsActivityStorage = await graphClient.Reports.GetOffice365GroupsActivityStorage('D7')
	.Request()
	.GetAsync();

```