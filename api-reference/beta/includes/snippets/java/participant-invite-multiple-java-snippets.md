---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.communications.calls.item.participants.invite.InvitePostRequestBody invitePostRequestBody = new com.microsoft.graph.beta.communications.calls.item.participants.invite.InvitePostRequestBody();
LinkedList<InvitationParticipantInfo> participants = new LinkedList<InvitationParticipantInfo>();
InvitationParticipantInfo invitationParticipantInfo = new InvitationParticipantInfo();
invitationParticipantInfo.setOdataType("#microsoft.graph.invitationParticipantInfo");
invitationParticipantInfo.setReplacesCallId("a7ebfb2d-871e-419c-87af-27290b22e8db");
IdentitySet identity = new IdentitySet();
identity.setOdataType("#microsoft.graph.identitySet");
Identity user = new Identity();
user.setOdataType("#microsoft.graph.identity");
user.setId("7e1b4346-85a6-4bdd-abe3-d11c5d420efe");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("identityProvider", "AAD");
user.setAdditionalData(additionalData);
identity.setUser(user);
invitationParticipantInfo.setIdentity(identity);
participants.add(invitationParticipantInfo);
InvitationParticipantInfo invitationParticipantInfo1 = new InvitationParticipantInfo();
invitationParticipantInfo1.setOdataType("#microsoft.graph.invitationParticipantInfo");
invitationParticipantInfo1.setReplacesCallId("a7ebfb2d-871e-419c-87af-27290b22e8db");
IdentitySet identity1 = new IdentitySet();
identity1.setOdataType("#microsoft.graph.identitySet");
Identity user1 = new Identity();
user1.setOdataType("#microsoft.graph.identity");
user1.setId("1e126418-44a0-4a94-a6f8-0efe1ad71acb");
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("identityProvider", "AAD");
user1.setAdditionalData(additionalData1);
identity1.setUser(user1);
invitationParticipantInfo1.setIdentity(identity1);
participants.add(invitationParticipantInfo1);
invitePostRequestBody.setParticipants(participants);
invitePostRequestBody.setClientContext("f2fa86af-3c51-4bc2-8fc0-475452d9764f");
var result = graphClient.communications().calls().byCallId("{call-id}").participants().invite().post(invitePostRequestBody);


```