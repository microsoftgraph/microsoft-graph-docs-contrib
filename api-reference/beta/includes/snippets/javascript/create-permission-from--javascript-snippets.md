---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const permission = {
  roles: [
    'write'
  ],
  grantedToIdentities: [
    {
      application: {
        id: '89ea5c94-7736-4e25-95ad-3fa95f62b66e',
        displayName: 'Contoso Time Manager App'
      }
    }
  ]
};

await client.api('/sites/f2d90359-865b-4b6c-8848-d2722dd630e5/permissions')
	.version('beta')
	.post(permission);

```