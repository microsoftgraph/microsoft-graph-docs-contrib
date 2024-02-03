---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Identity.B2xUserFlows.Item.Languages.Item.OverridesPages.Item.Value;

var requestBody = new $valuePutRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"LocalizedStrings" , new List<object>
			{
				new 
				{
					ElementType = "UxElement",
					ElementId = null,
					StringId = "alert_message",
					Override = true,
					Value = "Are you sure that you want to cancel entering your information?",
				},
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Identity.B2xUserFlows["{b2xIdentityUserFlow-id}"].Languages["{userFlowLanguageConfiguration-id}"].OverridesPages["{userFlowLanguagePage-id}"].Content.PutAsync(requestBody);


```