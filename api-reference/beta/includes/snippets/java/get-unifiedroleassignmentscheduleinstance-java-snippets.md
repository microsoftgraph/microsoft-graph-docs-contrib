---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleAssignmentScheduleInstance unifiedRoleAssignmentScheduleInstance = graphClient.roleManagement().directory().roleAssignmentScheduleInstances("4-PYiFWPHkqVOpuYmLiHa_8KmpPnrkhHmG41_UYRbUY-1")
	.buildRequest()
	.get();

```