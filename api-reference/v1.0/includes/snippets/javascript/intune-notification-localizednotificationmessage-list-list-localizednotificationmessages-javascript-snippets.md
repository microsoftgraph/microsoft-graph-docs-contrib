---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let localizedNotificationMessages = await client.api('/deviceManagement/notificationMessageTemplates/{notificationMessageTemplateId}/localizedNotificationMessages')
	.get();

```