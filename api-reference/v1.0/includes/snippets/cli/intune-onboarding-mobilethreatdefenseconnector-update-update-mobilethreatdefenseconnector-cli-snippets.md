---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc device-management mobile-threat-defense-connectors patch --mobile-threat-defense-connector-id {mobileThreatDefenseConnector-id} --body '{\
  "@odata.type": "#microsoft.graph.mobileThreatDefenseConnector",\
  "lastHeartbeatDateTime": "2016-12-31T23:59:37.9174975-08:00",\
  "partnerState": "available",\
  "androidMobileApplicationManagementEnabled": true,\
  "iosMobileApplicationManagementEnabled": true,\
  "androidEnabled": true,\
  "iosEnabled": true,\
  "windowsEnabled": true,\
  "androidDeviceBlockedOnMissingPartnerData": true,\
  "iosDeviceBlockedOnMissingPartnerData": true,\
  "windowsDeviceBlockedOnMissingPartnerData": true,\
  "partnerUnsupportedOsVersionBlocked": true,\
  "partnerUnresponsivenessThresholdInDays": 6,\
  "allowPartnerToCollectIOSApplicationMetadata": true,\
  "allowPartnerToCollectIOSPersonalApplicationMetadata": true,\
  "microsoftDefenderForEndpointAttachEnabled": true\
}\
'

```