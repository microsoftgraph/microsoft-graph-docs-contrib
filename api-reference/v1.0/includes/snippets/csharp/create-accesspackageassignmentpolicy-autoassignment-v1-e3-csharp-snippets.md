---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessPackageAssignmentPolicy
{
	DisplayName = "Sales department users",
	Description = "All users from sales department",
	AllowedTargetScope = AllowedTargetScope.SpecificDirectoryUsers,
	SpecificAllowedTargets = new List<SubjectSet>
	{
		new AttributeRuleMembers
		{
			OdataType = "#microsoft.graph.attributeRuleMembers",
			Description = "Membership rule for all users from sales department",
			MembershipRule = "(user.department -eq \"Sales\")",
		},
	},
	AutomaticRequestSettings = new AccessPackageAutomaticRequestSettings
	{
		RequestAccessForAllowedTargets = true,
		RemoveAccessWhenTargetLeavesAllowedTargets = true,
		GracePeriodBeforeAccessRemoval = TimeSpan.Parse("P7D"),
	},
	AccessPackage = new AccessPackage
	{
		Id = "8a36831e-1527-4b2b-aff2-81259a8d8e76",
	},
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.AssignmentPolicies.PostAsync(requestBody);


```