---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new B2cIdentityUserFlow
{
	IsLanguageCustomizationEnabled = true,
	DefaultLanguageTag = "en",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.B2cUserFlows["{b2cIdentityUserFlow-id}"].PatchAsync(requestBody);


```