---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let readingAssignmentSubmissions = await client.api('/education/reports/readingAssignmentSubmissions')
	.filter('submissionDateTime gt 2025-06-10T00:00:00.000Z and submissionDateTime lt 2025-06-11T00:00:00Z')
	.get();

```