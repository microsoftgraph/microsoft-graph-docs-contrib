---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let fileThreatSubmission = await client.api('/security/threatSubmission/fileThreats/{fileThreatsId}')
	.version('beta')
	.get();

```