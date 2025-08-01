---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new CustomClaimsPolicy
{
	OdataType = "#microsoft.graph.customClaimsPolicy",
	IncludeBasicClaimSet = boolean,
	IncludeApplicationIdInIssuer = boolean,
	AudienceOverride = "String",
	Claims = new List<CustomClaimBase>
	{
		new CustomClaim
		{
			OdataType = "microsoft.graph.customClaim",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].ClaimsPolicy.PutAsync(requestBody);


```