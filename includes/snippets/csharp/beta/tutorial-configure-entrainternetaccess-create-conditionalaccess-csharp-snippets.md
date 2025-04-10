---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new ConditionalAccessPolicy
{
	Conditions = new ConditionalAccessConditionSet
	{
		Applications = new ConditionalAccessApplications
		{
			IncludeApplications = new List<string>
			{
				"5dc48733-b5df-475c-a49b-fa307ef00853",
			},
		},
		Users = new ConditionalAccessUsers
		{
			IncludeUsers = new List<string>
			{
				"00aa00aa-bb11-cc22-dd33-44ee44ee44ee",
			},
		},
	},
	DisplayName = "UserA Access to AI and Bing",
	SessionControls = new ConditionalAccessSessionControls
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"globalSecureAccessFilteringProfile" , new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"profileId", new UntypedString("dddddddd-9999-0000-1111-eeeeeeeeeeee")
					},
					{
						"isEnabled", new UntypedBoolean(true)
					},
				})
			},
		},
	},
	State = ConditionalAccessPolicyState.Enabled,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.ConditionalAccess.Policies.PostAsync(requestBody);


```