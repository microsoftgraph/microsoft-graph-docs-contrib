---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppRoleAssignment appRoleAssignment = new AppRoleAssignment();
appRoleAssignment.principalId = UUID.fromString("4628e7df-dff3-407c-a08f-75f08c0806dc");
appRoleAssignment.principalType = "User";
appRoleAssignment.appRoleId = UUID.fromString("18d14569-c3bd-439b-9a66-3a2aee01d14f");
appRoleAssignment.resourceId = UUID.fromString("a8cac399-cde5-4516-a674-819503c61313");

graphClient.servicePrincipals("b00c693f-9658-4c06-bd1b-c402c4653dea").appRoleAssignments()
	.buildRequest()
	.post(appRoleAssignment);

```