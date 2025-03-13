---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let mobileThreatDefenseConnector = await client.api('/deviceManagement/mobileThreatDefenseConnectors/{mobileThreatDefenseConnectorId}')
	.get();

```