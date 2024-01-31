---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let submissions = await client.api('/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/4cc928e3-666c-4360-8688-a15776ce53b4/submissions')
	.expand('outcomes')
	.get();

```