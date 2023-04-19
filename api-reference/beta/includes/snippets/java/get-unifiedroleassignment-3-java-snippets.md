---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleAssignment unifiedRoleAssignment = graphClient.roleManagement().exchange().roleAssignments("6f0be5be-49f3-42e6-8086-cdcd67b6eac0")
	.buildRequest()
	.get();

```