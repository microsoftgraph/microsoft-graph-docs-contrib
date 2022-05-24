---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var participants = new List<InvitationParticipantInfo>()
{
	new InvitationParticipantInfo
	{
		ReplacesCallId = "a7ebfb2d-871e-419c-87af-27290b22e8db",
		ParticipantId = "7d501bf1-5ee4-4605-ba92-0ae4513c611c",
		Identity = new IdentitySet
		{
			User = new Identity
			{
				Id = "682b6c37-0729-4fab-ace6-d730d5d9137e",
				AdditionalData = new Dictionary<string, object>()
				{
					{"identityProvider", "AAD"}
				}
			}
		}
	}
};

var clientContext = "f2fa86af-3c51-4bc2-8fc0-475452d9764f";

await graphClient.Communications.Calls["{call-id}"].Participants
	.Invite(participants,clientContext)
	.Request()
	.PostAsync();

```