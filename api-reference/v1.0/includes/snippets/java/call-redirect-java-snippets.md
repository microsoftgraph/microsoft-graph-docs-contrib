---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.communications.calls.item.redirect.RedirectPostRequestBody redirectPostRequestBody = new com.microsoft.graph.communications.calls.item.redirect.RedirectPostRequestBody();
LinkedList<InvitationParticipantInfo> targets = new LinkedList<InvitationParticipantInfo>();
InvitationParticipantInfo invitationParticipantInfo = new InvitationParticipantInfo();
invitationParticipantInfo.setOdataType("#microsoft.graph.invitationParticipantInfo");
IdentitySet identity = new IdentitySet();
identity.setOdataType("#microsoft.graph.identitySet");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
Identity phone = new Identity();
phone.setOdataType("#microsoft.graph.identity");
phone.setId("+12345678901");
additionalData.put("phone", phone);
identity.setAdditionalData(additionalData);
invitationParticipantInfo.setIdentity(identity);
targets.add(invitationParticipantInfo);
redirectPostRequestBody.setTargets(targets);
redirectPostRequestBody.setCallbackUri("https://bot.contoso.com/api/calls/24701998-1a73-4d42-8085-bf46ed0ae039");
graphClient.communications().calls().byCallId("{call-id}").redirect().post(redirectPostRequestBody);


```