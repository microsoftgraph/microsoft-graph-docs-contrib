---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new OnPasswordSubmitCustomExtension
{
	OdataType = "#microsoft.graph.onPasswordSubmitCustomExtension",
	DisplayName = "Legacy password validator",
	Description = "Validates passwords against a legacy authentication system for JIT migration",
	EndpointConfiguration = new HttpRequestEndpoint
	{
		OdataType = "#microsoft.graph.httpRequestEndpoint",
		TargetUrl = "https://api.contoso.com/passwordvalidation",
	},
	AuthenticationConfiguration = new AzureAdTokenAuthentication
	{
		OdataType = "#microsoft.graph.azureAdTokenAuthentication",
		ResourceId = "api://api.contoso.com/passwordvalidation",
	},
	ClientConfiguration = new CustomExtensionClientConfiguration
	{
		TimeoutInMilliseconds = 2000,
		MaximumRetries = 1,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.CustomAuthenticationExtensions.PostAsync(requestBody);


```