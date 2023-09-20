---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.ReferenceCreate
{
	OdataId = "https://graph.microsoft.com/v1.0/policies/appManagementPolicies/{id}",
};
await graphClient.Applications["{application-id}"].AppManagementPolicies.Ref.PostAsync(requestBody);


```