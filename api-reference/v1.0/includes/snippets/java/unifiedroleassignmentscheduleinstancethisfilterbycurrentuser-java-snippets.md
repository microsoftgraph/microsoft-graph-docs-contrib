---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleAssignmentScheduleInstanceFilterByCurrentUserCollectionPage filterByCurrentUser = graphClient.roleManagement().directory().roleAssignmentScheduleInstances()
	.filterByCurrentUser(UnifiedRoleAssignmentScheduleInstanceFilterByCurrentUserParameterSet
		.newBuilder()
		.withOn('principal')
		.build())
	.buildRequest()
	.get();

```