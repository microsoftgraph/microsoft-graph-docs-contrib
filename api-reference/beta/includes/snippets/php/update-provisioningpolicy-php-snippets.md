---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CloudPcProvisioningPolicy();
$requestBody->set@odatatype('#microsoft.graph.cloudPcProvisioningPolicy');

$requestBody->setDisplayName('HR provisioning policy');

$requestBody->setDescription('Provisioning policy for India HR employees');

$requestBody->setOnPremisesConnectionId('4e47d0f6-6f77-44f0-8893-c0fe1701ffff');

$requestBody->setImageId('Image ID value');

$requestBody->setImageDisplayName('Image Display Name value');

$requestBody->setImageType(new CloudPcProvisioningPolicyImageType('custom'));

$windowsSettings = new CloudPcWindowsSettings();
$windowsSettings->setLanguage('en-US');


$requestBody->setWindowsSettings($windowsSettings);


$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->provisioningPoliciesById('cloudPcProvisioningPolicy-id')->patch($requestBody);


```