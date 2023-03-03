---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IdentityProvider
{
	ClientSecret = "1111111111111",
};
var result = await graphClient.IdentityProviders["{identityProvider-id}"].PatchAsync(requestBody);


```