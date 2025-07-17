---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const application = {
  api: {
    acceptMappedClaims: true,
    requestedAccessTokenVersion: 2
  }
};

await client.api('/applications/3dfbe85f-2d14-4660-b1a2-cb9c633ceebb')
	.update(application);

```