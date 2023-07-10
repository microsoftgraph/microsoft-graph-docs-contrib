---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.deviceManagement().remoteAssistancePartners("{remoteAssistancePartnerId}")
	.disconnect()
	.buildRequest()
	.post();

```