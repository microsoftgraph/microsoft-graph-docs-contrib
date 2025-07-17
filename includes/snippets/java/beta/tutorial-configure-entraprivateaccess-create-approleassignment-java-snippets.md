---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AppRoleAssignment appRoleAssignment = new AppRoleAssignment();
appRoleAssignment.setPrincipalId(UUID.fromString("4628e7df-dff3-407c-a08f-75f08c0806dc"));
appRoleAssignment.setPrincipalType("User");
appRoleAssignment.setAppRoleId(UUID.fromString("18d14569-c3bd-439b-9a66-3a2aee01d14f"));
appRoleAssignment.setResourceId(UUID.fromString("a8cac399-cde5-4516-a674-819503c61313"));
AppRoleAssignment result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").appRoleAssignments().post(appRoleAssignment);


```