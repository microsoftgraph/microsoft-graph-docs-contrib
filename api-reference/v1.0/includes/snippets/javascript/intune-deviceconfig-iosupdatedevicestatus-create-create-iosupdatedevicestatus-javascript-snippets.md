---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const iosUpdateDeviceStatus = {
  '@odata.type': '#microsoft.graph.iosUpdateDeviceStatus',
  installStatus: 'available',
  osVersion: 'Os Version value',
  deviceId: 'Device Id value',
  userId: 'User Id value',
  deviceDisplayName: 'Device Display Name value',
  userName: 'User Name value',
  deviceModel: 'Device Model value',
  complianceGracePeriodExpirationDateTime: '2016-12-31T23:56:44.951111-08:00',
  status: 'notApplicable',
  lastReportedDateTime: '2017-01-01T00:00:17.7769392-08:00',
  userPrincipalName: 'User Principal Name value'
};

await client.api('/deviceManagement/iosUpdateStatuses')
	.post(iosUpdateDeviceStatus);

```