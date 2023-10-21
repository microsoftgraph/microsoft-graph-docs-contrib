---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceCompliancePolicy = {
  '@odata.type': '#microsoft.graph.macOSCompliancePolicy',
  description: 'Description value',
  displayName: 'Display Name value',
  version: 7,
  passwordRequired: true,
  passwordBlockSimple: true,
  passwordExpirationDays: 6,
  passwordMinimumLength: 5,
  passwordMinutesOfInactivityBeforeLock: 5,
  passwordPreviousPasswordBlockCount: 2,
  passwordMinimumCharacterSetCount: 0,
  passwordRequiredType: 'alphanumeric',
  osMinimumVersion: 'Os Minimum Version value',
  osMaximumVersion: 'Os Maximum Version value',
  systemIntegrityProtectionEnabled: true,
  deviceThreatProtectionEnabled: true,
  deviceThreatProtectionRequiredSecurityLevel: 'secured',
  storageRequireEncryption: true,
  firewallEnabled: true,
  firewallBlockAllIncoming: true,
  firewallEnableStealthMode: true
};

await client.api('/deviceManagement/deviceCompliancePolicies/{deviceCompliancePolicyId}')
	.update(deviceCompliancePolicy);

```