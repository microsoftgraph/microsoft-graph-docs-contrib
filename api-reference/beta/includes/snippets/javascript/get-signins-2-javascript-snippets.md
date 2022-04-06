---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let signIns = await client.api('/auditLogs/signins?&$filter=startsWith(appDisplayName,\'Azure\')&top=10')
	.version('beta')
	.filter('startsWith(appDisplayName,\'Azure\')')
	.get();

```