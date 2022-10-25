---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleAssignmentMultipleCollectionPage roleAssignments = graphClient.roleManagement().deviceManagement().roleAssignments()
	.buildRequest()
	.filter(" principalIds/any(x:x eq '564ae70c-73d9-476b-820b-fb61eb7384b9')")
	.get();

```