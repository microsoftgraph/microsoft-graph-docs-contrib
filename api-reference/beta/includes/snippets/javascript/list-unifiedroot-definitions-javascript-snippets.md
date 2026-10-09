---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let definitions = await client.api('/identityGovernance/accessReviews/unified/definitions')
	.version('beta')
	.get();

```