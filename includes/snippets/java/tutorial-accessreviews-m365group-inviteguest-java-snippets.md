---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Invitation invitation = new Invitation();
invitation.invitedUserDisplayName = "John Doe (Tailspin Toys)";
invitation.invitedUserEmailAddress = "john@tailspintoys.com";
invitation.sendInvitationMessage = false;
invitation.inviteRedirectUrl = "https://myapps.microsoft.com";

graphClient.invitations()
	.buildRequest()
	.post(invitation);

```