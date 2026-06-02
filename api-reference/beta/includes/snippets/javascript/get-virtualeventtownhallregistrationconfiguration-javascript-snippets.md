---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let virtualEventTownhallRegistrationConfiguration = await client.api('/solutions/virtualEvents/townhalls/88b245ac-b0b2-f1aa-e34a-c81c27abdac2@f9448ec4-804b-46af-b810-62085248da33/registrationConfiguration')
	.version('beta')
	.get();

```