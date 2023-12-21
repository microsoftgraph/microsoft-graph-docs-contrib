---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workflow = {
    description: 'Configure new hire tasks for onboarding employees on their first day',
    displayName: 'Australia Onboard new hire employee',
    isEnabled: true,
    isSchedulingEnabled: false
};

await client.api('/identityGovernance/lifecycleWorkflows/workflows/156ce798-1eb6-4e0a-8515-e79f54d04390')
	.version('beta')
	.update(workflow);

```