---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let submissions = await client.api('/education/classes/2003c52e-807a-4186-9b49-60c573095461/assignments/2be08d97-b140-4eec-8cbd-88238d571060/submissions')
	.version('beta')
	.get();

```