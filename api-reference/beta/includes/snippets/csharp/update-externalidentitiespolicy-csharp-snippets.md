---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ExternalIdentitiesPolicy
{
	AllowExternalIdentitiesToLeave = false,
};
var result = await graphClient.Policies.ExternalIdentitiesPolicy.PatchAsync(requestBody);


```