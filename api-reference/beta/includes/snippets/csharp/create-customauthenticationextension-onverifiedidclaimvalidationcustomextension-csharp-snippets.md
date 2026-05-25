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
	DisplayName = "Verified ID Claim Validation",
	Description = "Validate claims from a Verified ID presentation",
	EndpointConfiguration = new HttpRequestEndpoint
	{
		OdataType = "#microsoft.graph.httpRequestEndpoint",
		TargetUrl = "https://contoso.azurewebsites.net/api/verifiedIdClaimValidation",
	},
	AuthenticationConfiguration = new AzureAdTokenAuthentication
	{
		OdataType = "#microsoft.graph.azureAdTokenAuthentication",
		ResourceId = "api://contoso.azurewebsites.net/verifiedIdClaimValidation",
	},
	ClientConfiguration = new CustomExtensionClientConfiguration
	{
		TimeoutInMilliseconds = 2000,
		MaximumRetries = 1,
	},
	BehaviorOnError = new CustomExtensionBehaviorOnError
	{
		OdataType = "#microsoft.graph.customExtensionBehaviorOnError",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.CustomAuthenticationExtensions.PostAsync(requestBody);


```