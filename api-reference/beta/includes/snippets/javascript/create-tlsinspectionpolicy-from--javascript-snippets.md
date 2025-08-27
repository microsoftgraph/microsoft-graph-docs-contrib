---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const tlsInspectionPolicy = {
  name: 'Default TLS Inspection Policy',
  description: 'Policy for inspecting TLS traffic',
  settings: {
    defaultAction: 'bypass'
  }
};

await client.api('/networkAccess/tlsInspectionPolicies')
	.version('beta')
	.post(tlsInspectionPolicy);

```