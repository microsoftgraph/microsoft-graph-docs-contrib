---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AdminForms adminForms = new AdminForms();
FormsSettings settings = new FormsSettings();
settings.isExternalSendFormEnabled = true;
settings.isExternalShareCollaborationEnabled = false;
settings.isExternalShareResultEnabled = false;
settings.isExternalShareTemplateEnabled = false;
settings.isRecordIdentityByDefaultEnabled = true;
settings.isBingImageSearchEnabled = true;
settings.isInOrgFormsPhishingScanEnabled = false;
adminForms.settings = settings;

graphClient.admin().forms()
	.buildRequest()
	.patch(adminForms);

```