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
  id: 'cd57c330-a543-4249-9486-c1c257341de6'
};

await client.api('/servicePrincipals/00af5dfb-85da-4b41-a677-0c6b86dd34f8/remoteDesktopSecurityConfiguration/approvedClientApps')
	.version('beta')
	.post(approvedClientApp);

```