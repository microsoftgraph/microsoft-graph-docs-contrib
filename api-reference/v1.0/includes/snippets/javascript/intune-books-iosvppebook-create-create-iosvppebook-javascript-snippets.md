---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const managedEBook = {
  '@odata.type': '#microsoft.graph.iosVppEBook',
  displayName: 'Display Name value',
  description: 'Description value',
  publisher: 'Publisher value',
  publishedDateTime: '2016-12-31T23:58:16.1180489-08:00',
  largeCover: {
    '@odata.type': 'microsoft.graph.mimeContent',
    type: 'Type value',
    value: 'dmFsdWU='
  },
  informationUrl: 'https://example.com/informationUrl/',
  privacyInformationUrl: 'https://example.com/privacyInformationUrl/',
  vppTokenId: '9148ac60-ac60-9148-60ac-489160ac4891',
  appleId: 'Apple Id value',
  vppOrganizationName: 'Vpp Organization Name value',
  genres: [
    'Genres value'
  ],
  language: 'Language value',
  seller: 'Seller value',
  totalLicenseCount: 1,
  usedLicenseCount: 0
};

await client.api('/deviceAppManagement/managedEBooks')
	.post(managedEBook);

```