---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new TenantGovernancePolicyTemplate
{
	MultiTenantApplicationsToProvision = new List<MultiTenantApplicationsToProvision>
	{
		new MultiTenantApplicationsToProvision
		{
			AppId = "66667777-aaaa-8888-bbbb-9999cccc0000",
			ObjectId = "cccccccc-2222-3333-4444-dddddddddddd",
			DisplayName = "Mega Monitor",
			RequiredResourceAccesses = new List<ApplicationsRequiredResourceAccess>
			{
				new ApplicationsRequiredResourceAccess
				{
					ResourceAppId = "00000003-0000-0000-c000-000000000000",
					Permissions = new List<ApplicationResourcePermission>
					{
						new ApplicationResourcePermission
						{
							Id = "633e0fce-8c58-4cfb-9495-12bbd5a24f7c",
							Name = "Policy.Read.ConditionalAccess",
							Type = ApplicationPermissionType.Scope,
						},
						new ApplicationResourcePermission
						{
							Id = "e1fe6dd8-ba31-4d61-89e7-88639da4683d",
							Name = "User.Read",
							Type = ApplicationPermissionType.Scope,
						},
					},
				},
			},
		},
	},
	DelegatedAdministrationRoleAssignments = new List<DelegatedAdministrationRoleAssignment>
	{
		new DelegatedAdministrationRoleAssignment
		{
			RoleTemplates = new List<RoleTemplate>
			{
				new RoleTemplate
				{
					Id = "f2ef992c-3afb-46b9-b7cf-a126ee74c451",
					Name = "Global Reader",
				},
			},
			Group = new Group
			{
				Id = "ffffffff-5555-6666-7777-aaaaaaaaaaaa",
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Directory.TenantGovernance.GovernancePolicyTemplates["{tenantGovernancePolicyTemplate-id}"].PatchAsync(requestBody);


```