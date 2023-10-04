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
            id: 'df744d9e-2148-4922-88a8-633896c1e929'
        }
    ]
};

await client.api('/identityGovernance/LifecycleWorkflows/workflows/15239232-66ed-445b-8292-2f5bbb2eb833/activate')
	.version('beta')
	.post(activate);

```