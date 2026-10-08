---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const permission = {
  roles: ['owner'],
  grantedToV2: {
    user: {
      id: '11111111-1111-1111-1111-111111111111'
    }
  }
};

await client.api('/storage/fileStorage/containerTypes/de988700-d700-020e-0a00-0831f3042f00/permissions')
	.version('beta')
	.post(permission);

```