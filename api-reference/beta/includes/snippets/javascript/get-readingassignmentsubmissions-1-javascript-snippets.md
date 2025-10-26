---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let readingAssignmentSubmissions = await client.api('/education/reports/readingAssignmentSubmissions')
	.version('beta')
	.get();

```