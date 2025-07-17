---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Identity.B2cUserFlows.Item.Languages.Item.OverridesPages.Item.Value;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new $valuePutRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"LocalizedStrings" , new List<object>
			{
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"elementType", new UntypedString("UxElement")
					},
					{
						"elementId", new UntypedNull()
					},
					{
						"stringId", new UntypedString("alert_message")
					},
					{
						"override", new UntypedBoolean(true)
					},
					{
						"value", new UntypedString("Are you sure that you want to cancel your selection?")
					},
				}),
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Identity.B2cUserFlows["{b2cIdentityUserFlow-id}"].Languages["{userFlowLanguageConfiguration-id}"].OverridesPages["{userFlowLanguagePage-id}"].Content.PutAsync(requestBody);


```