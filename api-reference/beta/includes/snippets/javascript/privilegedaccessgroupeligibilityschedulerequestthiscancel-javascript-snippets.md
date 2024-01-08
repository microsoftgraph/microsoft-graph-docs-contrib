---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/identityGovernance/privilegedAccess/group/eligibilityScheduleRequests/f4b57a8c-da56-4ae0-8aef-65c3a043dab4/cancel')
	.version('beta')
	.post();

```