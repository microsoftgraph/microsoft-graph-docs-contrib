---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const setUserPreferredPresence = {
  availability: 'DoNotDisturb',
  activity: 'DoNotDisturb',
  expirationDuration: 'PT8H'
};

await client.api('/users/fa8bf3dc-eca7-46b7-bad1-db199b62afc3/presence/setUserPreferredPresence')
	.post(setUserPreferredPresence);

```