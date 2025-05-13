---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new Community
{
	DisplayName = "Financial Advice for Software Engineers",
	Description = "A community where financial advisors who represent customers from software engineering profession can discuss advice and suggestions for their clients.",
	Privacy = CommunityPrivacy.Public,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"owners@odata.bind" , new List<string>
			{
				"https://graph.microsoft.com/beta/users/26be1845-4119-4801-a799-aea79d09f1a2",
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.EmployeeExperience.Communities.PostAsync(requestBody);


```