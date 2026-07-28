---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const _case = {
  '@odata.type': '#microsoft.graph.security.caseManagement.incidentCase',
  displayName: 'Incident Case MS-002',
  status: 'InProgress',
  classification: 'truePositive',
  determination: 'phishing',
  severity: 'high',
  summary: 'Credential phishing campaign affecting multiple users.'
};

await client.api('/security/caseManagement/cases/{caseId}')
	.version('beta')
	.update(_case);

```