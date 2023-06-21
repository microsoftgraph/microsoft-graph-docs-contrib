---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Call
{
	OdataType = "#microsoft.graph.call",
	CallbackUri = "https://bot.contoso.com/callback",
	Targets = new List<InvitationParticipantInfo>
	{
		new InvitationParticipantInfo
		{
			OdataType = "#microsoft.graph.invitationParticipantInfo",
			Identity = new IdentitySet
			{
				OdataType = "#microsoft.graph.identitySet",
				User = new Identity
				{
					OdataType = "#microsoft.graph.identity",
					DisplayName = "John",
					Id = "112f7296-5fa4-42ca-bae8-6a692b15d4b8",
				},
			},
		},
	},
	RequestedModalities = new List<Modality?>
	{
		Modality.Audio,
	},
	CallOptions = new OutgoingCallOptions
	{
		OdataType = "#microsoft.graph.outgoingCallOptions",
		IsContentSharingNotificationEnabled = true,
	},
	MediaConfig = new ServiceHostedMediaConfig
	{
		OdataType = "#microsoft.graph.serviceHostedMediaConfig",
	},
};
var result = await graphClient.Communications.Calls.PostAsync(requestBody);


```