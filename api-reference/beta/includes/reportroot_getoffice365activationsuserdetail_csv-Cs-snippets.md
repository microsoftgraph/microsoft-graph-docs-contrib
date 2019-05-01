
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var office365ActivationsUserDetail = await graphClient.Reports.GetOffice365ActivationsUserDetail()
	.Request()
	.GetAsync();

```