---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mobileApp = {
  '@odata.type': '#microsoft.graph.microsoftStoreForBusinessApp',
  displayName: 'Display Name value',
  description: 'Description value',
  publisher: 'Publisher value',
  largeIcon: {
    '@odata.type': 'microsoft.graph.mimeContent',
    type: 'Type value',
    value: 'dmFsdWU='
  },
  isFeatured: true,
  privacyInformationUrl: 'https://example.com/privacyInformationUrl/',
  informationUrl: 'https://example.com/informationUrl/',
  owner: 'Owner value',
  developer: 'Developer value',
  notes: 'Notes value',
  publishingState: 'processing',
  usedLicenseCount: 0,
  totalLicenseCount: 1,
  productKey: 'Product Key value',
  licenseType: 'online',
  packageIdentityName: 'Package Identity Name value'
};

await client.api('/deviceAppManagement/mobileApps/{mobileAppId}')
	.update(mobileApp);

```