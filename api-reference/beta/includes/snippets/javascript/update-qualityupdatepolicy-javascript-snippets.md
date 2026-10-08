---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const policy = {
  '@odata.type': '#microsoft.graph.windowsUpdates.qualityUpdatePolicy',
  displayName: 'Patch Tuesday Test',
  description: 'Quality update policy to test upcoming Patch Tuesday updates',
  approvalRules: [
    {
      '@odata.type': 'microsoft.graph.windowsUpdates.qualityUpdateApprovalRule',
      deferralInDays: 0,
      classification: 'nonSecurity',
      cadence: 'outOfBand'
    }
  ]
};

await client.api('/admin/windows/updates/policies/f316bfd9-c84e-a334-cebe-071d3c64b2c1')
	.version('beta')
	.update(policy);

```