---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.deviceManagement().virtualEndpoint().cloudPCs("ff4eb6ab-d56a-4edf-90c1-baaec8dd6032")
	.troubleshoot()
	.buildRequest()
	.post();

```