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
  displayName: 'Ring0 - IT devices',
  description: 'First deployment ring to test updates before going to prod.',
  includedGroupAssignment: {
    '@odata.type': 'microsoft.graph.windowsUpdates.includedGroupAssignment'
  },
  excludedGroupAssignment: {
    '@odata.type': 'microsoft.graph.windowsUpdates.excludedGroupAssignment'
  },
  deferralInDays: 5,
  isPaused: false
};

await client.api('/admin/windows/updates/policies/86364b9d-d04a-46f3-b2ee-7ef4157ab6fc/rings')
	.version('beta')
	.post(ring);

```