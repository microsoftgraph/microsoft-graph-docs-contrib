---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceComplianceUserStatus = {
  '@odata.type': '#microsoft.graph.deviceComplianceUserStatus',
  userDisplayName: 'User Display Name value',
  devicesCount: 12,
  status: 'notApplicable',
  lastReportedDateTime: '2017-01-01T00:00:17.7769392-08:00',
  userPrincipalName: 'User Principal Name value'
};

await client.api('/deviceManagement/deviceCompliancePolicies/{deviceCompliancePolicyId}/userStatuses/{deviceComplianceUserStatusId}')
	.update(deviceComplianceUserStatus);

```