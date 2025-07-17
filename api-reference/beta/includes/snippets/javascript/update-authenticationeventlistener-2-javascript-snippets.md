---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationConditionApplication = {
    '@odata.type': '#microsoft.graph.authenticationConditionApplication',
    appId: '63856651-13d9-4784-9abf-20758d509e19'
};

await client.api('/identity/authenticationEventListeners/0313cc37-d421-421d-857b-87804d61e33e/conditions/applications/includeApplications')
	.version('beta')
	.post(authenticationConditionApplication);

```