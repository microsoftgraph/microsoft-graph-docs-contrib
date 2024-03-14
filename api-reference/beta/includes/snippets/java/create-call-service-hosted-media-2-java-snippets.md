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
HashMap<String, Object> additionalData = new HashMap<String, Object>();
Identity applicationInstance = new Identity();
applicationInstance.setOdataType("#microsoft.graph.identity");
applicationInstance.setDisplayName("Calling Bot");
applicationInstance.setId("3d913abb-aec0-4964-8fa6-3c6850c4f278");
additionalData.put("applicationInstance", applicationInstance);
identity.setAdditionalData(additionalData);
source.setIdentity(identity);
source.setCountryCode(null);
source.setEndpointType(null);
source.setRegion(null);
source.setLanguageId(null);
call.setSource(source);
LinkedList<InvitationParticipantInfo> targets = new LinkedList<InvitationParticipantInfo>();
InvitationParticipantInfo invitationParticipantInfo = new InvitationParticipantInfo();
invitationParticipantInfo.setOdataType("#microsoft.graph.invitationParticipantInfo");
IdentitySet identity1 = new IdentitySet();
identity1.setOdataType("#microsoft.graph.identitySet");
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
Identity phone = new Identity();
phone.setOdataType("#microsoft.graph.identity");
phone.setId("+12345678901");
additionalData1.put("phone", phone);
identity1.setAdditionalData(additionalData1);
invitationParticipantInfo.setIdentity(identity1);
targets.add(invitationParticipantInfo);
call.setTargets(targets);
LinkedList<Modality> requestedModalities = new LinkedList<Modality>();
requestedModalities.add(Modality.Audio);
call.setRequestedModalities(requestedModalities);
ServiceHostedMediaConfig mediaConfig = new ServiceHostedMediaConfig();
mediaConfig.setOdataType("#microsoft.graph.serviceHostedMediaConfig");
call.setMediaConfig(mediaConfig);
call.setTenantId("aa67bd4c-8475-432d-bd41-39f255720e0a");
Call result = graphClient.communications().calls().post(call);


```