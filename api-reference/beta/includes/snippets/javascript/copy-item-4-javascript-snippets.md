---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const driveItem = {
  parentReference: {
    driveId: 'b!s8RqPCGh0ESQS2EYnKM0IKS3lM7GxjdAviiob7oc5pXv_0LiL-62Qq3IXyrXnEop',
    id: 'DCD0D3AD-8989-4F23-A5A2-2C086050513F'
  }
};

await client.api('/me/drive/items/{item-id}/copy')
	.version('beta')
	.post(driveItem);

```