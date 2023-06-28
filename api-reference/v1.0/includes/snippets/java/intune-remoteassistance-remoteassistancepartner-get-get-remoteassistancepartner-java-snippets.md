---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RemoteAssistancePartner remoteAssistancePartner = graphClient.deviceManagement().remoteAssistancePartners("{remoteAssistancePartnerId}")
	.buildRequest()
	.get();

```