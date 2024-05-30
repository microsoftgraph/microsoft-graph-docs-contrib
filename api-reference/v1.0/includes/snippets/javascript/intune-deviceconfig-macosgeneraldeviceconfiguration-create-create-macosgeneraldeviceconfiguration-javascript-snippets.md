---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceConfiguration = {
  '@odata.type': '#microsoft.graph.macOSGeneralDeviceConfiguration',
  description: 'Description value',
  displayName: 'Display Name value',
  version: 7,
  compliantAppsList: [
    {
      '@odata.type': 'microsoft.graph.appListItem',
      name: 'Name value',
      publisher: 'Publisher value',
      appStoreUrl: 'https://example.com/appStoreUrl/',
      appId: 'App Id value'
    }
  ],
  compliantAppListType: 'appsInListCompliant',
  emailInDomainSuffixes: [
    'Email In Domain Suffixes value'
  ],
  passwordBlockSimple: true,
  passwordExpirationDays: 6,
  passwordMinimumCharacterSetCount: 0,
  passwordMinimumLength: 5,
  passwordMinutesOfInactivityBeforeLock: 5,
  passwordMinutesOfInactivityBeforeScreenTimeout: 14,
  passwordPreviousPasswordBlockCount: 2,
  passwordRequiredType: 'alphanumeric',
  passwordRequired: true
};

await client.api('/deviceManagement/deviceConfigurations')
	.post(deviceConfiguration);

```