---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const retentionLabel = {
  '@odata.type': '#microsoft.graph.security.retentionLabel',
  retentionDuration: {
    '@odata.type': 'microsoft.graph.security.retentionDurationInDays',
    days: 2555
  },
};

await client.api('/security/labels/retentionLabels/9563a605-e827-4324-a5a9-09efddff1e50')
	.version('beta')
	.update(retentionLabel);

```