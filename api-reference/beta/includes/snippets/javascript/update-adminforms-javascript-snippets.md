---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const adminForms = {
  '@odata.type': '#microsoft.graph.adminForms',
  settings: {
    '@odata.type': 'microsoft.graph.formsSettings',
    isExternalSendFormEnabled: true,
    isExternalShareCollaborationEnabled: false,
    isExternalShareResultEnabled: false,
    isExternalShareTemplateEnabled: false,
    isRecordIdentityByDefaultEnabled: true,
    isBingImageSearchEnabled: true,
    isInOrgFormsPhishingScanEnabled: false
  }
};

await client.api('/admin/forms')
	.version('beta')
	.update(adminForms);

```