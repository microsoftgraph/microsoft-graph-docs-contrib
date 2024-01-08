---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let authenticationEventsFlows = await client.api('/identity/authenticationEventsFlows')
	.version('beta')
	.filter('microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/conditions/applications/includeApplications/any(appId:appId/appId eq \'63856651-13d9-4784-9abf-20758d509e19\')')
	.get();

```