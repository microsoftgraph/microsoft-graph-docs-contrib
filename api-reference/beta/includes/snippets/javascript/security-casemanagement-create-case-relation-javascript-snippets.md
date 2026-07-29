---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const relation = {
  '@odata.type': '#microsoft.graph.security.caseManagement.incidentRelation',
  relatedResourceId: '987654321',
  displayName: 'Related incident'
};

await client.api('/security/caseManagement/cases/{caseId}/relations')
	.version('beta')
	.post(relation);

```