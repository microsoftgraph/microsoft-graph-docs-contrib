---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RemoteAssistancePartnerCollectionPage remoteAssistancePartners = graphClient.deviceManagement().remoteAssistancePartners()
	.buildRequest()
	.get();

```