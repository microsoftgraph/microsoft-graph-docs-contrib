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
  displayName: 'Patch Tuesday 123',
  description: 'Testing Patch Tuesday in test environment',
  approvalRules: [
    {
      '@odata.type': 'microsoft.graph.windowsUpdates.qualityUpdateApprovalRule',
      deferralInDays: 0,
      classification: 'nonSecurity',
      cadence: 'outOfBand'
    }
  ]
};

await client.api('/admin/windows/updates/policies')
	.version('beta')
	.post(policy);

```