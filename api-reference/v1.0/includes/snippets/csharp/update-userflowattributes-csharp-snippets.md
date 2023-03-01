---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IdentityUserFlowAttribute
{
	Description = "Your new hobby",
};
var result = await graphClient.Identity.UserFlowAttributes["{identityUserFlowAttribute-id}"].PatchAsync(requestBody);


```