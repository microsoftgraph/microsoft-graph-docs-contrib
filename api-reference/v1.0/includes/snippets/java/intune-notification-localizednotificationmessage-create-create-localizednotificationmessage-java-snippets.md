---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

LocalizedNotificationMessage localizedNotificationMessage = new LocalizedNotificationMessage();
localizedNotificationMessage.setOdataType("#microsoft.graph.localizedNotificationMessage");
localizedNotificationMessage.setLocale("Locale value");
localizedNotificationMessage.setSubject("Subject value");
localizedNotificationMessage.setMessageTemplate("Message Template value");
localizedNotificationMessage.setIsDefault(true);
LocalizedNotificationMessage result = graphClient.deviceManagement().notificationMessageTemplates().byNotificationMessageTemplateId("{notificationMessageTemplate-id}").localizedNotificationMessages().post(localizedNotificationMessage);


```