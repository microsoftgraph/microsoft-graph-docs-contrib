---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let usageRights = await client.api('/users/48fbdf70-9e09-40df-9dbe-17af483ab113/cloudLicensing/usageRights')
	.version('beta')
	.filter('services/any(c:c/planId eq 113feb6c-3fe4-4440-bddc-54d774bf0318)')
	.get();

```