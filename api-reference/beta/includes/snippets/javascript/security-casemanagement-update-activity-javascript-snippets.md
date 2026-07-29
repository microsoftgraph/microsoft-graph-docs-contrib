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
  message: 'This is a modified comment.'
};

await client.api('/security/caseManagement/cases/987757fb-6ef4-1061-17e7-9de0d088e1dd/activities/c5dcf8b0-0732-750b-0e35-7f44188423bf')
	.version('beta')
	.update(activity);

```