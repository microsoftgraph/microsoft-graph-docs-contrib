---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EditionUpgradeConfiguration();
$requestBody->setOdataType('#microsoft.graph.editionUpgradeConfiguration');

$requestBody->setDescription('Description value');

$requestBody->setDisplayName('Display Name value');

$requestBody->setVersion(7);

$requestBody->setLicenseType(new EditionUpgradeLicenseType('licenseFile'));

$requestBody->setTargetEdition(new Windows10EditionType('windows10EnterpriseN'));

$requestBody->setLicense('License value');

$requestBody->setProductKey('Product Key value');



$result = $graphServiceClient->deviceManagement()->deviceConfigurations()->post($requestBody);


```