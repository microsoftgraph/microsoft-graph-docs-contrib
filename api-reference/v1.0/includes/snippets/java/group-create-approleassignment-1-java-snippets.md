---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AppRoleAssignment appRoleAssignment = new AppRoleAssignment();
appRoleAssignment.setPrincipalId(UUID.fromString("7679d9a4-2323-44cd-b5c2-673ec88d8b12"));
appRoleAssignment.setResourceId(UUID.fromString("076e8b57-bac8-49d7-9396-e3449b685055"));
appRoleAssignment.setAppRoleId(UUID.fromString("00000000-0000-0000-0000-000000000000"));
AppRoleAssignment result = graphClient.groups().byGroupId("{group-id}").appRoleAssignments().post(appRoleAssignment);


```