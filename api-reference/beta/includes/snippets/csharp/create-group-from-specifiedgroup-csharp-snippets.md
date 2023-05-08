---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.ReferenceCreate
{
	OdataId = "https://graph.microsoft.com/odata/groups('dc3d2ce5-7c5e-4dca-a0ef-2145bf6e53ef')",
};
await graphClient.Policies.MobileDeviceManagementPolicies["{mobilityManagementPolicy-id}"].IncludedGroups.Ref.PostAsync(requestBody);


```