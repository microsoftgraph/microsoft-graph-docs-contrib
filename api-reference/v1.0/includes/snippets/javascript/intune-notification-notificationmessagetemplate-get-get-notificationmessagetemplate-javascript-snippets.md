---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let notificationMessageTemplate = await client.api('/deviceManagement/notificationMessageTemplates/{notificationMessageTemplateId}')
	.get();

```