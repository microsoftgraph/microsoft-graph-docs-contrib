
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var disabledPlansList = new List<Guid>();
disabledPlansList.Add( "a571ebcc-fqe0-4ca2-8c8c-7a284fd6c235" );

var addLicenses = new AssignedLicense
{
	DisabledPlans = disabledPlansList,
	SkuId = "skuId-value-2",
};

var disabledPlansList = new List<Guid>();
disabledPlansList.Add( "11b0131d-43c8-4bbb-b2c8-e80f9a50834a" );

var _addLicenses = new AssignedLicense
{
	DisabledPlans = disabledPlansList,
	SkuId = "skuId-value-1",
};

var addLicensesList = new List<AssignedLicense>();
addLicensesList.Add( _addLicenses );
addLicensesList.Add( addLicenses );

var removeLicensesList = new List<Guid>();

await graphClient.Me
	.AssignLicense(addLicensesList,removeLicensesList)
	.Request()
	.PostAsync()

```