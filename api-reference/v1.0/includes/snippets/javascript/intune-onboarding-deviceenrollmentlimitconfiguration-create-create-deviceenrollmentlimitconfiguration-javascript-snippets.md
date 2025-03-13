---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceEnrollmentConfiguration = {
  '@odata.type': '#microsoft.graph.deviceEnrollmentLimitConfiguration',
  displayName: 'Display Name value',
  description: 'Description value',
  priority: 8,
  version: 7,
  limit: 5
};

await client.api('/deviceManagement/deviceEnrollmentConfigurations')
	.post(deviceEnrollmentConfiguration);

```