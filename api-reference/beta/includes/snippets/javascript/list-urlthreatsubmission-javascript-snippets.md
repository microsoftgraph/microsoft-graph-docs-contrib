---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let urlThreats = await client.api('/security/threatSubmission/urlThreats')
	.version('beta')
	.get();

```