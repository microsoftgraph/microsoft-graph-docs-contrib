---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const activate = {
    subjects: [
        {
            id: '8930f0c7-cdd7-4885-9260-3b4a8111de5c'
        }
    ]
};

await client.api('/identityGovernance/LifecycleWorkflows/workflows/368dfba3-2303-4e02-b258-87d742187e1b/activate')
	.version('beta')
	.post(activate);

```