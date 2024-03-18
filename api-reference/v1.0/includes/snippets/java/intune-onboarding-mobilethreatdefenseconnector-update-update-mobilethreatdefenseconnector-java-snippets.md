---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MobileThreatDefenseConnector mobileThreatDefenseConnector = new MobileThreatDefenseConnector();
mobileThreatDefenseConnector.setOdataType("#microsoft.graph.mobileThreatDefenseConnector");
OffsetDateTime lastHeartbeatDateTime = OffsetDateTime.parse("2016-12-31T23:59:37.9174975-08:00");
mobileThreatDefenseConnector.setLastHeartbeatDateTime(lastHeartbeatDateTime);
mobileThreatDefenseConnector.setPartnerState(MobileThreatPartnerTenantState.Available);
mobileThreatDefenseConnector.setAndroidMobileApplicationManagementEnabled(true);
mobileThreatDefenseConnector.setIosMobileApplicationManagementEnabled(true);
mobileThreatDefenseConnector.setAndroidEnabled(true);
mobileThreatDefenseConnector.setIosEnabled(true);
mobileThreatDefenseConnector.setWindowsEnabled(true);
mobileThreatDefenseConnector.setAndroidDeviceBlockedOnMissingPartnerData(true);
mobileThreatDefenseConnector.setIosDeviceBlockedOnMissingPartnerData(true);
mobileThreatDefenseConnector.setWindowsDeviceBlockedOnMissingPartnerData(true);
mobileThreatDefenseConnector.setPartnerUnsupportedOsVersionBlocked(true);
mobileThreatDefenseConnector.setPartnerUnresponsivenessThresholdInDays(6);
mobileThreatDefenseConnector.setAllowPartnerToCollectIOSApplicationMetadata(true);
mobileThreatDefenseConnector.setAllowPartnerToCollectIOSPersonalApplicationMetadata(true);
mobileThreatDefenseConnector.setMicrosoftDefenderForEndpointAttachEnabled(true);
MobileThreatDefenseConnector result = graphClient.deviceManagement().mobileThreatDefenseConnectors().byMobileThreatDefenseConnectorId("{mobileThreatDefenseConnector-id}").patch(mobileThreatDefenseConnector);


```