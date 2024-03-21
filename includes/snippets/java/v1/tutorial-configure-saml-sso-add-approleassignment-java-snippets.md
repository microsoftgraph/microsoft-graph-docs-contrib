---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AppRoleAssignment appRoleAssignment = new AppRoleAssignment();
appRoleAssignment.setPrincipalId(UUID.fromString("59bb3898-0621-4414-ac61-74f9d7201355"));
appRoleAssignment.setPrincipalType("User");
appRoleAssignment.setAppRoleId(UUID.fromString("3a84e31e-bffa-470f-b9e6-754a61e4dc63"));
appRoleAssignment.setResourceId(UUID.fromString("d3616293-fff8-4415-9f01-33b05dad1b46"));
AppRoleAssignment result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").appRoleAssignments().post(appRoleAssignment);


```