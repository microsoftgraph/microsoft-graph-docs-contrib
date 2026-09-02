---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const externalOriginResourceConnector = {
  '@odata.type': '#microsoft.graph.externalOriginResourceConnector',
  displayName: 'SAP IAG Connector',
  description: 'This connector helps integrate Microsoft Entra with SAP IAG',
  connectorType: 'sapIag',
  connectionInfo: {
    '@odata.type': 'microsoft.graph.externalTokenBasedSapIagConnectionInfo',
    url: 'https://contoso.example.com',
    accessTokenUrl: 'https://contoso.example.com/oauth/token',
    clientId: 'e9ad8b1d-959c-4e86-8ba2-2cbf4d14bc29',
    keyVaultName: 'Keyvault',
    secretName: 'clientSecret',
    subscriptionId: '5ee98b73-d9df-43a7-8a92-36855054bdee',
    resourceGroup: 'SAP IAG Group'
  }
};

await client.api('/identityGovernance/entitlementManagement/externalOriginResourceConnectors')
	.post(externalOriginResourceConnector);

```