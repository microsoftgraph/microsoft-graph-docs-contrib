---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<InvitationParticipantInfo> targetsList = new LinkedList<InvitationParticipantInfo>();
InvitationParticipantInfo targets = new InvitationParticipantInfo();
IdentitySet identity = new IdentitySet();
Identity phone = new Identity();
phone.id = "+12345678901";
identity.phone = phone;
targets.identity = identity;

targetsList.add(targets);

String callbackUri = "https://bot.contoso.com/api/calls/24701998-1a73-4d42-8085-bf46ed0ae039";

graphClient.communications().calls("491f0b00-ffff-4bc9-a43e-b226498ec22a")
	.redirect(CallRedirectParameterSet
		.newBuilder()
		.withTargets(targetsList)
		.withTargetDisposition(null)
		.withTimeout(null)
		.withMaskCallee(null)
		.withMaskCaller(null)
		.withCallbackUri(callbackUri)
		.build())
	.buildRequest()
	.post();

```