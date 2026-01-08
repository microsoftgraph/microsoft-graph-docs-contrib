---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let speakerAssignmentSubmissions = await client.api('/education/reports/speakerAssignmentSubmissions')
	.version('beta')
	.get();

```