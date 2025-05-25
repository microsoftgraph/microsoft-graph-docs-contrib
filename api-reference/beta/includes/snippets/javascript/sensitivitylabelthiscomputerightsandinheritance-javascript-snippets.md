---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const sensitivityLabel = {
  delegatedUserEmail: 'String',
  locale: 'String',
  protectedContents: [
    {
      '@odata.type': 'microsoft.graph.protectedContent'
    }
  ],
  supportedContentFormats: [
    'String'
  ]
};

await client.api('/security/dataSecurityAndGovernance/sensitivityLabels/computeRightsAndInheritance')
	.version('beta')
	.post(sensitivityLabel);

```