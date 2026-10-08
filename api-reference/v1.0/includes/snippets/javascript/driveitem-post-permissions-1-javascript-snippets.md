---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const permission = {
  grantedToV2: {
    application: {
      id: '89ea5c94-7736-4e25-95ad-3fa95f62b66e'
    }
  },
  roles: ['write']
};

await client.api('/drives/b!s8RqPCGh0ESQS2EYnKM0IKS3lM7GxjdAviiob7oc5pXv_0LiL-62Qq3IXyrXnEop/items/01V4EPHZNV2OJQJNBPWNCKDTXCQ5TSVBJU/permissions')
	.post(permission);

```