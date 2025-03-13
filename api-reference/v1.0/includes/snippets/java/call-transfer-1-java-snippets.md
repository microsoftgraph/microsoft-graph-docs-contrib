---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.communications.calls.item.transfer.TransferPostRequestBody transferPostRequestBody = new com.microsoft.graph.communications.calls.item.transfer.TransferPostRequestBody();
InvitationParticipantInfo transferTarget = new InvitationParticipantInfo();
IdentitySet identity = new IdentitySet();
Identity user = new Identity();
user.setId("550fae72-d251-43ec-868c-373732c2704f");
user.setDisplayName("Heidi Steen");
identity.setUser(user);
transferTarget.setIdentity(identity);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("endpointType", "default");
transferTarget.setAdditionalData(additionalData);
transferPostRequestBody.setTransferTarget(transferTarget);
graphClient.communications().calls().byCallId("{call-id}").transfer().post(transferPostRequestBody);


```