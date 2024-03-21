---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const localizedNotificationMessage = {
  '@odata.type': '#microsoft.graph.localizedNotificationMessage',
  locale: 'Locale value',
  subject: 'Subject value',
  messageTemplate: 'Message Template value',
  isDefault: true
};

await client.api('/deviceManagement/notificationMessageTemplates/{notificationMessageTemplateId}/localizedNotificationMessages')
	.post(localizedNotificationMessage);

```