---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const sync = Content-type: application/json
Content-length: 31

{
  syncType: 'deltaSync'
};

await client.api('/deviceManagement/exchangeConnectors/{deviceManagementExchangeConnectorId}/sync')
	.post(sync);

```