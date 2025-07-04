---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let usageRights = await client.api('/groups/0003985b-dfc1-4f42-97d4-65f70a335ca8/cloudLicensing/usageRights')
	.version('beta')
	.get();

```