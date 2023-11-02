---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const targetDeviceGroup = {
  '@odata.type': '#microsoft.graph.targetDeviceGroup',
  displayName: 'Device Group A'
};

await client.api('/servicePrincipals/00af5dfb-85da-4b41-a677-0c6b86dd34f8/remoteDesktopSecurityConfiguration/targetDeviceGroups/b9e4eae4-b781-45a1-ce65-f2dd8ac3b696')
	.update(targetDeviceGroup);

```