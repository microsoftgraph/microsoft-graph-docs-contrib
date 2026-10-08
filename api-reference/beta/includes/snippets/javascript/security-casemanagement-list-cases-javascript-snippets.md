---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cases = await client.api('/security/caseManagement/cases')
	.version('beta')
	.get();

```