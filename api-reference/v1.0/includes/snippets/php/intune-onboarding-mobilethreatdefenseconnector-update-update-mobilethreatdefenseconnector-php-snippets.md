---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MobileThreatDefenseConnector();
$requestBody->setOdataType('#microsoft.graph.mobileThreatDefenseConnector');

$requestBody->setLastHeartbeatDateTime(new \DateTime('2016-12-31T23:59:37.9174975-08:00'));

$requestBody->setPartnerState(new MobileThreatPartnerTenantState('available'));

$requestBody->setAndroidMobileApplicationManagementEnabled(true);

$requestBody->setIosMobileApplicationManagementEnabled(true);

$requestBody->setAndroidEnabled(true);

$requestBody->setIosEnabled(true);

$requestBody->setWindowsEnabled(true);

$requestBody->setAndroidDeviceBlockedOnMissingPartnerData(true);

$requestBody->setIosDeviceBlockedOnMissingPartnerData(true);

$requestBody->setWindowsDeviceBlockedOnMissingPartnerData(true);

$requestBody->setPartnerUnsupportedOsVersionBlocked(true);

$requestBody->setPartnerUnresponsivenessThresholdInDays(6);

$requestBody->setAllowPartnerToCollectIOSApplicationMetadata(true);

$requestBody->setAllowPartnerToCollectIOSPersonalApplicationMetadata(true);

$requestBody->setMicrosoftDefenderForEndpointAttachEnabled(true);



$result = $graphServiceClient->deviceManagement()->mobileThreatDefenseConnectors()->byMobileThreatDefenseConnectorId('mobileThreatDefenseConnector-id')->patch($requestBody);


```