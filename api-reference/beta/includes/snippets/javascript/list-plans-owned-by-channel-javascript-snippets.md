---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let plans = await client.api('/teams/a738af50-90f1-472c-b3c3-a468f88ceaba/channels/19:yVS-hfmJ8w61Vu4oehlAr-y9G0eeyY11D8elrrDSvCU1@thread.tacv2/planner/plans')
	.version('beta')
	.get();

```