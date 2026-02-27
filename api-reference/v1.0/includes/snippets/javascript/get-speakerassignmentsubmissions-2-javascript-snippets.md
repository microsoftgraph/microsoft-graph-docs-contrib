---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let speakerAssignmentSubmissions = await client.api('/education/reports/speakerAssignmentSubmissions')
	.filter('submissionDateTime gt 2025-05-28T00:00:00Z and submissionDateTime lt 2025-05-29T00:00:00Z')
	.get();

```