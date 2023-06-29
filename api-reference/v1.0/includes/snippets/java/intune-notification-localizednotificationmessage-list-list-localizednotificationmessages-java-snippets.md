---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LocalizedNotificationMessageCollectionPage localizedNotificationMessages = graphClient.deviceManagement().notificationMessageTemplates("{notificationMessageTemplateId}").localizedNotificationMessages()
	.buildRequest()
	.get();

```