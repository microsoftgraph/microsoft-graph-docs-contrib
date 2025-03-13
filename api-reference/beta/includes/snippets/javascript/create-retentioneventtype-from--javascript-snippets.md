---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const retentionEventType = {
  '@odata.type': '#microsoft.graph.security.retentionEventType',
  displayName: 'String',
  description: 'String',
  createdBy: {
    '@odata.type': 'microsoft.graph.identitySet'
  }
};

await client.api('/security/triggerTypes/retentionEventTypes')
	.version('beta')
	.post(retentionEventType);

```