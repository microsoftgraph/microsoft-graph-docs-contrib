---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let educationAssignment = await client.api('/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/1a9404ca-08c9-4e29-8ac8-4cd36e8188ea/')
	.header('Prefer','include-unknown-enum-members')
	.get();

```