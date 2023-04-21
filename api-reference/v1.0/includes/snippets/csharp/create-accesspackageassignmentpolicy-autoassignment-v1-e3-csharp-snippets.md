---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessPackageAssignmentPolicy
{
	DisplayName = "Sales department users",
	Description = "All users from sales department",
	AllowedTargetScope = AllowedTargetScope.SpecificDirectoryUsers,
	SpecificAllowedTargets = new List<SubjectSet>
	{
		new SubjectSet
		{
			OdataType = "#microsoft.graph.attributeRuleMembers",
			AdditionalData = new Dictionary<string, object>
			{
				{
					"description" , "Membership rule for all users from sales department"
				},
				{
					"membershipRule" , "(user.department -eq \"Sales\")"
				},
			},
		},
	},
	AutomaticRequestSettings = new AccessPackageAutomaticRequestSettings
	{
		RequestAccessForAllowedTargets = true,
	},
	AccessPackage = new AccessPackage
	{
		Id = "8a36831e-1527-4b2b-aff2-81259a8d8e76",
	},
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.AssignmentPolicies.PostAsync(requestBody);


```