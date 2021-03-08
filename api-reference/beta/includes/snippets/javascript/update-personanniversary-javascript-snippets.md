---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const personAnnualEvent = {
  allowedAudiences: "contacts"
};

let res = await client.api('/me/profile/anniversaries/{id}')
	.version('beta')
	.update(personAnnualEvent);

```