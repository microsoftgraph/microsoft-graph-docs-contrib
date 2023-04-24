---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.ServicePrincipals.Item.DeletePasswordSingleSignOnCredentials.DeletePasswordSingleSignOnCredentialsPostRequestBody
{
	Id = "5793aa3b-cca9-4794-679a240f8b58",
};
await graphClient.ServicePrincipals["{servicePrincipal-id}"].DeletePasswordSingleSignOnCredentials.PostAsync(requestBody);


```