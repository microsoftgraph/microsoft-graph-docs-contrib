---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mobileThreatDefenseConnector = {
  '@odata.type': '#microsoft.graph.mobileThreatDefenseConnector',
  lastHeartbeatDateTime: '2016-12-31T23:59:37.9174975-08:00',
  partnerState: 'available',
  androidMobileApplicationManagementEnabled: true,
  iosMobileApplicationManagementEnabled: true,
  androidEnabled: true,
  iosEnabled: true,
  windowsEnabled: true,
  androidDeviceBlockedOnMissingPartnerData: true,
  iosDeviceBlockedOnMissingPartnerData: true,
  windowsDeviceBlockedOnMissingPartnerData: true,
  partnerUnsupportedOsVersionBlocked: true,
  partnerUnresponsivenessThresholdInDays: 6,
  allowPartnerToCollectIOSApplicationMetadata: true,
  allowPartnerToCollectIOSPersonalApplicationMetadata: true,
  microsoftDefenderForEndpointAttachEnabled: true
};

await client.api('/deviceManagement/mobileThreatDefenseConnectors')
	.post(mobileThreatDefenseConnector);

```