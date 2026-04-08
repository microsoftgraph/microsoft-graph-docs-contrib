---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let forwardingProfiles = await client.api('/networkAccess/forwardingProfiles')
	.version('beta')
	.filter('trafficForwardingType eq \'private\'')
	.get();

```