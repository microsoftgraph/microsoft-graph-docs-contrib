---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const windowsInformationProtectionAppLockerFile = {
  '@odata.type': '#microsoft.graph.windowsInformationProtectionAppLockerFile',
  displayName: 'Display Name value',
  fileHash: 'File Hash value',
  file: 'ZmlsZQ==',
  version: 'Version value'
};

await client.api('/deviceAppManagement/windowsInformationProtectionPolicies/{windowsInformationProtectionPolicyId}/exemptAppLockerFiles')
	.post(windowsInformationProtectionAppLockerFile);

```