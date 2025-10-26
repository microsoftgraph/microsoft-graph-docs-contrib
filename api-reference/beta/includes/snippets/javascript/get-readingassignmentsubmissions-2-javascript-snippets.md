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
	.filter('submissionDateTime gt 2023-10-10T00:00:00.000Z and submissionDateTime lt 2023-10-11T00:00:00Z')
	.get();

```