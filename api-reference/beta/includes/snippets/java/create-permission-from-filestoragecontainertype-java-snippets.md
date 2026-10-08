---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Permission permission = new Permission();
LinkedList<String> roles = new LinkedList<String>();
roles.add("owner");
permission.setRoles(roles);
SharePointIdentitySet grantedToV2 = new SharePointIdentitySet();
Identity user = new Identity();
user.setId("11111111-1111-1111-1111-111111111111");
grantedToV2.setUser(user);
permission.setGrantedToV2(grantedToV2);
Permission result = graphClient.storage().fileStorage().containerTypes().byFileStorageContainerTypeId("{fileStorageContainerType-id}").permissions().post(permission);


```