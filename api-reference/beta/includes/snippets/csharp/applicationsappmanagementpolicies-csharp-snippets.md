---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.ReferenceCreate
{
	OdataId = "https://graph.microsoft.com/beta/policies/appManagementPolicies/{id}",
};
await graphClient.Applications["{application-id}"].AppManagementPolicies.Ref.PostAsync(requestBody);


```