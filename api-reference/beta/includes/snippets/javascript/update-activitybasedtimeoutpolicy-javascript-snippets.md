---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const activityBasedTimeoutPolicy = {
displayName: 'Idle timeout for all apps'
};

await client.api('/policies/activityBasedTimeoutPolicies/cf70ac6c-8a1a-40cd-a523-a2b4a56de0df')
	.version('beta')
	.update(activityBasedTimeoutPolicy);

```