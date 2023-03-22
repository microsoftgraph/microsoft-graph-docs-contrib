---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AuthorizationPolicy
{
	BlockMsolPowerShell = true,
};
var result = await graphClient.Policies.AuthorizationPolicy.PatchAsync(requestBody);


```