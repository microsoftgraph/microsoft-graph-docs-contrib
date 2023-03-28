---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IdentitySecurityDefaultsEnforcementPolicy
{
	IsEnabled = false,
};
var result = await graphClient.Policies.IdentitySecurityDefaultsEnforcementPolicy.PatchAsync(requestBody);


```