---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CustomAppScope
{
	CustomAttributes = new CustomAppScopeAttributesDictionary
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"RecipientFilter" , "City -eq 'Seattle'"
			},
		},
	},
};
var result = await graphClient.RoleManagement.Exchange.CustomAppScopes["{customAppScope-id}"].PatchAsync(requestBody);


```