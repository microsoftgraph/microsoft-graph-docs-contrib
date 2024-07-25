---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new X509CertificateCombinationConfiguration
{
	OdataType = "#microsoft.graph.x509CertificateCombinationConfiguration",
	AllowedIssuerSkis = new List<string>
	{
		"9A4248C6AC8C2931AB2A86537818E92E7B6C97B6",
	},
	AllowedPolicyOIDs = new List<string>
	{
	},
	AppliesToCombinations = new List<AuthenticationMethodModes?>
	{
		AuthenticationMethodModes.X509CertificateSingleFactor,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.ConditionalAccess.AuthenticationStrength.Policies["{authenticationStrengthPolicy-id}"].CombinationConfigurations.PostAsync(requestBody);


```