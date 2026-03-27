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
	OdataType = "#microsoft.graph.onPasswordSubmitListener",
	DisplayName = "JIT migration listener",
	Conditions = new AuthenticationConditions
	{
		Applications = new AuthenticationConditionsApplications
		{
			IncludeApplications = new List<AuthenticationConditionApplication>
			{
				new AuthenticationConditionApplication
				{
					AppId = "00011111-aaaa-2222-bbbb-3333cccc4444",
				},
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"includeAllApplications" , false
				},
			},
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"handler" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"@odata.type", new UntypedString("#microsoft.graph.onPasswordMigrationCustomExtensionHandler")
				},
				{
					"migrationPropertyId", new UntypedString("extension_b7b1c57b532f40b8b5ed4b7a7ba67401_requiresMigration")
				},
				{
					"customExtension", new UntypedObject(new Dictionary<string, UntypedNode>
					{
						{
							"id", new UntypedString("6fc5012e-7665-43d6-9708-4370863f4e6e")
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