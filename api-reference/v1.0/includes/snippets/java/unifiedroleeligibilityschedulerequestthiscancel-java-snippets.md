---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.roleManagement().directory().roleEligibilityScheduleRequests("532bef1f-c677-4564-aa6f-811444a4f018")
	.cancel()
	.buildRequest()
	.post();

```