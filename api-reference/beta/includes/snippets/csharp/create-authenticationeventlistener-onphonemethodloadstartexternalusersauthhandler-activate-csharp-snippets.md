---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new AuthenticationEventListener
{
	OdataType = "#microsoft.graph.onPhoneMethodLoadStartListener",
	Conditions = new AuthenticationConditions
	{
		Applications = new AuthenticationConditionsApplications
		{
			IncludeApplications = new List<string>
			{
				"3dfff01b-0afb-4a07-967f-d1ccbd81102a",
			},
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"priority" , 500
		},
		{
			"handler" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"@odata.type", new UntypedString("#microsoft.graph.onPhoneMethodLoadStartExternalUsersAuthHandler")
				},
				{
					"smsOptions", new UntypedObject(new Dictionary<string, UntypedNode>
					{
						{
							"includeAdditionalRegions", new UntypedArray(new List<UntypedNode>
							{
								new UntypedString("222"),
								new UntypedString("998"),
							})
						},
						{
							"excludeRegions", new UntypedArray(new List<UntypedNode>
							{
							})
						},
					})
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.AuthenticationEventListeners.PostAsync(requestBody);


```