---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/security/cases/ediscoveryCases/58fcd4c1-e11c-42a4-bc90-f57e1990319c/caseMembers/4e82e429-97bb-4796-b376-286396ecb2c3')
	.version('beta')
	.delete();

```