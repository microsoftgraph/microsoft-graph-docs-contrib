---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppRoleAssignment appRoleAssignment = new AppRoleAssignment();
appRoleAssignment.principalId = UUID.fromString("040f9599-7c0f-4f94-aa75-8394c4c6ea9b");
appRoleAssignment.principalType = "User";
appRoleAssignment.appRoleId = UUID.fromString("3a84e31e-bffa-470f-b9e6-754a61e4dc63");
appRoleAssignment.resourceId = UUID.fromString("a750f6cf-2319-464a-bcc3-456926736a91");

graphClient.servicePrincipals("a750f6cf-2319-464a-bcc3-456926736a91").appRoleAssignments()
	.buildRequest()
	.post(appRoleAssignment);

```