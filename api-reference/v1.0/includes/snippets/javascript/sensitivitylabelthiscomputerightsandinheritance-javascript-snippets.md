---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const computeRightsAndInheritanceResult = {
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
	.post(computeRightsAndInheritanceResult);

```