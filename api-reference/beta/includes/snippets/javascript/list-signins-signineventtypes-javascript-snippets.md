---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let signIns = await client.api('/auditLogs/signins')
	.version('beta')
	.filter('(signInEventTypes/any(t: t eq \'nonInteractiveUser\' OR t eq \'interactiveUser\' OR t eq \'servicePrincipal\' OR t eq \'managedIdentity\'))')
	.get();

```