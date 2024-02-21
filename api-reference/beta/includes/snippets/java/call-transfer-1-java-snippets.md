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
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("languageId", "languageId-value");
additionalData1.put("region", "region-value");
transferTarget.setAdditionalData(additionalData1);
transferPostRequestBody.setTransferTarget(transferTarget);
graphClient.communications().calls().byCallId("{call-id}").transfer().post(transferPostRequestBody);


```