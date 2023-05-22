---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let educationSubmission = await client.api('/education/classes/2003c52e-807a-4186-9b49-60c573095461/assignments/2be08d97-b140-4eec-8cbd-88238d571060/submissions/efbecaf4-6956-4a76-6e10-b901e4de91c5')
	.version('beta')
	.header('Prefer','include-unknown-enum-members')
	.get();

```