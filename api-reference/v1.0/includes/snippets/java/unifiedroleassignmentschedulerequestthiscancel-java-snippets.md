---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.roleManagement().directory().roleAssignmentScheduleRequests("95c690fb-3eb3-4942-a03f-4524aed6f31e")
	.cancel()
	.buildRequest()
	.post();

```