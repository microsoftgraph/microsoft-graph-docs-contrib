
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var disabledPlansList = new List<Guid>();
disabledPlansList.Add( "11b0131d-43c8-4bbb-b2c8-e80f9a50834a" );

var addLicenses = new AssignedLicense
{
	DisabledPlans = disabledPlansList,
	SkuId = "guid",
};

var addLicensesList = new List<AssignedLicense>();
addLicensesList.Add( addLicenses );

var removeLicensesList = new List<Guid>();
removeLicensesList.Add( "bea13e0c-3828-4daa-a392-28af7ff61a0f" );

await graphClient.Me
	.AssignLicense(addLicensesList,removeLicensesList)
	.Request()
	.PostAsync()

```