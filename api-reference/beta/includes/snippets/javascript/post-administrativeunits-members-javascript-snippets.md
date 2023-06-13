---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const directoryObject = {
  '@odata.type': '#microsoft.graph.group',
  description: 'Self help community for golf',
  displayName: 'Golf Assist',
  groupTypes: [
    'Unified'
  ],
  mailEnabled: true,
  mailNickname: 'golfassist',
  securityEnabled: false
};

await client.api('/administrativeUnits/{id}/members')
	.version('beta')
	.post(directoryObject);

```