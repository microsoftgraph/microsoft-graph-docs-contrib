---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new OnPhoneMethodLoadStartListener
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
	Priority = 500,
	Handler = new OnPhoneMethodLoadStartExternalUsersAuthHandler
	{
		OdataType = "#microsoft.graph.onPhoneMethodLoadStartExternalUsersAuthHandler",
		SmsOptions = new PhoneOptions
		{
			IncludeAdditionalRegions = new List<Number>
			{
				222,
				998,
			},
			ExcludeRegions = new List<Number>
			{
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.AuthenticationEventListeners.PostAsync(requestBody);


```