---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppRoleAssignmentCollectionPage appRoleAssignedTo = graphClient.servicePrincipals("7ea9e944-71ce-443d-811c-71e8047b557a").appRoleAssignedTo()
	.buildRequest()
	.get();

```