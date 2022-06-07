---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleEligibilityScheduleRequestFilterByCurrentUserCollectionPage filterByCurrentUser = graphClient.roleManagement().directory().roleEligibilityScheduleRequests()
	.filterByCurrentUser(UnifiedRoleEligibilityScheduleRequestFilterByCurrentUserParameterSet
		.newBuilder()
		.withOn('principal')
		.build())
	.buildRequest()
	.get();

```