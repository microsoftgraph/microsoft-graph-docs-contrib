---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IdentityUserFlowAttribute
{
	Description = "Your new hobby",
};
var result = await graphClient.Identity.UserFlowAttributes["{identityUserFlowAttribute-id}"].PatchAsync(requestBody);


```