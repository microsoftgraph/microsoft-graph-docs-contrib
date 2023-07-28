---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceComplianceSettingState = {
  '@odata.type': '#microsoft.graph.deviceComplianceSettingState',
  setting: 'Setting value',
  settingName: 'Setting Name value',
  deviceId: 'Device Id value',
  deviceName: 'Device Name value',
  userId: 'User Id value',
  userEmail: 'User Email value',
  userName: 'User Name value',
  userPrincipalName: 'User Principal Name value',
  deviceModel: 'Device Model value',
  state: 'notApplicable',
  complianceGracePeriodExpirationDateTime: '2016-12-31T23:56:44.951111-08:00'
};

await client.api('/deviceManagement/deviceCompliancePolicySettingStateSummaries/{deviceCompliancePolicySettingStateSummaryId}/deviceComplianceSettingStates')
	.post(deviceComplianceSettingState);

```