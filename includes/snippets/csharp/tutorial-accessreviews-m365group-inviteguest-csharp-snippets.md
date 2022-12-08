---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var invitation = new Invitation
{
	InvitedUserDisplayName = "John Doe (Tailspin Toys)",
	InvitedUserEmailAddress = "john@tailspintoys.com",
	SendInvitationMessage = false,
	InviteRedirectUrl = "https://myapps.microsoft.com"
};

await graphClient.Invitations
	.Request()
	.AddAsync(invitation);

```