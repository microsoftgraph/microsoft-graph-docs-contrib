---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const group = {
  description: 'Marketing group',
  displayName: 'Marketing resources',
  mailEnabled: false,
  mailNickname: 'markres',
  securityEnabled: true
};

await client.api('/groups')
	.post(group);

```