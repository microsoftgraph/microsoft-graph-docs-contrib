---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let healthIssue = await client.api('/security/identities/healthIssues/b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c')
	.version('beta')
	.get();

```