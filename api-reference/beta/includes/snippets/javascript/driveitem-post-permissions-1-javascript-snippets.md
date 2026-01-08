---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const permission = {
  grantedToIdentitiesV2: {
    application: {
      id: '89ea5c94-7736-4e25-95ad-3fa95f62b66e',
      displayName: 'Contoso Time Manager App'
    }
  },
  roles: ['write']
};

await client.api('/drives/b!s8RqPCGh0ESQS2EYnKM0IKS3lM7GxjdAviiob7oc5pXv_0LiL-62Qq3IXyrXnEop/items/1/permissions')
	.version('beta')
	.post(permission);

```