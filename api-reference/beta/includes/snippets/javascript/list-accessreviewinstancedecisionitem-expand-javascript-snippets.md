---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let filterByCurrentUser = await client.api('/identityGovernance/accessReviews/decisions/filterByCurrentUser(on='reviewer')')
	.version('beta')
	.expand('instance($expand=definition)')
	.get();

```