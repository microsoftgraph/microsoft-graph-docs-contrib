---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AppRoleAssignment appRoleAssignment = new AppRoleAssignment();
appRoleAssignment.setPrincipalId(UUID.fromString("040f9599-7c0f-4f94-aa75-8394c4c6ea9b"));
appRoleAssignment.setPrincipalType("User");
appRoleAssignment.setAppRoleId(UUID.fromString("3a84e31e-bffa-470f-b9e6-754a61e4dc63"));
appRoleAssignment.setResourceId(UUID.fromString("a750f6cf-2319-464a-bcc3-456926736a91"));
AppRoleAssignment result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").appRoleAssignments().post(appRoleAssignment);


```