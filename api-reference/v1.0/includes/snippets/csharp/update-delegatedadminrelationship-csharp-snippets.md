---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DelegatedAdminRelationship
{
	DisplayName = "Updated Contoso admin relationship",
	Duration = TimeSpan.Parse("P31D"),
	Customer = new DelegatedAdminRelationshipCustomerParticipant
	{
		TenantId = "52eaad04-13a2-4a2f-9ce8-93a294fadf36",
	},
	AccessDetails = new DelegatedAdminAccessDetails
	{
		UnifiedRoles = new List<UnifiedRole>
		{
			new UnifiedRole
			{
				RoleDefinitionId = "44367163-eba1-44c3-98af-f5787879f96a",
			},
			new UnifiedRole
			{
				RoleDefinitionId = "29232cdf-9323-42fd-ade2-1d097af3e4de",
			},
			new UnifiedRole
			{
				RoleDefinitionId = "69091246-20e8-4a56-aa4d-066075b2a7a8",
			},
			new UnifiedRole
			{
				RoleDefinitionId = "3a2c62db-5318-420d-8d74-23affee5d9d5",
			},
		},
	},
};
var result = await graphClient.TenantRelationships.DelegatedAdminRelationships["{delegatedAdminRelationship-id}"].PatchAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("If-Match", "W/\"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw==\"");
});


```