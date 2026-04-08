---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const channel = {
  displayName: 'Project Collaboration',
  description: 'Discussion space for project team collaboration',
  membershipType: 'standard',
  layoutType: 'chat'
};

await client.api('/teams/57fb72d0-d811-46f4-8947-305e6072eaa5/channels')
	.version('beta')
	.post(channel);

```