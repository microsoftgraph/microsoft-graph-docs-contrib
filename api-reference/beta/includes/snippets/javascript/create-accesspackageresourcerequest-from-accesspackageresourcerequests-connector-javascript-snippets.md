---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageResourceRequest = {
  catalogId: 'bcb19bf7-cdf7-4a70-a106-f6543620b2a5',
  accessPackageResource: {
    id: '88eb460d-ca08-4eb9-afae-8d60a8b00377',
    displayName: 'SAP IAG Access Rights',
    description: 'This resource represents the business roles of SAP IAG',
    resourceType: 'Business role',
    originId: 'https://iagintgorg-iag-intg-space-java-rest-arqapi.cfapps.sap.hana.ondemand.com',
    originSystem: 'External',
    accessPackageResourceScopes: [],
    externalOriginResourceConnector: {
      id: '1a53cea5-48bd-467c-af81-a24245b0df2b',
      displayName: 'SAP IAG 10.0',
      description: 'SAP IAG 10.0.0',
      connectorType: 'sapIag',
      connectionInfo: {
        '@odata.type': 'microsoft.graph.externalTokenBasedSapIagConnectionInfo',
        url: 'https://iagigorg-iag-intg-space-java-rest-arqapi.cfapps.sap.hana.ondemand.com',
        subscriptionId: '8e072eb5-73f5-4ed2-9324-a734dcb9728',
        resourceGroup: 'SAPResourceGroup',
        accessTokenUrl: 'https://entra-docu-intg-mrrd3gv.authentication.sap.hana.ondemand.com/oauth/token',
        clientId: 'sb-72062308-a7ae-456f-b9a4-24302b8a4aa!b247012|iagapi-iag-intg-space!b11378',
        keyVaultName: 'SAPIAG-KV',
        secretName: 'ClientSecret'
      }
    },
    accessPackageResourceEnvironment: null
  },
  requestType: 'AdminAdd',
  history: [],
  executeImmediately: true
};

await client.api('/identityGovernance/entitlementManagement/accessPackageResourceRequests')
	.version('beta')
	.post(accessPackageResourceRequest);

```