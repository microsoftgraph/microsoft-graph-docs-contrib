---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const detectionRule = {
  status: 'disabled',
  queryCondition: {
    queryText: 'DeviceProcessEvents | where InitiatingProcessFileName in~ (\'winword.exe\',\'excel.exe\',\'outlook.exe\') | where FileName == \'powershell.exe\' | where ProcessCommandLine has \'-enc\''
  }
};

await client.api('/security/rules/detectionRules/office-encoded-powershell')
	.version('beta')
	.update(detectionRule);

```