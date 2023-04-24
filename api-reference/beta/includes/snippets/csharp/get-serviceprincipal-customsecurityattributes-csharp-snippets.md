---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "customSecurityAttributes" };
});


```