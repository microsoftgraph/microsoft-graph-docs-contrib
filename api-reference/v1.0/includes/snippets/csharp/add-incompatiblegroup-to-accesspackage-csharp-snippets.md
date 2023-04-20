---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.ReferenceCreate
{
	OdataId = "https://graph.microsoft.com/v1.0/groups/c0a74b4d-2694-4d5d-a964-1bee4ff0aaf2",
};
await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages["{accessPackage-id}"].IncompatibleGroups.Ref.PostAsync(requestBody);


```