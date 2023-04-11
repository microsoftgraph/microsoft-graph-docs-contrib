---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let emailThreats = await client.api('/security/threatSubmission/emailThreats')
	.version('beta')
	.get();

```