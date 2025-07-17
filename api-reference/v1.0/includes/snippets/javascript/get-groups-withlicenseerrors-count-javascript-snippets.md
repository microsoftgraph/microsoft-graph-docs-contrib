---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let groups = await client.api('/groups')
	.filter('hasMembersWithLicenseErrors eq true')
	.select('id,displayName')
	.get();

```