---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const activityBasedTimeoutPolicy = {
  definition: ['{\"ActivityBasedTimeoutPolicy\':{\'Version\':1,\'ApplicationPolicies\':[{\'ApplicationId\':\'default\",\"WebSessionIdleTimeout\':\"00:05:00\"}]}}"],
  displayName: 'activityBasedTimeoutPolicies test',
  isOrganizationDefault: true
};

await client.api('/policies/activityBasedTimeoutPolicies')
	.post(activityBasedTimeoutPolicy);

```