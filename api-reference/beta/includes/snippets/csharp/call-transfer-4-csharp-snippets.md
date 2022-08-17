---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var transferTarget = new InvitationParticipantInfo
{
	EndpointType = EndpointType.Default,
	Identity = new IdentitySet
	{
		Phone = new Identity
		{
			Id = "+12345678901"
		}
	},
	ReplacesCallId = "e5d39592-99bd-4db8-bca8-30fb894ec51d",
	AdditionalData = new Dictionary<string, object>()
	{
		{"languageId", "en-us"},
		{"region", "amer"}
	}
};

await graphClient.Communications.Calls["{call-id}"]
	.Transfer(transferTarget,null)
	.Request()
	.PostAsync();

```