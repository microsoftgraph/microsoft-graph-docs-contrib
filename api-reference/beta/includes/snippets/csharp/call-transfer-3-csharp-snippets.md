---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Communications.Calls.Item.Transfer;
using Microsoft.Graph.Beta.Models;

var requestBody = new TransferPostRequestBody
{
	TransferTarget = new InvitationParticipantInfo
	{
		EndpointType = EndpointType.Default,
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
				"languageId" , "languageId-value"
			},
			{
				"region" , "region-value"
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Communications.Calls["{call-id}"].Transfer.PostAsync(requestBody);


```