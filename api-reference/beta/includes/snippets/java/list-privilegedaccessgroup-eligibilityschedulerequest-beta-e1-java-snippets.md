---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedAccessGroupEligibilityScheduleRequestCollectionPage eligibilityScheduleRequests = graphClient.identityGovernance().privilegedAccess().group().eligibilityScheduleRequests()
	.buildRequest()
	.get();

```