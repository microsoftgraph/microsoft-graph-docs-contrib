---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const photoUpdateSettings = {
  '@odata.type': '#microsoft.graph.photoUpdateSettings',
  source: 'String',
  allowedRoles: [
    'String'
  ]
};

await client.api('/admin/people/photoUpdateSettings')
	.version('beta')
	.post(photoUpdateSettings);

```