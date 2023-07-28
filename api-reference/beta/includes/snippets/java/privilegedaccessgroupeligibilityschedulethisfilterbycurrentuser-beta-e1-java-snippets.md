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
	.get();

```