---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let urlThreatSubmission = await client.api('/security/threatSubmission/urlThreats/49c5ef5b-1f65-444a-e6b9-08d772ea2059')
	.version('beta')
	.get();

```