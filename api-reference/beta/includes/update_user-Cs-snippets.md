
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var businessPhonesList = new List<String>();
businessPhonesList.Add( "businessPhones-value" );

var assignedPlans = new AssignedPlan
{
	AssignedDateTime = "2016-10-19T10:37:00Z",
	CapabilityStatus = "capabilityStatus-value",
	Service = "service-value",
	ServicePlanId = "bea13e0c-3828-4daa-a392-28af7ff61a0f",
};

var assignedPlansList = new List<AssignedPlan>();
assignedPlansList.Add( assignedPlans );

var disabledPlansList = new List<Guid>();
disabledPlansList.Add( "bea13e0c-3828-4daa-a392-28af7ff61a0f" );

var assignedLicenses = new AssignedLicense
{
	DisabledPlans = disabledPlansList,
	SkuId = "skuId-value",
};

var assignedLicensesList = new List<AssignedLicense>();
assignedLicensesList.Add( assignedLicenses );

var user = new User
{
	AccountEnabled = true,
	AssignedLicenses = assignedLicensesList,
	AssignedPlans = assignedPlansList,
	BusinessPhones = businessPhonesList,
	City = "city-value",
};

await graphClient.Me
	.Request()
	.UpdateAsync(user);

```