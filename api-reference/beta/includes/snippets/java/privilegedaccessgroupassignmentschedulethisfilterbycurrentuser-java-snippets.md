---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedAccessGroupAssignmentScheduleFilterByCurrentUserCollectionPage filterByCurrentUser = graphClient.identityGovernance().privilegedAccess().group().assignmentSchedules()
	.filterByCurrentUser(PrivilegedAccessGroupAssignmentScheduleFilterByCurrentUserParameterSet
		.newBuilder()
		.withOn('principal')
		.build())
	.buildRequest()
	.get();

```