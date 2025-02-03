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
HashMap<String, Object> additionalData = new HashMap<String, Object>();
Identity phone = new Identity();
phone.setOdataType("#microsoft.graph.identity");
phone.setId("+12345678901");
additionalData.put("phone", phone);
identity.setAdditionalData(additionalData);
transferTarget.setIdentity(identity);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("languageId", "languageId-value");
additionalData1.put("region", "region-value");
transferTarget.setAdditionalData(additionalData1);
transferPostRequestBody.setTransferTarget(transferTarget);
graphClient.communications().calls().byCallId("{call-id}").transfer().post(transferPostRequestBody);


```