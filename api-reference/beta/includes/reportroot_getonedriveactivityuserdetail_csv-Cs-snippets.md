
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getOneDriveActivityUserDetail = await graphClient.Reports.GetOneDriveActivityUserDetail('D7')
	.Request()
	.GetAsync();

```