---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Permission permission = new Permission();
LinkedList<String> roles = new LinkedList<String>();
roles.add("reader");
permission.setRoles(roles);
SharePointIdentitySet grantedToV2 = new SharePointIdentitySet();
Identity user = new Identity();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("userPrincipalName", "jacob@fabrikam.com");
user.setAdditionalData(additionalData);
grantedToV2.setUser(user);
permission.setGrantedToV2(grantedToV2);
Permission result = graphClient.storage().fileStorage().containers().byFileStorageContainerId("{fileStorageContainer-id}").permissions().post(permission);


```