---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcSnapshot = await client.api('/deviceManagement/virtualEndpoint/snapshots/A00009UV000_93aff428-61f2-467f-a879-1102af6fd4a8')
	.version('beta')
	.get();

```