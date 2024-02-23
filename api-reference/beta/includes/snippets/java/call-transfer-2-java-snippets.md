---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.communications.calls.item.transfer.TransferPostRequestBody transferPostRequestBody = new com.microsoft.graph.beta.communications.calls.item.transfer.TransferPostRequestBody();
InvitationParticipantInfo transferTarget = new InvitationParticipantInfo();
transferTarget.setOdataType("#microsoft.graph.invitationParticipantInfo");
transferTarget.setEndpointType(EndpointType.Default);
IdentitySet identity = new IdentitySet();
identity.setOdataType("#microsoft.graph.identitySet");
Identity user = new Identity();
user.setOdataType("#microsoft.graph.identity");
user.setId("550fae72-d251-43ec-868c-373732c2704f");
user.setDisplayName("Heidi Steen");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("tenantId", "72f988bf-86f1-41af-91ab-2d7cd011db47");
user.setAdditionalData(additionalData);
identity.setUser(user);
transferTarget.setIdentity(identity);
transferTarget.setReplacesCallId("e5d39592-99bd-4db8-bca8-30fb894ec51d");
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("languageId", "en-us");
additionalData1.put("region", "amer");
transferTarget.setAdditionalData(additionalData1);
transferPostRequestBody.setTransferTarget(transferTarget);
graphClient.communications().calls().byCallId("{call-id}").transfer().post(transferPostRequestBody);


```