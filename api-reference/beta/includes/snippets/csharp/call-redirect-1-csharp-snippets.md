---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Communications.Calls.Item.Redirect.RedirectPostRequestBody
{
	Targets = new List<InvitationParticipantInfo>
	{
		new InvitationParticipantInfo
		{
			OdataType = "#microsoft.graph.invitationParticipantInfo",
			Identity = new IdentitySet
			{
				OdataType = "#microsoft.graph.identitySet",
				Application = new Identity
				{
					OdataType = "#microsoft.graph.identity",
					DisplayName = "test bot 2",
					Id = "22bfd41f-550e-477d-8789-f6f7bd2a5e8b",
				},
			},
		},
	},
	CallbackUri = "https://bot.contoso.com/api/calls/24701998-1a73-4d42-8085-bf46ed0ae039",
};
await graphClient.Communications.Calls["{call-id}"].Redirect.PostAsync(requestBody);


```