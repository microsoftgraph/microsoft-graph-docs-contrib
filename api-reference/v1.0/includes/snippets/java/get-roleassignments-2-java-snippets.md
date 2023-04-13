---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleAssignmentCollectionPage roleAssignments = graphClient.roleManagement().directory().roleAssignments()
	.buildRequest()
	.filter(" principalId eq '5bde3e51-d13b-4db1-9948-fe4b109d11a7'")
	.get();

```