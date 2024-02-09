---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AppRoleAssignment appRoleAssignment = new AppRoleAssignment();
appRoleAssignment.setPrincipalId(UUID.fromString("9028d19c-26a9-4809-8e3f-20ff73e2d75e"));
appRoleAssignment.setResourceId(UUID.fromString("8fce32da-1246-437b-99cd-76d1d4677bd5"));
appRoleAssignment.setAppRoleId(UUID.fromString("498476ce-e0fe-48b0-b801-37ba7e2685c6"));
AppRoleAssignment result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").appRoleAssignments().post(appRoleAssignment);


```