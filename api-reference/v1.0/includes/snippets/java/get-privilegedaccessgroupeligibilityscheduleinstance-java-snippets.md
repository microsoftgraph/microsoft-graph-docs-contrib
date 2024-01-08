---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedAccessGroupEligibilityScheduleInstance privilegedAccessGroupEligibilityScheduleInstance = graphClient.identityGovernance().privilegedAccess().group().eligibilityScheduleInstances("d5f0ad2e-6b34-401b-b6da-0c8fc2c5a3fc")
	.buildRequest()
	.get();

```