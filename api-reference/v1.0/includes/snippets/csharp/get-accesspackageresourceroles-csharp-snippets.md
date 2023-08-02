---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.IdentityGovernance.EntitlementManagement.Catalogs["{accessPackageCatalog-id}"].ResourceRoles.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "(originSystem eq 'AadGroup' and resource/id eq 'a35bef72-a8aa-4ca3-af30-f6b2ece7208f')";
	requestConfiguration.QueryParameters.Expand = new string []{ "resource" };
});


```