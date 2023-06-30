---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mobileApp = {
  '@odata.type': '#microsoft.graph.win32LobApp',
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
  installCommandLine: 'Install Command Line value',
  uninstallCommandLine: 'Uninstall Command Line value',
  applicableArchitectures: 'x86',
  minimumFreeDiskSpaceInMB: 8,
  minimumMemoryInMB: 1,
  minimumNumberOfProcessors: 9,
  minimumCpuSpeedInMHz: 4,
  rules: [
    {
      '@odata.type': 'microsoft.graph.win32LobAppRegistryRule',
      ruleType: 'requirement',
      check32BitOn64System: true,
      keyPath: 'Key Path value',
      valueName: 'Value Name value',
      operationType: 'exists',
      operator: 'equal',
      comparisonValue: 'Comparison Value value'
    }
  ],
  installExperience: {
    '@odata.type': 'microsoft.graph.win32LobAppInstallExperience',
    runAsAccount: 'user',
    deviceRestartBehavior: 'allow'
  },
  returnCodes: [
    {
      '@odata.type': 'microsoft.graph.win32LobAppReturnCode',
      returnCode: 10,
      type: 'success'
    }
  ],
  msiInformation: {
    '@odata.type': 'microsoft.graph.win32LobAppMsiInformation',
    productCode: 'Product Code value',
    productVersion: 'Product Version value',
    upgradeCode: 'Upgrade Code value',
    requiresReboot: true,
    packageType: 'perUser',
    productName: 'Product Name value',
    publisher: 'Publisher value'
  },
  setupFilePath: 'Setup File Path value',
  minimumSupportedWindowsRelease: 'Minimum Supported Windows Release value'
};

await client.api('/deviceAppManagement/mobileApps/{mobileAppId}')
	.update(mobileApp);

```