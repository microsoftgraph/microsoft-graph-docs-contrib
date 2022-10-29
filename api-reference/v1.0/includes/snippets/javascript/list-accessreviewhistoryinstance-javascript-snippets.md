---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let instances = await client.api('/identityGovernance/accessReviews/historyDefinitions/90e28cb7-4b9a-48f7-ba4e-a2756fda01b2/instances')
	.get();

```