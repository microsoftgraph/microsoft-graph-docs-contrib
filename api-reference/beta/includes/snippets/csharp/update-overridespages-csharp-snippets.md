---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Identity.B2cUserFlows.Item.Languages.Item.OverridesPages.Item.Value.$valuePutRequestBody
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
					Value = "Are you sure that you want to cancel your selection?",
				},
			}
		},
	},
};
await graphClient.Identity.B2cUserFlows["{b2cIdentityUserFlow-id}"].Languages["{userFlowLanguageConfiguration-id}"].OverridesPages["{userFlowLanguagePage-id}"].Content.PutAsync(requestBody);


```