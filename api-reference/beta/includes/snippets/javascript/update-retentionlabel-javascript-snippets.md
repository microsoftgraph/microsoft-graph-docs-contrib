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
    '@odata.type': 'microsoft.graph.security.retentionDuration'
  },
  descriptionForAdmins: 'String',
  descriptionForUsers: 'String',
  labelToBeApplied: 'String',
  defaultRecordBehavior: 'String'
};

await client.api('/security/labels/retentionLabels/{retentionLabelId}')
	.version('beta')
	.update(retentionLabel);

```