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
  name: 'Malicious Domains Policy',
  description: 'Policy to block traffic to known malicious domains based on threat intelligence',
  version: '1.0',
  settings: {
    '@odata.type': 'microsoft.graph.networkaccess.threatIntelligencePolicySettings',
    defaultAction: 'block'
  }
};

await client.api('/networkAccess/threatIntelligencePolicies')
	.version('beta')
	.post(threatIntelligencePolicy);

```