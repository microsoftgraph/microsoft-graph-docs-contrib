---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CrossTenantAccessPolicyConfigurationPartner
{
	TenantRestrictions = new CrossTenantAccessPolicyTenantRestrictions
	{
		UsersAndGroups = new CrossTenantAccessPolicyTargetConfiguration
		{
			AccessType = CrossTenantAccessPolicyTargetConfigurationAccessType.Allowed,
			Targets = new List<CrossTenantAccessPolicyTarget>
			{
				new CrossTenantAccessPolicyTarget
				{
					Target = "AllUsers",
					TargetType = CrossTenantAccessPolicyTargetType.User,
				},
			},
		},
		Applications = new CrossTenantAccessPolicyTargetConfiguration
		{
			AccessType = CrossTenantAccessPolicyTargetConfigurationAccessType.Allowed,
			Targets = new List<CrossTenantAccessPolicyTarget>
			{
				new CrossTenantAccessPolicyTarget
				{
					Target = "Office365",
					TargetType = CrossTenantAccessPolicyTargetType.Application,
				},
			},
		},
	},
};
var result = await graphClient.Policies.CrossTenantAccessPolicy.Partners["{crossTenantAccessPolicyConfigurationPartner-tenantId}"].PatchAsync(requestBody);


```