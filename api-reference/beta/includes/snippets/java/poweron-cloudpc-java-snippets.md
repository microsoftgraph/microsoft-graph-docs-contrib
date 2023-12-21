---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.deviceManagement().virtualEndpoint().cloudPCs("831dd62e-cfa1-4d49-a3b4-58d4e9920f8e")
	.poweron()
	.buildRequest()
	.post();

```