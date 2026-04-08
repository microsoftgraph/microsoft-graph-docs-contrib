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
    siteGroup: {
      id: '10',
      displayName: 'Internal Collaborators'
    }
  },
  roles: ['write']
};

await client.api('/drives/b!s8RqPCGh0ESQS2EYnKM0IKS3lM7GxjdAviiob7oc5pXv_0LiL-62Qq3IXyrXnEop/items/01V4EPHZNV2OJQJNBPWNCKDTXCQ5TSVBJU/permissions')
	.version('beta')
	.post(permission);

```