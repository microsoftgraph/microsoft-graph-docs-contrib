---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let mobileThreatDefenseConnectors = await client.api('/deviceManagement/mobileThreatDefenseConnectors')
	.get();

```