---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identityGovernance().privilegedAccess().group().assignmentScheduleRequests("f4b57a8c-da56-4ae0-8aef-65c3a043dab4")
	.cancel()
	.buildRequest()
	.post();

```