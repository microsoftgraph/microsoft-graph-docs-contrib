---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Identity.B2cUserFlows["{b2cIdentityUserFlow-id}"].Languages.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "isEnabled eq true";
});


```