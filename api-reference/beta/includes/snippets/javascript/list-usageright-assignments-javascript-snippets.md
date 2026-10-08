---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let assignments = await client.api('/me/cloudLicensing/usageRights/7e452304-0a58-40d6-8fd2-2afe92d26a3a/assignments')
	.version('beta')
	.get();

```