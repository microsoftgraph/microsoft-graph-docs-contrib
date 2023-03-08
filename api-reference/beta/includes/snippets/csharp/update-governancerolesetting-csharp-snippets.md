---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new GovernanceRoleSetting
{
	AdminEligibleSettings = new List<GovernanceRuleSetting>
	{
		new GovernanceRuleSetting
		{
			RuleIdentifier = "ExpirationRule",
			Setting = "{\"permanentAssignment\":false,\"maximumGrantPeriodInMinutes\":129600}",
		},
	},
};
var result = await graphClient.PrivilegedAccess["{privilegedAccess-id}"].RoleSettings["{governanceRoleSetting-id}"].PatchAsync(requestBody);


```