---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.communications.calls.item.participants.invite.InvitePostRequestBody invitePostRequestBody = new com.microsoft.graph.communications.calls.item.participants.invite.InvitePostRequestBody();
LinkedList<InvitationParticipantInfo> participants = new LinkedList<InvitationParticipantInfo>();
InvitationParticipantInfo invitationParticipantInfo = new InvitationParticipantInfo();
invitationParticipantInfo.setOdataType("#microsoft.graph.invitationParticipantInfo");
invitationParticipantInfo.setReplacesCallId("a7ebfb2d-871e-419c-87af-27290b22e8db");
IdentitySet identity = new IdentitySet();
identity.setOdataType("#microsoft.graph.identitySet");
Identity user = new Identity();
user.setOdataType("#microsoft.graph.identity");
user.setId("7e1b4346-85a6-4bdd-abe3-d11c5d420efe");
user.setDisplayName("string");
identity.setUser(user);
invitationParticipantInfo.setIdentity(identity);
participants.add(invitationParticipantInfo);
invitePostRequestBody.setParticipants(participants);
invitePostRequestBody.setClientContext("f2fa86af-3c51-4bc2-8fc0-475452d9764f");
var result = graphClient.communications().calls().byCallId("{call-id}").participants().invite().post(invitePostRequestBody);


```