
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var adminEligibleSettings = new GovernanceRuleSetting
{
	RuleIdentifier = "ExpirationRule",
	Setting = "{\"permanentAssignment\":false,\"maximumGrantPeriodInMinutes\":129600}",
};

var adminEligibleSettingsList = new List<GovernanceRuleSetting>();
adminEligibleSettingsList.Add( adminEligibleSettings );

var governanceRoleSetting = new GovernanceRoleSetting
{
	AdminEligibleSettings = adminEligibleSettingsList,
};

await graphClient.PrivilegedAccess["pimforazurerbac"].RoleSettings["5fb5aef8-1081-4b8e-bb16-9d5d0385bab5"]
	.Request()
	.UpdateAsync(governanceRoleSetting);

```