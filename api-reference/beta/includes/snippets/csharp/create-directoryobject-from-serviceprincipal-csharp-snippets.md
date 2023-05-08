---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.ReferenceCreate
{
	OdataId = "https://graph.microsoft.com/v1.0/directoryObjects/{id}",
};
await graphClient.ServicePrincipals["{servicePrincipal-id}"].Owners.Ref.PostAsync(requestBody);


```