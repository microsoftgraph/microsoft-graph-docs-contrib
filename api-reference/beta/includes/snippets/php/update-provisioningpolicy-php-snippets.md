---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CloudPcProvisioningPolicy;
use Microsoft\Graph\Beta\Generated\Models\CloudPcProvisioningPolicyImageType;
use Microsoft\Graph\Beta\Generated\Models\CloudPcWindowsSettings;
use Microsoft\Graph\Beta\Generated\Models\CloudPcWindowsSetting;
use Microsoft\Graph\Beta\Generated\Models\MicrosoftManagedDesktop;
use Microsoft\Graph\Beta\Generated\Models\MicrosoftManagedDesktopType;
use Microsoft\Graph\Beta\Generated\Models\CloudPcProvisioningPolicyAutopatch;
use Microsoft\Graph\Beta\Generated\Models\CloudPcAutopilotConfiguration;
use Microsoft\Graph\Beta\Generated\Models\CloudPcUserSettingsPersistenceConfiguration;
use Microsoft\Graph\Beta\Generated\Models\CloudPcUserSettingsPersistenceStorageSizeCategory;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudPcProvisioningPolicy();
$requestBody->setOdataType('#microsoft.graph.cloudPcProvisioningPolicy');
$requestBody->setDisplayName('HR provisioning policy');
$requestBody->setDescription('Provisioning policy for India HR employees');
$requestBody->setImageId('Image ID value');
$requestBody->setImageDisplayName('Image Display Name value');
$requestBody->setImageType(new CloudPcProvisioningPolicyImageType('custom'));
$windowsSettings = new CloudPcWindowsSettings();
$windowsSettings->setLanguage('en-US');
$requestBody->setWindowsSettings($windowsSettings);
$windowsSetting = new CloudPcWindowsSetting();
$windowsSetting->setLocale('en-US');
$requestBody->setWindowsSetting($windowsSetting);
$microsoftManagedDesktop = new MicrosoftManagedDesktop();
$microsoftManagedDesktop->setManagedType(new MicrosoftManagedDesktopType('starterManaged'));
$microsoftManagedDesktop->setProfile(null);
$requestBody->setMicrosoftManagedDesktop($microsoftManagedDesktop);
$autopatch = new CloudPcProvisioningPolicyAutopatch();
$autopatch->setAutopatchGroupId('91197a0b-3a74-408d-ba88-bce3fdc4e5eb');
$requestBody->setAutopatch($autopatch);
$autopilotConfiguration = new CloudPcAutopilotConfiguration();
$autopilotConfiguration->setDevicePreparationProfileId('59e5d3d2-ec68-4bfe-9693-27975b318990');
$autopilotConfiguration->setApplicationTimeoutInMinutes(30);
$autopilotConfiguration->setOnFailureDeviceAccessDenied(false);
$requestBody->setAutopilotConfiguration($autopilotConfiguration);
$userSettingsPersistenceConfiguration = new CloudPcUserSettingsPersistenceConfiguration();
$userSettingsPersistenceConfiguration->setUserSettingsPersistenceEnabled(false);
$userSettingsPersistenceConfiguration->setUserSettingsPersistenceStorageSizeCategory(new CloudPcUserSettingsPersistenceStorageSizeCategory('fourGB'));
$requestBody->setUserSettingsPersistenceConfiguration($userSettingsPersistenceConfiguration);
$additionalData = [
	'onPremisesConnectionId' => '4e47d0f6-6f77-44f0-8893-c0fe1701ffff',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->provisioningPolicies()->byCloudPcProvisioningPolicyId('cloudPcProvisioningPolicy-id')->patch($requestBody)->wait();

```