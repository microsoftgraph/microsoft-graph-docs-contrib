---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Permission permission = new Permission();
LinkedList<String> roles = new LinkedList<String>();
roles.add("manager");
permission.setRoles(roles);
Permission result = graphClient.storage().fileStorage().containers().byFileStorageContainerId("{fileStorageContainer-id}").permissions().byPermissionId("{permission-id}").patch(permission);


```