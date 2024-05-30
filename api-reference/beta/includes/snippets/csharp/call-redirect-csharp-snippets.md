---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Communications.Calls.Item.Redirect;
using Microsoft.Graph.Beta.Models;

var requestBody = new RedirectPostRequestBody
{
	Targets = new List<InvitationParticipantInfo>
	{
		new InvitationParticipantInfo
		{
			OdataType = "#microsoft.graph.invitationParticipantInfo",
			Identity = new IdentitySet
			{
				OdataType = "#microsoft.graph.identitySet",
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
		},
	},
	CallbackUri = "https://bot.contoso.com/api/calls/24701998-1a73-4d42-8085-bf46ed0ae039",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Communications.Calls["{call-id}"].Redirect.PostAsync(requestBody);


```