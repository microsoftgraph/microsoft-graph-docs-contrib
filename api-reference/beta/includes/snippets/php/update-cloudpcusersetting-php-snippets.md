---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CloudPcUserSetting;
use Microsoft\Graph\Beta\Generated\Models\CloudPcRestorePointSetting;
use Microsoft\Graph\Beta\Generated\Models\CloudPcRestorePointFrequencyType;
use Microsoft\Graph\Beta\Generated\Models\CloudPcCrossRegionDisasterRecoverySetting;
use Microsoft\Graph\Beta\Generated\Models\CloudPcDisasterRecoveryNetworkSetting;
use Microsoft\Graph\Beta\Generated\Models\CloudPcDisasterRecoveryType;
use Microsoft\Graph\Beta\Generated\Models\CloudPcProvisioningSourceType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudPcUserSetting();
$requestBody->setOdataType('#microsoft.graph.cloudPcUserSetting');
$requestBody->setDisplayName('Example');
$requestBody->setSelfServiceEnabled(true);
$restorePointSetting = new CloudPcRestorePointSetting();
$restorePointSetting->setFrequencyInHours(16);
$restorePointSetting->setFrequencyType(new CloudPcRestorePointFrequencyType('sixteenHours'));
$restorePointSetting->setUserRestoreEnabled(true);
$requestBody->setRestorePointSetting($restorePointSetting);
$crossRegionDisasterRecoverySetting = new CloudPcCrossRegionDisasterRecoverySetting();
$crossRegionDisasterRecoverySetting->setCrossRegionDisasterRecoveryEnabled(false);
$crossRegionDisasterRecoverySetting->setMaintainCrossRegionRestorePointEnabled(true);
$crossRegionDisasterRecoverySettingDisasterRecoveryNetworkSetting = new CloudPcDisasterRecoveryNetworkSetting();
$additionalData = [
	'regionName' => 'westus',
	'regionGroup' => 'usEast',
];
$crossRegionDisasterRecoverySettingDisasterRecoveryNetworkSetting->setAdditionalData($additionalData);
$crossRegionDisasterRecoverySetting->setDisasterRecoveryNetworkSetting($crossRegionDisasterRecoverySettingDisasterRecoveryNetworkSetting);
$crossRegionDisasterRecoverySetting->setDisasterRecoveryType(new CloudPcDisasterRecoveryType('premium'));
$crossRegionDisasterRecoverySetting->setUserInitiatedDisasterRecoveryAllowed(true);
$requestBody->setCrossRegionDisasterRecoverySetting($crossRegionDisasterRecoverySetting);
$requestBody->setProvisioningSourceType(new CloudPcProvisioningSourceType('image'));
$requestBody->setLocalAdminEnabled(false);
$requestBody->setResetEnabled(true);

$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->userSettings()->byCloudPcUserSettingId('cloudPcUserSetting-id')->patch($requestBody)->wait();

```