---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CrossTenantAccessPolicyConfigurationDefault
{
	B2bCollaborationOutbound = new CrossTenantAccessPolicyB2BSetting
	{
		UsersAndGroups = new CrossTenantAccessPolicyTargetConfiguration
		{
			AccessType = CrossTenantAccessPolicyTargetConfigurationAccessType.Blocked,
			Targets = new List<CrossTenantAccessPolicyTarget>
			{
				new CrossTenantAccessPolicyTarget
				{
					Target = "0be493dc-cb56-4a53-936f-9cf64410b8b0",
					TargetType = CrossTenantAccessPolicyTargetType.Group,
				},
			},
		},
		Applications = new CrossTenantAccessPolicyTargetConfiguration
		{
			AccessType = CrossTenantAccessPolicyTargetConfigurationAccessType.Blocked,
			Targets = new List<CrossTenantAccessPolicyTarget>
			{
				new CrossTenantAccessPolicyTarget
				{
					Target = "AllApplications",
					TargetType = CrossTenantAccessPolicyTargetType.Application,
				},
			},
		},
	},
};
var result = await graphClient.Policies.CrossTenantAccessPolicy.Default.PatchAsync(requestBody);


```