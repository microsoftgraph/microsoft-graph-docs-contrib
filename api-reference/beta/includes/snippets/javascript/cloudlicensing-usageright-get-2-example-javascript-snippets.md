---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let usageRight = await client.api('/groups/1003985b-dfc1-4f42-97d4-65f70a335ca8/cloudLicensing/usageRights/j6sq63x2vd3esbkifv7m42xdaugc6lfpqf3ozgvdlvk3ttnamby4')
	.version('beta')
	.get();

```