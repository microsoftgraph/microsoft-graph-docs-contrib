---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.storage.filestorage.containers.item.transferprincipalownership.TransferPrincipalOwnershipPostRequestBody transferPrincipalOwnershipPostRequestBody = new com.microsoft.graph.beta.storage.filestorage.containers.item.transferprincipalownership.TransferPrincipalOwnershipPostRequestBody();
IdentitySet transferTo = new IdentitySet();
Identity user = new Identity();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("userPrincipalName", "newowner@contoso.com");
user.setAdditionalData(additionalData);
transferTo.setUser(user);
transferPrincipalOwnershipPostRequestBody.setTransferTo(transferTo);
graphClient.storage().fileStorage().containers().byFileStorageContainerId("{fileStorageContainer-id}").transferPrincipalOwnership().post(transferPrincipalOwnershipPostRequestBody);


```