---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.communications.calls.item.transfer.TransferPostRequestBody transferPostRequestBody = new com.microsoft.graph.beta.communications.calls.item.transfer.TransferPostRequestBody();
InvitationParticipantInfo transferTarget = new InvitationParticipantInfo();
transferTarget.setEndpointType(EndpointType.Default);
IdentitySet identity = new IdentitySet();
Identity user = new Identity();
user.setId("550fae72-d251-43ec-868c-373732c2704f");
user.setDisplayName("Heidi Steen");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("tenantId", "72f988bf-86f1-41af-91ab-2d7cd011db47");
user.setAdditionalData(additionalData);
identity.setUser(user);
transferTarget.setIdentity(identity);
transferPostRequestBody.setTransferTarget(transferTarget);
ParticipantInfo transferee = new ParticipantInfo();
IdentitySet identity1 = new IdentitySet();
Identity user1 = new Identity();
user1.setId("751f6800-3180-414d-bd94-333364659951");
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("tenantId", "72f988bf-86f1-41af-91ab-2d7cd011db47");
user1.setAdditionalData(additionalData1);
identity1.setUser(user1);
transferee.setIdentity(identity1);
transferee.setParticipantId("909c6581-5130-43e9-88f3-fcb3582cde37");
transferPostRequestBody.setTransferee(transferee);
HashMap<String, Object> additionalData2 = new HashMap<String, Object>();
additionalData2.put("languageId", "languageId-value");
additionalData2.put("region", "region-value");
transferPostRequestBody.setAdditionalData(additionalData2);
graphClient.communications().calls().byCallId("{call-id}").transfer().post(transferPostRequestBody);


```