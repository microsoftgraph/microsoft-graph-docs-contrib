---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppRoleAssignment appRoleAssignment = new AppRoleAssignment();
appRoleAssignment.principalId = UUID.fromString("b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94");
appRoleAssignment.resourceId = UUID.fromString("7ea9e944-71ce-443d-811c-71e8047b557a");
appRoleAssignment.appRoleId = UUID.fromString("df021288-bdef-4463-88db-98f22de89214");

graphClient.servicePrincipals("7ea9e944-71ce-443d-811c-71e8047b557a").appRoleAssignedTo()
	.buildRequest()
	.post(appRoleAssignment);

```