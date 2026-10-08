---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getPolicyId = await client.api('/admin/teams/policy/getPolicyId(type='TeamsMeetingPolicy',name='AllOn')')
	.get();

```