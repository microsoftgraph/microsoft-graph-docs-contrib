---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].Synchronization.Jobs.GetAsync((requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Authorization", "Bearer {Token}");
});


```