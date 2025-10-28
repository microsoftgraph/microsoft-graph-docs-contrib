---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new Site
{
	Name = "Communication Site Test",
	WebUrl = "https://contoso.sharepoint.com/sites/commsite1",
	Description = "Test Site Description",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"locale" , "en-US"
		},
		{
			"shareByEmailEnabled" , false
		},
		{
			"template" , "sitepagepublishing"
		},
		{
			"ownerIdentityToResolve" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"email", new UntypedString("ryan@contoso.com")
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Sites.PostAsync(requestBody);


```