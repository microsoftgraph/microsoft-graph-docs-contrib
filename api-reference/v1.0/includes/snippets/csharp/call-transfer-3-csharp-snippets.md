---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Communications.Calls.Item.Transfer;
using Microsoft.Graph.Models;

var requestBody = new TransferPostRequestBody
{
	TransferTarget = new InvitationParticipantInfo
	{
		Identity = new IdentitySet
		{
			AdditionalData = new Dictionary<string, object>
			{
				{
					"phone" , new Identity
					{
						OdataType = "#microsoft.graph.identity",
						Id = "+12345678901",
					}
				},
			},
		},
		AdditionalData = new Dictionary<string, object>
		{
			{
				"endpointType" , "default"
			},
			{
				"languageId" , "languageId-value"
			},
			{
				"region" , "region-value"
			},
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"clientContext" , "9e90d1c1-f61e-43e7-9f75-d420159aae08"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Communications.Calls["{call-id}"].Transfer.PostAsync(requestBody);


```