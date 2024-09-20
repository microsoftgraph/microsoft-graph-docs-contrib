---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let healthIssue = await client.api('/security/identities/healthIssues/bf600aba-e975-0274-d332-c0f79dc75740')
	.get();

```