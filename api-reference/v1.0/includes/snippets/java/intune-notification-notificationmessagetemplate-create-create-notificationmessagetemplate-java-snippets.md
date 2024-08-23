---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

NotificationMessageTemplate notificationMessageTemplate = new NotificationMessageTemplate();
notificationMessageTemplate.setOdataType("#microsoft.graph.notificationMessageTemplate");
notificationMessageTemplate.setDisplayName("Display Name value");
notificationMessageTemplate.setDefaultLocale("Default Locale value");
notificationMessageTemplate.setBrandingOptions(EnumSet.of(NotificationTemplateBrandingOptions.IncludeCompanyLogo));
LinkedList<String> roleScopeTagIds = new LinkedList<String>();
roleScopeTagIds.add("Role Scope Tag Ids value");
notificationMessageTemplate.setRoleScopeTagIds(roleScopeTagIds);
NotificationMessageTemplate result = graphClient.deviceManagement().notificationMessageTemplates().post(notificationMessageTemplate);


```