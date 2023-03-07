---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DelegatedAdminRelationship
{
	DisplayName = "Contoso admin relationship",
	Duration = TimeSpan.Parse("P730D"),
	Customer = new DelegatedAdminRelationshipCustomerParticipant
	{
		TenantId = "4b827261-d21f-4aa9-b7db-7fa1f56fb163",
		DisplayName = "Contoso subsidiary Inc",
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
				RoleDefinitionId = "3a2c62db-5318-420d-8d74-23affee5d9d5",
			},
		},
	},
};
var result = await graphClient.TenantRelationships.DelegatedAdminRelationships.PostAsync(requestBody);


```