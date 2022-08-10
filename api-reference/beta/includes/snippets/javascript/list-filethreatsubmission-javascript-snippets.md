---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let fileThreats = await client.api('/security/threatSubmission/fileThreats')
	.version('beta')
	.get();

```