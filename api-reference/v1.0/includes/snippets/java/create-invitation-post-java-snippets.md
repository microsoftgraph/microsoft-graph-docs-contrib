---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Invitation invitation = new Invitation();
invitation.invitedUserEmailAddress = "admin@fabrikam.com";
invitation.inviteRedirectUrl = "https://myapp.contoso.com";

graphClient.invitations()
	.buildRequest()
	.post(invitation);

```