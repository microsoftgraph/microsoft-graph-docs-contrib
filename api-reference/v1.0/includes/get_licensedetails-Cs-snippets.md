
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var licenseDetails = await graphClient.Me.LicenseDetails
	.Request()
	.GetAsync();

```