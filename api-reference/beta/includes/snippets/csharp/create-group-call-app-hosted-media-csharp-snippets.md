---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var call = new Call
{
	Direction = CallDirection.Outgoing,
	Subject = "Create a group call with app hosted media",
	CallbackUri = "https://bot.contoso.com/callback",
	Source = new ParticipantInfo
	{
		Identity = new IdentitySet
		{
			Application = new Identity
			{
				DisplayName = "TestBot",
				Id = "dd3885da-f9ab-486b-bfae-85de3d445555"
			}
		}
	},
	Targets = new List<InvitationParticipantInfo>()
	{
		new InvitationParticipantInfo
		{
			Identity = new IdentitySet
			{
				User = new Identity
				{
					DisplayName = "user1",
					Id = "98da8a1a-1b87-452c-a713-65d3f10b5555"
				}
			}
		},
		new ParticipantInfo
		{
			Identity = new IdentitySet
			{
				User = new Identity
				{
					DisplayName = "user2",
					Id = "bf5aae9a-d11d-47a8-93b1-782504c95555"
				}
			}
		}
	},
	RequestedModalities = new List<Modality>()
	{
		Modality.Audio
	},
	MediaConfig = new AppHostedMediaConfig
	{
		Blob = "<Media Session Configuration>",
		RemoveFromDefaultAudioGroup = false
	},
	TenantId = "aa67bd4c-8475-432d-bd41-39f255720e0a"
};

await graphClient.Communications.Calls
	.Request()
	.AddAsync(call);

```