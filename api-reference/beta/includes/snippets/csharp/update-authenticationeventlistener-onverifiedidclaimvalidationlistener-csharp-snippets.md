---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new AuthenticationEventListener
{
	OdataType = "#microsoft.graph.onVerifiedIdClaimValidationListener",
	DisplayName = "Verified ID Claim Validation Listener (updated)",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"handler" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"@odata.type", new UntypedString("#microsoft.graph.onVerifiedIdClaimValidationCustomExtensionHandler")
				},
				{
					"configuration", new UntypedObject(new Dictionary<string, UntypedNode>
					{
						{
							"@odata.type", new UntypedString("#microsoft.graph.customExtensionOverwriteConfiguration")
						},
						{
							"clientConfiguration", new UntypedObject(new Dictionary<string, UntypedNode>
							{
								{
									"@odata.type", new UntypedString("#microsoft.graph.customExtensionClientConfiguration")
								},
								{
									"maximumRetries", new UntypedString("1")
								},
								{
									"timeoutInMilliseconds", new UntypedString("2000")
								},
							})
						},
						{
							"behaviorOnError", new UntypedObject(new Dictionary<string, UntypedNode>
							{
								{
									"@odata.type", new UntypedString("#microsoft.graph.customExtensionBehaviorOnError")
								},
							})
						},
					})
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.AuthenticationEventListeners["{authenticationEventListener-id}"].PatchAsync(requestBody);


```