---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Organization.Item.Branding.BrandingDeleteRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"id" , "0"
		},
	},
};
await graphClient.Organization["{organization-id}"].Branding.DeleteAsync(requestBody);


```