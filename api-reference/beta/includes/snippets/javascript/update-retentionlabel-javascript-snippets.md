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
  displayName: 'String',
  behaviorDuringRetentionPeriod: 'String',
  actionAfterRetentionPeriod: 'String',
  retentionTrigger: 'String',
  retentionDuration: {
    '@odata.type': 'microsoft.graph.security.retentionDuration'
  },
  isInUse: 'Boolean',
  descriptionForAdmins: 'String',
  descriptionForUsers: 'String',
  createdBy: {
    '@odata.type': 'microsoft.graph.identitySet'
  },
  labelToBeApplied: 'String',
  defaultRecordBehavior: 'String'
};

await client.api('/security/labels/retentionLabels/{retentionLabelId}')
	.version('beta')
	.update(retentionLabel);

```