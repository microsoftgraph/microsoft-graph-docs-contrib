---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const dismiss = {
  userIds: [
    '4628e7df-dff3-407c-a08f-75f08c0806dc'
  ]
};

await client.api('/identityProtection/riskyUsers/dismiss')
	.post(dismiss);

```