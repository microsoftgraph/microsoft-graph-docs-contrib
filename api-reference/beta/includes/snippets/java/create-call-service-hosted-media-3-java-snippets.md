---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Call call = new Call();
call.callbackUri = "https://bot.contoso.com/callback";
ParticipantInfo source = new ParticipantInfo();
IdentitySet identity = new IdentitySet();
Identity applicationInstance = new Identity();
applicationInstance.displayName = "Calling Bot";
applicationInstance.id = "3d913abb-aec0-4964-8fa6-3c6850c4f278";
identity.applicationInstance = applicationInstance;
source.identity = identity;
source.countryCode = null;
source.endpointType = null;
source.region = null;
source.languageId = null;
call.source = source;
LinkedList<InvitationParticipantInfo> targetsList = new LinkedList<InvitationParticipantInfo>();
InvitationParticipantInfo targets = new InvitationParticipantInfo();
IdentitySet identity1 = new IdentitySet();
Identity phone = new Identity();
phone.id = "+12345678901";
identity1.phone = phone;
targets.identity = identity1;
targetsList.add(targets);
call.targets = targetsList;
LinkedList<Modality> requestedModalitiesList = new LinkedList<Modality>();
requestedModalitiesList.add(Modality.AUDIO);
call.requestedModalities = requestedModalitiesList;
AppHostedMediaConfig mediaConfig = new AppHostedMediaConfig();
mediaConfig.blob = "<Media Session Configuration>";
call.mediaConfig = mediaConfig;
call.tenantId = "aa67bd4c-8475-432d-bd41-39f255720e0a";

graphClient.communications().calls()
	.buildRequest()
	.post(call);

```