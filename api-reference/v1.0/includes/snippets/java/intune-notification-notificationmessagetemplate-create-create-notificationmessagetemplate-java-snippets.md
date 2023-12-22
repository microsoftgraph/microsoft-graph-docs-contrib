---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

NotificationMessageTemplate notificationMessageTemplate = new NotificationMessageTemplate();
notificationMessageTemplate.displayName = "Display Name value";
notificationMessageTemplate.defaultLocale = "Default Locale value";
notificationMessageTemplate.brandingOptions = EnumSet.of(NotificationTemplateBrandingOptions.INCLUDE_COMPANY_LOGO);
LinkedList<String> roleScopeTagIdsList = new LinkedList<String>();
roleScopeTagIdsList.add("Role Scope Tag Ids value");
notificationMessageTemplate.roleScopeTagIds = roleScopeTagIdsList;

graphClient.deviceManagement().notificationMessageTemplates()
	.buildRequest()
	.post(notificationMessageTemplate);

```