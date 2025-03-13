---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mobileApp = {
  '@odata.type': '#microsoft.graph.windowsUniversalAppX',
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
  applicableArchitectures: 'x86',
  applicableDeviceTypes: 'desktop',
  identityName: 'Identity Name value',
  identityPublisherHash: 'Identity Publisher Hash value',
  identityResourceIdentifier: 'Identity Resource Identifier value',
  isBundle: true,
  minimumSupportedOperatingSystem: {
    '@odata.type': 'microsoft.graph.windowsMinimumOperatingSystem',
    v8_0: true,
    v8_1: true,
    v10_0: true
  },
  identityVersion: 'Identity Version value'
};

await client.api('/deviceAppManagement/mobileApps')
	.post(mobileApp);

```