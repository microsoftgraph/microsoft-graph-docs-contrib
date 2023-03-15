---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DelegatedAdminAccessAssignment
{
	AccessContainer = new DelegatedAdminAccessContainer
	{
		AccessContainerId = "869713c9-0b28-4d08-8949-ae07ae1bf528",
		AccessContainerType = DelegatedAdminAccessContainerType.SecurityGroup,
	},
	AccessDetails = new DelegatedAdminAccessDetails
	{
		UnifiedRoles = new List<UnifiedRole>
		{
			new UnifiedRole
			{
				RoleDefinitionId = "29232cdf-9323-42fd-ade2-1d097af3e4de",
			},
			new UnifiedRole
			{
				RoleDefinitionId = "f2ef992c-3afb-46b9-b7cf-a126ee74c451",
			},
			new UnifiedRole
			{
				RoleDefinitionId = "729827e3-9c14-49f7-bb1b-9608f156bbb8",
			},
			new UnifiedRole
			{
				RoleDefinitionId = "3a2c62db-5318-420d-8d74-23affee5d9d5",
			},
		},
	},
};
var result = await graphClient.TenantRelationships.DelegatedAdminRelationships["{delegatedAdminRelationship-id}"].AccessAssignments.PostAsync(requestBody);


```