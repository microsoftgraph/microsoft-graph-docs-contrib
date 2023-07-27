---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceManagementExchangeConnector = {
  '@odata.type': '#microsoft.graph.deviceManagementExchangeConnector',
  lastSyncDateTime: '2017-01-01T00:02:49.3205976-08:00',
  status: 'connectionPending',
  primarySmtpAddress: 'Primary Smtp Address value',
  serverName: 'Server Name value',
  connectorServerName: 'Connector Server Name value',
  exchangeConnectorType: 'hosted',
  version: 'Version value',
  exchangeAlias: 'Exchange Alias value',
  exchangeOrganization: 'Exchange Organization value'
};

await client.api('/deviceManagement/exchangeConnectors/{deviceManagementExchangeConnectorId}')
	.update(deviceManagementExchangeConnector);

```