---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Call call = new Call();
call.setOdataType("#microsoft.graph.call");
call.setDirection(CallDirection.Outgoing);
call.setSubject("Create a group call with service hosted media");
call.setCallbackUri("https://bot.contoso.com/callback");
ParticipantInfo source = new ParticipantInfo();
source.setOdataType("#microsoft.graph.participantInfo");
IdentitySet identity = new IdentitySet();
identity.setOdataType("#microsoft.graph.identitySet");
Identity application = new Identity();
application.setOdataType("#microsoft.graph.identity");
application.setDisplayName("TestBot");
application.setId("dd3885da-f9ab-486b-bfae-85de3d445555");
identity.setApplication(application);
source.setIdentity(identity);
call.setSource(source);
LinkedList<InvitationParticipantInfo> targets = new LinkedList<InvitationParticipantInfo>();
InvitationParticipantInfo invitationParticipantInfo = new InvitationParticipantInfo();
invitationParticipantInfo.setOdataType("#microsoft.graph.invitationParticipantInfo");
IdentitySet identity1 = new IdentitySet();
identity1.setOdataType("#microsoft.graph.identitySet");
Identity user = new Identity();
user.setOdataType("#microsoft.graph.identity");
user.setDisplayName("user1");
user.setId("98da8a1a-1b87-452c-a713-65d3f10b5555");
identity1.setUser(user);
invitationParticipantInfo.setIdentity(identity1);
targets.add(invitationParticipantInfo);
ParticipantInfo invitationParticipantInfo1 = new ParticipantInfo();
invitationParticipantInfo1.setOdataType("#microsoft.graph.participantInfo");
IdentitySet identity2 = new IdentitySet();
identity2.setOdataType("#microsoft.graph.identitySet");
Identity user1 = new Identity();
user1.setOdataType("#microsoft.graph.identity");
user1.setDisplayName("user2");
user1.setId("bf5aae9a-d11d-47a8-93b1-782504c95555");
identity2.setUser(user1);
invitationParticipantInfo1.setIdentity(identity2);
targets.add(invitationParticipantInfo1);
call.setTargets(targets);
LinkedList<Modality> requestedModalities = new LinkedList<Modality>();
requestedModalities.add(Modality.Audio);
call.setRequestedModalities(requestedModalities);
ServiceHostedMediaConfig mediaConfig = new ServiceHostedMediaConfig();
mediaConfig.setOdataType("#microsoft.graph.serviceHostedMediaConfig");
mediaConfig.setRemoveFromDefaultAudioGroup(false);
call.setMediaConfig(mediaConfig);
call.setTenantId("aa67bd4c-8475-432d-bd41-39f255720e0a");
Call result = graphClient.communications().calls().post(call);


```