---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const externalIdentitiesPolicy = {
  allowExternalIdentitiesToLeave: false
};

await client.api('/policies/externalIdentitiesPolicy')
	.version('beta')
	.update(externalIdentitiesPolicy);

```