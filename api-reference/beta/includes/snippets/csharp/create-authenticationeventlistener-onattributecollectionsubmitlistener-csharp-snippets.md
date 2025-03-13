---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new OnAttributeCollectionSubmitListener
{
	OdataType = "#microsoft.graph.onAttributeCollectionSubmitListener",
	Priority = 500,
	Conditions = new AuthenticationConditions
	{
		Applications = new AuthenticationConditionsApplications
		{
			IncludeAllApplications = false,
			IncludeApplications = new List<AuthenticationConditionApplication>
			{
				new AuthenticationConditionApplication
				{
					AppId = "a7eed01f-a333-4983-bc6b-d359ec9e5eef",
				},
			},
		},
	},
	Handler = new OnAttributeCollectionSubmitCustomExtensionHandler
	{
		OdataType = "#microsoft.graph.onAttributeCollectionSubmitCustomExtensionHandler",
		CustomExtension = new OnAttributeCollectionSubmitCustomExtension
		{
			Id = "66867d1f-7824-4f38-aad1-75da1ad09ee2",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.AuthenticationEventListeners.PostAsync(requestBody);


```