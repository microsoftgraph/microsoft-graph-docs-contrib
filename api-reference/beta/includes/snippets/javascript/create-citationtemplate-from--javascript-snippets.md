---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const citationTemplate = {
  '@odata.type': '#microsoft.graph.security.citationTemplate',
  displayName: 'String',
  createdBy: {
    '@odata.type': 'microsoft.graph.identitySet'
  },
  citationUrl: 'String',
  citationJurisdiction: 'String'
};

await client.api('/security/labels/citations')
	.version('beta')
	.post(citationTemplate);

```