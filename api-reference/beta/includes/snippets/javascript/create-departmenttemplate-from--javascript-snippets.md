---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const departmentTemplate = {
  '@odata.type': '#microsoft.graph.security.departmentTemplate',
  displayName: 'String',
  createdBy: {
    '@odata.type': 'microsoft.graph.identitySet'
  }
};

await client.api('/security/labels/departments')
	.version('beta')
	.post(departmentTemplate);

```