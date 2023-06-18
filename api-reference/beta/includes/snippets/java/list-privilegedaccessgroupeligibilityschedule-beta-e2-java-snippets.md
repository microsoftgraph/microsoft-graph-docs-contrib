---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedAccessGroupEligibilityScheduleCollectionPage eligibilitySchedules = graphClient.identityGovernance().privilegedAccess().group().eligibilitySchedules()
	.buildRequest()
	.select("accessId,principalId,groupId")
	.get();

```