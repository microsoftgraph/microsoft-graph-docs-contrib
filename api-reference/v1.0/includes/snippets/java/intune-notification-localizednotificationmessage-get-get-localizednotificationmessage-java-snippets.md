---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LocalizedNotificationMessage localizedNotificationMessage = graphClient.deviceManagement().notificationMessageTemplates("{notificationMessageTemplateId}").localizedNotificationMessages("{localizedNotificationMessageId}")
	.buildRequest()
	.get();

```