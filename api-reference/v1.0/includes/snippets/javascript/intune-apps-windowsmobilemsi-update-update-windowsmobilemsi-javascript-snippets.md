---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mobileApp = {
  '@odata.type': '#microsoft.graph.windowsMobileMSI',
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
  committedContentVersion: 'Committed Content Version value',
  fileName: 'File Name value',
  size: 4,
  commandLine: 'Command Line value',
  productCode: 'Product Code value',
  productVersion: 'Product Version value',
  ignoreVersionDetection: true
};

await client.api('/deviceAppManagement/mobileApps/{mobileAppId}')
	.update(mobileApp);

```