---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Organization.Item.Branding;

var requestBody = new BrandingDeleteRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"id" , "0"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Organization["{organization-id}"].Branding.DeleteAsync(requestBody);


```