---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Call call = new Call();
call.setOdataType("#microsoft.graph.call");
call.setCallbackUri("https://bot.contoso.com/callback");
LinkedList<InvitationParticipantInfo> targets = new LinkedList<InvitationParticipantInfo>();
InvitationParticipantInfo invitationParticipantInfo = new InvitationParticipantInfo();
invitationParticipantInfo.setOdataType("#microsoft.graph.invitationParticipantInfo");
IdentitySet identity = new IdentitySet();
identity.setOdataType("#microsoft.graph.identitySet");
Identity user = new Identity();
user.setOdataType("#microsoft.graph.identity");
user.setDisplayName("John");
user.setId("112f7296-5fa4-42ca-bae8-6a692b15d4b8");
identity.setUser(user);
invitationParticipantInfo.setIdentity(identity);
targets.add(invitationParticipantInfo);
call.setTargets(targets);
LinkedList<Modality> requestedModalities = new LinkedList<Modality>();
requestedModalities.add(Modality.Audio);
call.setRequestedModalities(requestedModalities);
OutgoingCallOptions callOptions = new OutgoingCallOptions();
callOptions.setOdataType("#microsoft.graph.outgoingCallOptions");
callOptions.setIsContentSharingNotificationEnabled(true);
call.setCallOptions(callOptions);
ServiceHostedMediaConfig mediaConfig = new ServiceHostedMediaConfig();
mediaConfig.setOdataType("#microsoft.graph.serviceHostedMediaConfig");
call.setMediaConfig(mediaConfig);
Call result = graphClient.communications().calls().post(call);


```