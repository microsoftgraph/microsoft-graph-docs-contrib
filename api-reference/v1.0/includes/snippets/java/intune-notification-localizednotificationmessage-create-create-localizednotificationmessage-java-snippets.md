---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LocalizedNotificationMessage localizedNotificationMessage = new LocalizedNotificationMessage();
localizedNotificationMessage.locale = "Locale value";
localizedNotificationMessage.subject = "Subject value";
localizedNotificationMessage.messageTemplate = "Message Template value";
localizedNotificationMessage.isDefault = true;

graphClient.deviceManagement().notificationMessageTemplates("{notificationMessageTemplateId}").localizedNotificationMessages()
	.buildRequest()
	.post(localizedNotificationMessage);

```