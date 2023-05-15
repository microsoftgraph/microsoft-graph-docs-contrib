---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Identity.B2xUserFlows.Item.Languages.Item.OverridesPages.Item.Value.$valuePutRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"LocalizedStrings" , new List<>
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
await graphClient.Identity.B2xUserFlows["{b2xIdentityUserFlow-id}"].Languages["{userFlowLanguageConfiguration-id}"].OverridesPages["{userFlowLanguagePage-id}"].Content.PutAsync(requestBody);


```