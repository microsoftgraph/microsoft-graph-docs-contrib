---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Invitation invitation = new Invitation();
invitation.setInvitedUserEmailAddress("AdeleV@fabrikam.com");
invitation.setInviteRedirectUrl("https://myapp.contoso.com");
User invitedUser = new User();
invitedUser.setId("264e6d50-eaec-461e-b187-873b1bcf855f");
invitation.setInvitedUser(invitedUser);
invitation.setResetRedemption(true);
Invitation result = graphClient.invitations().post(invitation);


```