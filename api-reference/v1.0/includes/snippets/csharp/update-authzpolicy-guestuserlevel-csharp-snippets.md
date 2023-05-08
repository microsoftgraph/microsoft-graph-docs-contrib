---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AuthorizationPolicy
{
	AllowEmailVerifiedUsersToJoinOrganization = false,
};
var result = await graphClient.Policies.AuthorizationPolicy.PatchAsync(requestBody);


```