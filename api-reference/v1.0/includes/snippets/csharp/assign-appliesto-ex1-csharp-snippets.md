---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.ReferenceCreate
{
	OdataId = "https://graph.microsoft.com/v1.0/policies/appManagementPolicies/{id}",
};
await graphClient.Applications["{application-id}"].AppManagementPolicies.Ref.PostAsync(requestBody);


```