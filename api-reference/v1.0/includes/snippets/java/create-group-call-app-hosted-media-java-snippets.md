---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Call call = new Call();
call.direction = CallDirection.OUTGOING;
call.subject = "Create a group call with application hosted media";
call.callbackUri = "https://bot.contoso.com/callback";
ParticipantInfo source = new ParticipantInfo();
IdentitySet identity = new IdentitySet();
Identity application = new Identity();
application.displayName = "TestBot";
application.id = "dd3885da-f9ab-486b-bfae-85de3d445555";
identity.application = application;
source.identity = identity;
call.source = source;
LinkedList<InvitationParticipantInfo> targetsList = new LinkedList<InvitationParticipantInfo>();
InvitationParticipantInfo targets = new InvitationParticipantInfo();
IdentitySet identity1 = new IdentitySet();
Identity user = new Identity();
user.displayName = "user1";
user.id = "98da8a1a-1b87-452c-a713-65d3f10b5555";
identity1.user = user;
targets.identity = identity1;
targetsList.add(targets);
InvitationParticipantInfo targets1 = new InvitationParticipantInfo();
IdentitySet identity2 = new IdentitySet();
Identity user1 = new Identity();
user1.displayName = "user2";
user1.id = "bf5aae9a-d11d-47a8-93b1-782504c95555";
identity2.user = user1;
targets1.identity = identity2;
targetsList.add(targets1);
call.targets = targetsList;
LinkedList<Modality> requestedModalitiesList = new LinkedList<Modality>();
requestedModalitiesList.add(Modality.AUDIO);
call.requestedModalities = requestedModalitiesList;
AppHostedMediaConfig mediaConfig = new AppHostedMediaConfig();
mediaConfig.removeFromDefaultAudioGroup = false;
call.mediaConfig = mediaConfig;

graphClient.communications().calls()
	.buildRequest()
	.post(call);

```