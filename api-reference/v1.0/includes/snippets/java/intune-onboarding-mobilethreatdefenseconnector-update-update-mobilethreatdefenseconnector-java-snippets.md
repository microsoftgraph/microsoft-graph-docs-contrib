---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MobileThreatDefenseConnector mobileThreatDefenseConnector = new MobileThreatDefenseConnector();
mobileThreatDefenseConnector.lastHeartbeatDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:59:37.9174975+00:00");
mobileThreatDefenseConnector.partnerState = MobileThreatPartnerTenantState.AVAILABLE;
mobileThreatDefenseConnector.androidMobileApplicationManagementEnabled = true;
mobileThreatDefenseConnector.iosMobileApplicationManagementEnabled = true;
mobileThreatDefenseConnector.androidEnabled = true;
mobileThreatDefenseConnector.iosEnabled = true;
mobileThreatDefenseConnector.windowsEnabled = true;
mobileThreatDefenseConnector.androidDeviceBlockedOnMissingPartnerData = true;
mobileThreatDefenseConnector.iosDeviceBlockedOnMissingPartnerData = true;
mobileThreatDefenseConnector.windowsDeviceBlockedOnMissingPartnerData = true;
mobileThreatDefenseConnector.partnerUnsupportedOsVersionBlocked = true;
mobileThreatDefenseConnector.partnerUnresponsivenessThresholdInDays = 6;
mobileThreatDefenseConnector.allowPartnerToCollectIOSApplicationMetadata = true;
mobileThreatDefenseConnector.allowPartnerToCollectIOSPersonalApplicationMetadata = true;
mobileThreatDefenseConnector.microsoftDefenderForEndpointAttachEnabled = true;

graphClient.deviceManagement().mobileThreatDefenseConnectors("{mobileThreatDefenseConnectorId}")
	.buildRequest()
	.patch(mobileThreatDefenseConnector);

```