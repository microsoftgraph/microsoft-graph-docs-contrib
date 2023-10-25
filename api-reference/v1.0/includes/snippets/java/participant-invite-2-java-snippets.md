---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<InvitationParticipantInfo> participantsList = new LinkedList<InvitationParticipantInfo>();
InvitationParticipantInfo participants = new InvitationParticipantInfo();
IdentitySet identity = new IdentitySet();
Identity phone = new Identity();
phone.id = "+12345678901";
identity.phone = phone;
participants.identity = identity;

participantsList.add(participants);

String clientContext = "f2fa86af-3c51-4bc2-8fc0-475452d9764f";

graphClient.communications().calls("{id}").participants()
	.invite(ParticipantInviteParameterSet
		.newBuilder()
		.withParticipants(participantsList)
		.withClientContext(clientContext)
		.build())
	.buildRequest()
	.post();

```