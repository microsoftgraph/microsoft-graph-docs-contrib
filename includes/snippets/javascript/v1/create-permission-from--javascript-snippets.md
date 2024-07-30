---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const permission = {
  roles: ['write'],
  grantedTo: {
    application: {
      id: '89ea5c94-7736-4e25-95ad-3fa95f62b66e'
    }
  }
};

await client.api('/sites/{siteId}/permissions')
	.post(permission);

```