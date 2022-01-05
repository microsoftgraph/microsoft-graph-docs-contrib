---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleEligibilityScheduleRequest unifiedRoleEligibilityScheduleRequest = graphClient.roleManagement().directory().roleEligibilityScheduleRequests("26bc6813-5457-4302-a482-afafd4e2962a")
	.buildRequest()
	.get();

```