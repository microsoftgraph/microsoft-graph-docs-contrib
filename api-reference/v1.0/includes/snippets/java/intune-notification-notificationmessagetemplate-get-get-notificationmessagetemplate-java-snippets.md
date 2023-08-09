---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

NotificationMessageTemplate notificationMessageTemplate = graphClient.deviceManagement().notificationMessageTemplates("{notificationMessageTemplateId}")
	.buildRequest()
	.get();

```