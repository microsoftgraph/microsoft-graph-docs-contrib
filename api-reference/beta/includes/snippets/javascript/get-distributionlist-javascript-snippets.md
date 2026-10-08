---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let distributionList = await client.api('/me/distributionLists/AAMkAGI2THVSAAA=')
	.version('beta')
	.get();

```