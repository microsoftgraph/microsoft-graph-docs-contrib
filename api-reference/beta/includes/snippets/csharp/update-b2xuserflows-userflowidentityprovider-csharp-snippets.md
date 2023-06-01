---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Identity.B2xUserFlows.Item.UserFlowIdentityProviders.Ref.$refPatchRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@odata.id" , "https://graph.microsoft.com/beta/identity/identityProviders/B2X_1_Test"
		},
		{
			"@odata.type" , "#microsoft.graph.identityProvider"
		},
	},
};
await graphClient.Identity.B2xUserFlows["{b2xIdentityUserFlow-id}"].UserFlowIdentityProviders.Ref.PatchAsync(requestBody);


```