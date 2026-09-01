---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const externalOriginResourceConnector = {
  connectorType: 'sapIag',
  displayName: 'SAP IAG Connector 2.0',
  description: 'SAP IAG Connector 2.0 description',
  connectionInfo: {
    '@odata.type': 'microsoft.graph.externalTokenBasedSapIagConnectionInfo',
    url: 'https://contoso.example.com',
    keyVaultName: 'Keyvault',
    subscriptionId: '5ee98b73-d9df-43a7-8a92-36855054bdee',
    resourceGroup: 'SAP IAG Group',
    accessTokenUrl: 'https://contoso.example.com/oauth/token',
    clientId: 'e9ad8b1d-959c-4e86-8ba2-2cbf4d14bc29',
    secretName: 'clientSecret'
  }
};

await client.api('/identityGovernance/entitlementManagement/externalOriginResourceConnectors/e363ebb8-6faa-4980-ac5b-eefc196e1cd4')
	.update(externalOriginResourceConnector);

```