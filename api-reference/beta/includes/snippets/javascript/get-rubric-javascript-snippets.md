---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let educationRubric = await client.api('/education/classes/f1e03281-acd7-4fb0-84c3-902b3d30104c/assignments/09e2e94f-c701-45f5-98a8-cb5000195d2b/rubric')
	.version('beta')
	.get();

```