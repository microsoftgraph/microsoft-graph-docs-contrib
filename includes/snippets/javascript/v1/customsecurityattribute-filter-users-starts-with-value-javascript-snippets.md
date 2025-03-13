---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let users = await client.api('/users')
	.header('ConsistencyLevel','eventual')
	.filter('startsWith(customSecurityAttributes/Marketing/EmployeeId,\'GS\')')
	.select('id,displayName,customSecurityAttributes')
	.get();

```