---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\WindowsPhone81CompliancePolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WindowsPhone81CompliancePolicy();
$requestBody->setOdataType('#microsoft.graph.windowsPhone81CompliancePolicy');
$requestBody->setDescription('Description value');
$requestBody->setDisplayName('Display Name value');
$requestBody->setVersion(7);
$requestBody->setPasswordBlockSimple(true);
$requestBody->setPasswordExpirationDays(6);
$requestBody->setPasswordMinimumLength(5);
$requestBody->setPasswordMinutesOfInactivityBeforeLock(5);
$requestBody->setPasswordMinimumCharacterSetCount(0);
$requestBody->setPasswordRequiredType(new RequiredPasswordType('alphanumeric'));
$requestBody->setPasswordPreviousPasswordBlockCount(2);
$requestBody->setPasswordRequired(true);
$requestBody->setOsMinimumVersion('Os Minimum Version value');
$requestBody->setOsMaximumVersion('Os Maximum Version value');
$requestBody->setStorageRequireEncryption(true);

$result = $graphServiceClient->deviceManagement()->deviceCompliancePolicies()->byDeviceCompliancePolicyId('deviceCompliancePolicy-id')->patch($requestBody)->wait();

```