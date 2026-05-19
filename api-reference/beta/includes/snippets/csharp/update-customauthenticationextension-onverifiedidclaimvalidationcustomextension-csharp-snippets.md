---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new OnVerifiedIdClaimValidationCustomExtension
{
	OdataType = "#microsoft.graph.onVerifiedIdClaimValidationCustomExtension",
	DisplayName = "Verified ID Claim Validation (updated)",
	Description = "Updated description for Verified ID claim validation",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.CustomAuthenticationExtensions["{customAuthenticationExtension-id}"].PatchAsync(requestBody);


```