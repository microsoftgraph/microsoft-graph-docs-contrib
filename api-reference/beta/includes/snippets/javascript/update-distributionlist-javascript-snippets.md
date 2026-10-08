---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const distributionList = {
  displayName: 'Updated Project Team'
};

await client.api('/me/distributionLists/AAMkAGI2THVSAAA=')
	.version('beta')
	.update(distributionList);

```