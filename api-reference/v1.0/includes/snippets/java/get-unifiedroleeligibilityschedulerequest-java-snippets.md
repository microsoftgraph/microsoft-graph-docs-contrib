---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleEligibilityScheduleRequest unifiedRoleEligibilityScheduleRequest = graphClient.roleManagement().directory().roleEligibilityScheduleRequests("f341269e-c926-41fa-a905-cef3b01b2a67")
	.buildRequest()
	.get();

```