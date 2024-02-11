---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Invitation invitation = new Invitation();
invitation.setInvitedUserDisplayName("John Doe (Tailspin Toys)");
invitation.setInvitedUserEmailAddress("john@tailspintoys.com");
invitation.setSendInvitationMessage(false);
invitation.setInviteRedirectUrl("https://myapps.microsoft.com");
Invitation result = graphClient.invitations().post(invitation);


```