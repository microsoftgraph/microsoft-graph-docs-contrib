---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleAssignmentScheduleInstance unifiedRoleAssignmentScheduleInstance = graphClient.roleManagement().directory().roleAssignmentScheduleInstances("lAPpYvVpN0KRkAEhdxReEJ2SvT9WjGJEhR4OuaezoqU-1")
	.buildRequest()
	.get();

```