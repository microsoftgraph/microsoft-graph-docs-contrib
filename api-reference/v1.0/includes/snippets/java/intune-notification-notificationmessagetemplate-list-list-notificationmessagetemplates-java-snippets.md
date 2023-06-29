---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

NotificationMessageTemplateCollectionPage notificationMessageTemplates = graphClient.deviceManagement().notificationMessageTemplates()
	.buildRequest()
	.get();

```