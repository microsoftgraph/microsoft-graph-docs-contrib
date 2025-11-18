---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new ArkoseFraudProtectionProvider
{
	OdataType = "#microsoft.graph.arkoseFraudProtectionProvider",
	DisplayName = "Arkose Sign-Up Protection Updated",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.RiskPrevention.FraudProtectionProviders["{fraudProtectionProvider-id}"].PatchAsync(requestBody);


```