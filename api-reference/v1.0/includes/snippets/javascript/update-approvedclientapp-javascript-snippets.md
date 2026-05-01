---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const approvedClientApp = {
  '@odata.type': '#microsoft.graph.approvedClientApp',
  displayName: 'Client App 1'
};

await client.api('/servicePrincipals/00af5dfb-85da-4b41-a677-0c6b86dd34f8/remoteDesktopSecurityConfiguration/approvedClientApps/95bd8f3d-e166-c072-4e28-af935a6d237f')
	.update(approvedClientApp);

```