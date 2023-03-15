---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleEligibilitySchedule unifiedRoleEligibilitySchedule = graphClient.roleManagement().directory().roleEligibilitySchedules("1f06eafc-7532-429b-abf1-ab5a5f4a7052")
	.buildRequest()
	.get();

```