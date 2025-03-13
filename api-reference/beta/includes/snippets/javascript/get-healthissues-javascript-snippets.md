---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let healthIssues = await client.api('/security/identities/healthIssues')
	.version('beta')
	.get();

```