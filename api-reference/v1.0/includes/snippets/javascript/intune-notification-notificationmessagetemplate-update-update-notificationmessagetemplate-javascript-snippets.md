---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const notificationMessageTemplate = {
  '@odata.type': '#microsoft.graph.notificationMessageTemplate',
  displayName: 'Display Name value',
  defaultLocale: 'Default Locale value',
  brandingOptions: 'includeCompanyLogo',
  roleScopeTagIds: [
    'Role Scope Tag Ids value'
  ]
};

await client.api('/deviceManagement/notificationMessageTemplates/{notificationMessageTemplateId}')
	.update(notificationMessageTemplate);

```