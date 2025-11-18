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
	DisplayName = "Arkose Sign-Up Protection",
	PublicKey = "A1EE42E0-C88B-47FE-A176-5E9FB8F116FB",
	PrivateKey = "19BBE628-7DEF-4E28-AB25-BF129C760B7E",
	ClientSubDomain = "client-api",
	VerifySubDomain = "verify-api",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.RiskPrevention.FraudProtectionProviders.PostAsync(requestBody);


```