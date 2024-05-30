---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceCompliancePolicy = {
  '@odata.type': '#microsoft.graph.windowsPhone81CompliancePolicy',
  description: 'Description value',
  displayName: 'Display Name value',
  version: 7,
  passwordBlockSimple: true,
  passwordExpirationDays: 6,
  passwordMinimumLength: 5,
  passwordMinutesOfInactivityBeforeLock: 5,
  passwordMinimumCharacterSetCount: 0,
  passwordRequiredType: 'alphanumeric',
  passwordPreviousPasswordBlockCount: 2,
  passwordRequired: true,
  osMinimumVersion: 'Os Minimum Version value',
  osMaximumVersion: 'Os Maximum Version value',
  storageRequireEncryption: true
};

await client.api('/deviceManagement/deviceCompliancePolicies')
	.post(deviceCompliancePolicy);

```