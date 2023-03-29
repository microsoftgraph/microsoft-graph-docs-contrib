---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new B2cIdentityUserFlow
{
	IsLanguageCustomizationEnabled = true,
	DefaultLanguageTag = "en",
};
var result = await graphClient.Identity.B2cUserFlows["{b2cIdentityUserFlow-id}"].PatchAsync(requestBody);


```