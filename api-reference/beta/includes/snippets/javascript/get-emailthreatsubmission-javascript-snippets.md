---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let emailThreatSubmission = await client.api('/security/threatSubmission/emailThreats/{emailThreatsId}')
	.version('beta')
	.get();

```