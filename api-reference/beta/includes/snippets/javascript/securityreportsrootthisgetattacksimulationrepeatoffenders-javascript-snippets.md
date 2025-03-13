---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getAttackSimulationRepeatOffenders = await client.api('/reports/security/getAttackSimulationRepeatOffenders')
	.version('beta')
	.get();

```