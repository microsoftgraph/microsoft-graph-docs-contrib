---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const activity = {
  '@odata.type': '#microsoft.graph.security.caseManagement.comment',
  message: 'This is a comment for the case.'
};

await client.api('/security/caseManagement/cases/{caseId}/activities')
	.version('beta')
	.post(activity);

```