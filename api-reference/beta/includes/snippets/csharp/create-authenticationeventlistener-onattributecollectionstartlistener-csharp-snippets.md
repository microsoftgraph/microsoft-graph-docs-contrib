---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new OnAttributeCollectionStartListener
{
	OdataType = "#microsoft.graph.onAttributeCollectionStartListener",
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
	Handler = new OnAttributeCollectionStartCustomExtensionHandler
	{
		OdataType = "#microsoft.graph.onAttributeCollectionStartCustomExtensionHandler",
		CustomExtension = new OnAttributeCollectionStartCustomExtension
		{
			Id = "2d9c3e8d-88a9-444e-8c4c-f0c6c4fe1c02",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.AuthenticationEventListeners.PostAsync(requestBody);


```