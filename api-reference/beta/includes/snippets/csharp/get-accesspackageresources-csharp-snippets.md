---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageCatalogs["{accessPackageCatalog-id}"].AccessPackageResources.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "resourceType eq 'Application'";
	requestConfiguration.QueryParameters.Expand = new string []{ "accessPackageResourceScopes" };
});


```