---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationEventListener = {
    '@odata.type': '#microsoft.graph.onTokenIssuanceStartListener',
    conditions: {
        applications: {
            includeAllApplications: false
        }
    },
    priority: 500
};

await client.api('/identity/authenticationEventListeners/990d94e5-cc8f-4c4b-97b4-27e2678aac28')
	.version('beta')
	.update(authenticationEventListener);

```