---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CustomAppScope
{
	Type = "RecipientScope",
	DisplayName = "Protected Exec Users",
	CustomAttributes = new CustomAppScopeAttributesDictionary
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"Exclusive" , false
			},
			{
				"RecipientFilter" , "Title -like 'VP*'"
			},
		},
	},
};
var result = await graphClient.RoleManagement.Exchange.CustomAppScopes.PostAsync(requestBody);


```