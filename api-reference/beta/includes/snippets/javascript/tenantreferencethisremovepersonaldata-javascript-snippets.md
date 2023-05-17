---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/directory/outboundSharedUserProfiles/c228b2ae-c4fb-4eda-9620-7e73dddd1cac/tenants/62bfb458-9474-4c44-896b-b30942d055f0/removePersonalData')
	.version('beta')
	.post();

```