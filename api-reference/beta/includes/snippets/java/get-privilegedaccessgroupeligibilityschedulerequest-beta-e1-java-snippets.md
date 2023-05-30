---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedAccessGroupEligibilityScheduleRequest privilegedAccessGroupEligibilityScheduleRequest = graphClient.identityGovernance().privilegedAccess().group().eligibilityScheduleRequests("534b3d4d-3ba0-8429-3568-5e9cce6c2cbd")
	.buildRequest()
	.get();

```