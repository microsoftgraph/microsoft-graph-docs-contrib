---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppRoleAssignment appRoleAssignment = new AppRoleAssignment();
appRoleAssignment.principalId = UUID.fromString("b8afc02cb-4d62-4dba-b536-9f6d73e9e26");
appRoleAssignment.resourceId = UUID.fromString("89473e09-0737-41a1-a0c3-1418d6908bcd");
appRoleAssignment.appRoleId = UUID.fromString("00000000-0000-0000-0000-000000000000");

graphClient.servicePrincipals("89473e09-0737-41a1-a0c3-1418d6908bcd").appRoleAssignedTo()
	.buildRequest()
	.post(appRoleAssignment);

```