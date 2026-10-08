---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let selfServiceSignUp = await client.api('/auditLogs/signUps/eff4eb53-712f-778d-8754-3b851876413a')
	.version('beta')
	.get();

```