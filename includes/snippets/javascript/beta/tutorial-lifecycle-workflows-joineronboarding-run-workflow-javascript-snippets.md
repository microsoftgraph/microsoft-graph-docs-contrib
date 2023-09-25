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

await client.api('/identityGovernance/LifecycleWorkflows/workflows/ea71190c-075a-4ae7-9bca-34abf3b7b056/activate')
	.version('beta')
	.post(activate);

```