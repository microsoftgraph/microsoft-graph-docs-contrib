---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const termsAndConditions = {
  '@odata.type': '#microsoft.graph.termsAndConditions',
  displayName: 'Display Name value',
  description: 'Description value',
  title: 'Title value',
  bodyText: 'Body Text value',
  acceptanceStatement: 'Acceptance Statement value',
  version: 7
};

await client.api('/deviceManagement/termsAndConditions')
	.post(termsAndConditions);

```