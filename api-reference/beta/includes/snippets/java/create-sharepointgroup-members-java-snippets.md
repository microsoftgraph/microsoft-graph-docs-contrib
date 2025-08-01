---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SharePointGroupMember sharePointGroupMember = new SharePointGroupMember();
sharePointGroupMember.setOdataType("#microsoft.graph.sharePointGroupMember");
SharePointIdentitySet identity = new SharePointIdentitySet();
Identity user = new Identity();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("userPrincipalName", "john.smith@contoso.com");
user.setAdditionalData(additionalData);
identity.setUser(user);
sharePointGroupMember.setIdentity(identity);
SharePointGroupMember result = graphClient.storage().fileStorage().containers().byFileStorageContainerId("{fileStorageContainer-id}").sharePointGroups().bySharePointGroupId("{sharePointGroup-id}").members().post(sharePointGroupMember);


```