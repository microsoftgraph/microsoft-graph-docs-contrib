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
        { id: '8cdf25a8-c9d2-423e-a03d-3f39f03c3e97'},
        { id: 'ea09ac2e-77e3-4134-85f2-25ccf3c33387'}
    ]
};

await client.api('/identityGovernance/lifecycleWorkflows/workflows/14879e66-9ea9-48d0-804d-8fea672d0341/activate')
	.version('beta')
	.post(activate);

```