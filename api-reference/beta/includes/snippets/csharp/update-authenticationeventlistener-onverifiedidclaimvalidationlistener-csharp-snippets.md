---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new OnVerifiedIdClaimValidationListener
{
	OdataType = "#microsoft.graph.onVerifiedIdClaimValidationListener",
	DisplayName = "Verified ID Claim Validation Listener (updated)",
	Handler = new OnVerifiedIdClaimValidationCustomExtensionHandler
	{
		OdataType = "#microsoft.graph.onVerifiedIdClaimValidationCustomExtensionHandler",
		Configuration = new CustomExtensionOverwriteConfiguration
		{
			OdataType = "#microsoft.graph.customExtensionOverwriteConfiguration",
			ClientConfiguration = new CustomExtensionClientConfiguration
			{
				OdataType = "#microsoft.graph.customExtensionClientConfiguration",
				MaximumRetries = 1,
				TimeoutInMilliseconds = 2000,
			},
			BehaviorOnError = new CustomExtensionBehaviorOnError
			{
				OdataType = "#microsoft.graph.customExtensionBehaviorOnError",
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.AuthenticationEventListeners["{authenticationEventListener-id}"].PatchAsync(requestBody);


```