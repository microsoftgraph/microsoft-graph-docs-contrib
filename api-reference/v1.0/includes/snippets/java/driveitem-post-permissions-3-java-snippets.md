---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Permission permission = new Permission();
SharePointIdentitySet grantedToV2 = new SharePointIdentitySet();
SharePointGroupIdentity sharePointGroup = new SharePointGroupIdentity();
sharePointGroup.setId("ZGYwZTEzYTgtOTExOS00MjdmLWEzNjktOTdjOWM3YjNlYjcyXzE0");
grantedToV2.setSharePointGroup(sharePointGroup);
permission.setGrantedToV2(grantedToV2);
LinkedList<String> roles = new LinkedList<String>();
roles.add("write");
permission.setRoles(roles);
Permission result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").permissions().post(permission);


```