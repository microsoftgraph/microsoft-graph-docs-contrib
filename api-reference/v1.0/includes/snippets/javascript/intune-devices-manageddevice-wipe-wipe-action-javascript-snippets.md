---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const wipe = Content-type: application/json
Content-length: 141

{
  keepEnrollmentData: true,
  keepUserData: true,
  macOsUnlockCode: 'Mac Os Unlock Code value',
  persistEsimDataPlan: true
};

await client.api('/deviceManagement/managedDevices/{managedDeviceId}/wipe')
	.post(wipe);

```