---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const fileStorageContainerType = {
  name: 'Test Trial Container',
  owningAppId: '11335700-9a00-4c00-84dd-0c210f203f00',
  billingClassification: 'trial',
  settings: {
    isItemVersioningEnabled: true,
    isSharingRestricted: false,
    consumingTenantOverridables: 'isSearchEnabled,itemMajorVersionLimit',
    agent: {
      chatEmbedAllowedHosts: ['https://localhost:3000']
    }
  }
};

await client.api('/storage/fileStorage/containerTypes')
	.version('beta')
	.post(fileStorageContainerType);

```