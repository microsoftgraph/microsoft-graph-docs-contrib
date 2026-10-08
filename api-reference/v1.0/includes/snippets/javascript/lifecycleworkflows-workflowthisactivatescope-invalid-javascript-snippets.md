---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const activatewithscope = {
    subjects: [ 
        { id: '2ea4c363-4b85-4529-b2ec-53b64308f39f'},
        { id: '44fc5392-9485-4348-871e-2ea17cc0a1b8'}
    ]
};

await client.api('/identityGovernance/lifecycleWorkflows/workflows/2f0dcb02-65d9-4369-bad5-a3174538c5ff/activatewithscope')
	.post(activatewithscope);

```