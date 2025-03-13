---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let vppToken = await client.api('/deviceAppManagement/vppTokens/{vppTokenId}')
	.get();

```