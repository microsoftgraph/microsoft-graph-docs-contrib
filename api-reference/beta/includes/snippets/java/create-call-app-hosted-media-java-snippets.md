---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Call call = new Call();
call.setOdataType("#microsoft.graph.call");
call.setCallbackUri("https://bot.contoso.com/callback");
ParticipantInfo source = new ParticipantInfo();
source.setOdataType("#microsoft.graph.participantInfo");
IdentitySet identity = new IdentitySet();
identity.setOdataType("#microsoft.graph.identitySet");
Identity application = new Identity();
application.setOdataType("#microsoft.graph.identity");
application.setDisplayName("Calling Bot");
application.setId("2891555a-92ff-42e6-80fa-6e1300c6b5c6");
identity.setApplication(application);
source.setIdentity(identity);
source.setRegion(null);
source.setLanguageId(null);
call.setSource(source);
LinkedList<InvitationParticipantInfo> targets = new LinkedList<InvitationParticipantInfo>();
InvitationParticipantInfo invitationParticipantInfo = new InvitationParticipantInfo();
invitationParticipantInfo.setOdataType("#microsoft.graph.invitationParticipantInfo");
IdentitySet identity1 = new IdentitySet();
identity1.setOdataType("#microsoft.graph.identitySet");
Identity user = new Identity();
user.setOdataType("#microsoft.graph.identity");
user.setDisplayName("John");
user.setId("112f7296-5fa4-42ca-bae8-6a692b15d4b8");
identity1.setUser(user);
invitationParticipantInfo.setIdentity(identity1);
targets.add(invitationParticipantInfo);
call.setTargets(targets);
LinkedList<Modality> requestedModalities = new LinkedList<Modality>();
requestedModalities.add(Modality.Audio);
call.setRequestedModalities(requestedModalities);
AppHostedMediaConfig mediaConfig = new AppHostedMediaConfig();
mediaConfig.setOdataType("#microsoft.graph.appHostedMediaConfig");
mediaConfig.setBlob("<Media Session Configuration>");
call.setMediaConfig(mediaConfig);
Call result = graphClient.communications().calls().post(call);


```