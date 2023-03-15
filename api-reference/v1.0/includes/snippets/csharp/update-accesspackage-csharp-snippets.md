---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessPackage
{
	DisplayName = "Access Package New Name",
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages["{accessPackage-id}"].PatchAsync(requestBody);


```