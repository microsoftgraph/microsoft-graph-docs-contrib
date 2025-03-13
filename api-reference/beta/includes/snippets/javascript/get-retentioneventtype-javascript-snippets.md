---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let retentionEventType = await client.api('/security/triggerTypes/retentionEventTypes/{retentionEventTypeId}')
	.version('beta')
	.get();

```