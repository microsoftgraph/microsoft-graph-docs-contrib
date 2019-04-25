
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var oneDriveActivityUserDetail = await graphClient.Reports.GetOneDriveActivityUserDetail('D7')
	.Request()
	.GetAsync();

```