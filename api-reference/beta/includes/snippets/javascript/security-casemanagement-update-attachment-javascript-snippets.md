---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const attachment = {
  displayName: 'Case MS-001 Attachment',
  description: 'Screenshot of suspicious sign-in activity'
};

await client.api('/security/caseManagement/cases/{caseId}/attachments/{attachmentId}')
	.version('beta')
	.update(attachment);

```