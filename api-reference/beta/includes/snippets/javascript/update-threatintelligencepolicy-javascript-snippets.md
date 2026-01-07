---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const threatIntelligencePolicy = {
  '@odata.type': '#microsoft.graph.networkaccess.threatIntelligencePolicy',
  id: 'a8352c78-90c6-4edd-aaca-9dc4292e7750',
  name: 'Threat Intel Policy',
  description: '',
  version: '1.0.0',
  lastModifiedDateTime: '2025-06-18T17:34:25.8207682Z',
  settings: {
    defaultAction: 'allow'
  }
};

await client.api('/networkAccess/threatIntelligencePolicies/{threatIntelligencePolicyId}')
	.version('beta')
	.update(threatIntelligencePolicy);

```