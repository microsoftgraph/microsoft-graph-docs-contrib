---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const validateProperties = {
  entityType: 'Group',
  displayName: 'test',
  mailNickname: 'test',
  onBehalfOfUserId: 'onBehalfOfUserId-value'
};

await client.api('/directoryObjects/validateProperties')
	.version('beta')
	.post(validateProperties);

```