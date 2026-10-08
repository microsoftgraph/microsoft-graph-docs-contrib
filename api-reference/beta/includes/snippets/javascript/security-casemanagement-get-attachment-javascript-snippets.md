---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let attachment = await client.api('/security/caseManagement/cases/{caseId}/attachments/{attachmentId}')
	.version('beta')
	.get();

```