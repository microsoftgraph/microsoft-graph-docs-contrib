---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var call = new Call
{
	CallbackUri = "https://bot.contoso.com/callback",
	Source = new ParticipantInfo
	{
		Identity = new IdentitySet
		{
			ApplicationInstance = new Identity
			{
				DisplayName = "Calling Bot",
				Id = "3d913abb-aec0-4964-8fa6-3c6850c4f278"
			}
		},
		CountryCode = null,
		EndpointType = null,
		Region = null,
		LanguageId = null
	},
	Targets = new List<InvitationParticipantInfo>()
	{
		new InvitationParticipantInfo
		{
			Identity = new IdentitySet
			{
				Phone = new Identity
				{
					Id = "+12345678901"
				}
			}
		}
	},
	RequestedModalities = new List<Modality>()
	{
		Modality.Audio
	},
	MediaConfig = new ServiceHostedMediaConfig
	{
	},
	TenantId = "aa67bd4c-8475-432d-bd41-39f255720e0a"
};

await graphClient.Communications.Calls
	.Request()
	.AddAsync(call);

```