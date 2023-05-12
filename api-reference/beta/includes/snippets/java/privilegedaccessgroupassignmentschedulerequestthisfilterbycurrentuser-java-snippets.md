---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedAccessGroupAssignmentScheduleRequestFilterByCurrentUserCollectionPage filterByCurrentUser = graphClient.identityGovernance().privilegedAccess().group().assignmentScheduleRequests()
	.filterByCurrentUser(PrivilegedAccessGroupAssignmentScheduleRequestFilterByCurrentUserParameterSet
		.newBuilder()
		.withOn('principal')
		.build())
	.buildRequest()
	.filter("status eq 'PendingApproval' and groupId eq 'd5f0ad2e-6b34-401b-b6da-0c8fc2c5a3fc'")
	.get();

```