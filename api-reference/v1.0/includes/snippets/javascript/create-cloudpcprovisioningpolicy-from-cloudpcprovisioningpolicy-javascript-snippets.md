---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const cloudPcProvisioningPolicy = {
    '@odata.type': '#microsoft.graph.cloudPcProvisioningPolicy',
    description: 'Description value',
    displayName: 'Display Name value',
    domainJoinConfigurations: [
      {
        onPremisesConnectionId: '16ee6c71-fc10-438b-88ac-daa1ccafffff',
        domainJoinType: 'hybridAzureADJoin'
      },
      {
        onPremisesConnectionId: '26e16c71-f210-438b-88ac-d481ccafffff',
        domainJoinType: 'hybridAzureADJoin'
      }
    ],
    id: '1d164206-bf41-4fd2-8424-a3192d39ffff',
    enableSingleSignOn: true,
    imageDisplayName: 'Windows-10 19h1-evd',
    imageId: 'MicrosoftWindowsDesktop_Windows-10_19h1-evd',
    imageType: 'gallery',
    windowsSetting: {
        locale: 'en-US'
    },
    provisioningType: 'dedicated'
};

await client.api('/deviceManagement/virtualEndpoint/provisioningPolicies')
	.post(cloudPcProvisioningPolicy);

```