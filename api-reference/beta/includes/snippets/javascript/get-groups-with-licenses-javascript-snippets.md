---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let groups = await client.api('/groups')
	.version('beta')
	.filter('assignedLicenses/any()')
	.expand('members($select=id,displayName)')
	.select('id,assignedLicenses')
	.get();

```