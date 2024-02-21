---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AppRoleAssignment appRoleAssignment = new AppRoleAssignment();
appRoleAssignment.setPrincipalId(UUID.fromString("cde330e5-2150-4c11-9c5b-14bfdc948c79"));
appRoleAssignment.setResourceId(UUID.fromString("8e881353-1735-45af-af21-ee1344582a4d"));
appRoleAssignment.setAppRoleId(UUID.fromString("00000000-0000-0000-0000-000000000000"));
AppRoleAssignment result = graphClient.users().byUserId("{user-id}").appRoleAssignments().post(appRoleAssignment);


```