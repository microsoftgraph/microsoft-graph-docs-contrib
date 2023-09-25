---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessPackage
{
	DisplayName = "Access Package New Name",
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages["{accessPackage-id}"].PatchAsync(requestBody);


```