---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleAssignmentCollectionPage roleAssignments = graphClient.roleManagement().directory().roleAssignments()
	.buildRequest()
	.filter("roleDefinition/isPrivileged eq true")
	.expand("roleDefinition")
	.get();

```