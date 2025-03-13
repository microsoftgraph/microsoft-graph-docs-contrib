---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AppRoleAssignment appRoleAssignment = new AppRoleAssignment();
appRoleAssignment.setPrincipalId(UUID.fromString("33ad69f9-da99-4bed-acd0-3f24235cb296"));
appRoleAssignment.setResourceId(UUID.fromString("9028d19c-26a9-4809-8e3f-20ff73e2d75e"));
appRoleAssignment.setAppRoleId(UUID.fromString("ef7437e6-4f94-4a0a-a110-a439eb2aa8f7"));
AppRoleAssignment result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").appRoleAssignedTo().post(appRoleAssignment);


```