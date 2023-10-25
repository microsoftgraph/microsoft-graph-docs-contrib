---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedAccessGroupEligibilitySchedule privilegedAccessGroupEligibilitySchedule = graphClient.identityGovernance().privilegedAccess().group().eligibilitySchedules("37bf27ec-70a7-60e0-8239-aa3ffa7719ac")
	.buildRequest()
	.get();

```