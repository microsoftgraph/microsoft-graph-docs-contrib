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
$additionalData = [
	'onPremisesConnectionId' => '4e47d0f6-6f77-44f0-8893-c0fe1701ffff',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->provisioningPolicies()->byCloudPcProvisioningPolicyId('cloudPcProvisioningPolicy-id')->patch($requestBody)->wait();

```