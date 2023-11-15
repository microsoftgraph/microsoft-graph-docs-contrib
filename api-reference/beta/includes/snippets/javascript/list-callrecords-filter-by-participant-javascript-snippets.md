---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let callRecords = await client.api('/communications/callRecords')
	.version('beta')
	.filter('participants_v2/any(p:p/id eq \'821809f5-0000-0000-0000-3b5136c0e777\')')
	.get();

```