---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const fileThreatSubmission = {
  '@odata.type': '#microsoft.graph.security.fileContentThreatSubmission',
  category: 'malware',
  fileName: 'test.html',
  fileContent: 'UmVjZWl2ZWQ6IGZyb20gTVcyUFIwME1CMDMxNC5uYW1wcmQwMC.....'
};

await client.api('/security/threatSubmission/fileThreats')
	.version('beta')
	.post(fileThreatSubmission);

```