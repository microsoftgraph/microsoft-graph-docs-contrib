---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const attachment = {
  '@odata.type': '#microsoft.graph.security.caseManagement.attachment',
  displayName: 'Case MS-001 Attachment',
  description: 'Screenshot of suspicious sign-in activity',
  fileSize: 1000,
  fileExtension: 'jpeg'
};

await client.api('/security/caseManagement/cases/{caseId}/attachments')
	.version('beta')
	.post(attachment);

```