---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let privilegedOperationEvents = await client.api('/privilegedOperationEvents')
	.version('beta')
	.filter('(creationDateTime ge 2017-06-25T07:00:00Z) and (creationDateTime le 2017-07-25T17:30:17Z)')
	.orderby('creationDateTime desc')
	.get();

```