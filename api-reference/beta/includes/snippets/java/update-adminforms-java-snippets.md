---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AdminForms adminForms = new AdminForms();
adminForms.setOdataType("#microsoft.graph.adminForms");
FormsSettings settings = new FormsSettings();
settings.setOdataType("microsoft.graph.formsSettings");
settings.setIsExternalSendFormEnabled(true);
settings.setIsExternalShareCollaborationEnabled(false);
settings.setIsExternalShareResultEnabled(false);
settings.setIsExternalShareTemplateEnabled(false);
settings.setIsRecordIdentityByDefaultEnabled(true);
settings.setIsBingImageSearchEnabled(true);
settings.setIsInOrgFormsPhishingScanEnabled(false);
adminForms.setSettings(settings);
AdminForms result = graphClient.admin().forms().patch(adminForms);


```