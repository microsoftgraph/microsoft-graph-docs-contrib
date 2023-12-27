---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedAccessGroupEligibilityScheduleFilterByCurrentUserCollectionPage filterByCurrentUser = graphClient.identityGovernance().privilegedAccess().group().eligibilitySchedules()
	.filterByCurrentUser(PrivilegedAccessGroupEligibilityScheduleFilterByCurrentUserParameterSet
		.newBuilder()
		.withOn('principal')
		.build())
	.buildRequest()
	.filter("groupId eq 'd5f0ad2e-6b34-401b-b6da-0c8fc2c5a3fc' and accessId eq 'member'")
	.get();

```