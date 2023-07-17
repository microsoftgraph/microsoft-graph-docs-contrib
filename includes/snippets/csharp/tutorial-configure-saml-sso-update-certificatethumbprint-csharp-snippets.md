---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ServicePrincipal
{
	PreferredTokenSigningKeyThumbprint = "A7D3C4626B8A84FDA868CCC67D274D402FFD0A10",
};
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].PatchAsync(requestBody);


```