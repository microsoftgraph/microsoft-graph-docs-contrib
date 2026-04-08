---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let groupResource = await client.api('/identityGovernance/privilegedAccess/group/resources/a13fc7b0-a4ff-45fc-82c4-1d31a807426a')
	.version('beta')
	.get();

```