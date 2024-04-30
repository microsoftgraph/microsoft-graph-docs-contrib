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
 displayName: 'Contoso Company Policy',
  citationUrl: 'www.citationUrl.com',
  citationJurisdiction: 'Contoso'
};

await client.api('/security/labels/citations')
	.post(citationTemplate);

```