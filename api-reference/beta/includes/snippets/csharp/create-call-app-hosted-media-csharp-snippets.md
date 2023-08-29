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
	Source = new ParticipantInfo
	{
		OdataType = "#microsoft.graph.participantInfo",
		Identity = new IdentitySet
		{
			OdataType = "#microsoft.graph.identitySet",
			Application = new Identity
			{
				OdataType = "#microsoft.graph.identity",
				DisplayName = "Calling Bot",
				Id = "2891555a-92ff-42e6-80fa-6e1300c6b5c6",
			},
		},
		Region = null,
		LanguageId = null,
	},
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
	MediaConfig = new AppHostedMediaConfig
	{
		OdataType = "#microsoft.graph.appHostedMediaConfig",
		Blob = "<Media Session Configuration>",
	},
};
var result = await graphClient.Communications.Calls.PostAsync(requestBody);


```