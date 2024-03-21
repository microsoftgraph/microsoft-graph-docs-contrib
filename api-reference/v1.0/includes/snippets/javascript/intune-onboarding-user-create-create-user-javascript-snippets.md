---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const user = {
  '@odata.type': '#microsoft.graph.user',
  deviceEnrollmentLimit: 5
};

await client.api('/users')
	.post(user);

```