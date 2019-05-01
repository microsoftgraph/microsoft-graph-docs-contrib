
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var group = await graphClient.Groups
	.Request()
	.Filter("hasMembersWithLicenseErrors+eq+true,")
	.Select( e => new {
			 e.Id,
			 e.DisplayName 
			 })
	.GetAsync();

```