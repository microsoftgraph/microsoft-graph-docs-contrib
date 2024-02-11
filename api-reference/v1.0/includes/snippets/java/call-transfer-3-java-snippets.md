---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.communications.calls.item.transfer.TransferPostRequestBody transferPostRequestBody = new com.microsoft.graph.communications.calls.item.transfer.TransferPostRequestBody();
InvitationParticipantInfo transferTarget = new InvitationParticipantInfo();
IdentitySet identity = new IdentitySet();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
Identity phone = new Identity();
phone.setOdataType("#microsoft.graph.identity");
phone.setId("+12345678901");
additionalData.put("phone", phone);
identity.setAdditionalData(additionalData);
transferTarget.setIdentity(identity);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("endpointType", "default");
additionalData1.put("languageId", "languageId-value");
additionalData1.put("region", "region-value");
transferTarget.setAdditionalData(additionalData1);
transferPostRequestBody.setTransferTarget(transferTarget);
HashMap<String, Object> additionalData2 = new HashMap<String, Object>();
additionalData2.put("clientContext", "9e90d1c1-f61e-43e7-9f75-d420159aae08");
transferPostRequestBody.setAdditionalData(additionalData2);
graphClient.communications().calls().byCallId("{call-id}").transfer().post(transferPostRequestBody);


```