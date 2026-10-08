---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const ring = {
  '@odata.type': '#microsoft.graph.windowsUpdates.qualityUpdateRing',
  displayName: 'Test Policy 123',
  description: 'Pre-production test policy',
  deferralInDays: 5,
  isPaused: true,
  isHotpatchEnabled: true
};

await client.api('/admin/windows/updates/policies/{policyId}/rings/{ringId}')
	.version('beta')
	.update(ring);

```