---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new CustomAuthenticationExtension
{
	OdataType = "#microsoft.graph.onOtpSendCustomExtension",
	AuthenticationConfiguration = new AzureAdTokenAuthentication
	{
		OdataType = "#microsoft.graph.azureAdTokenAuthentication",
		ResourceId = "api://onotpsendcustomextension.b2c.expert/fb96de85-2abe-4b02-b45f-64ba122c509e",
	},
	ClientConfiguration = new CustomExtensionClientConfiguration
	{
		TimeoutInMilliseconds = 2000,
		MaximumRetries = 1,
	},
	Description = "Use an external Email provider to send OTP Codes.",
	DisplayName = "onEmailOtpSendCustomExtension",
	EndpointConfiguration = new HttpRequestEndpoint
	{
		OdataType = "#microsoft.graph.httpRequestEndpoint",
		TargetUrl = "https://onotpsendcustomextension.b2c.expert/api/OnOTPCodeSendToTeamsDemo",
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"behaviorOnError" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"@odata.type", new UntypedString("microsoft.graph.customExtensionBehaviorOnError")
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.CustomAuthenticationExtensions.PostAsync(requestBody);


```