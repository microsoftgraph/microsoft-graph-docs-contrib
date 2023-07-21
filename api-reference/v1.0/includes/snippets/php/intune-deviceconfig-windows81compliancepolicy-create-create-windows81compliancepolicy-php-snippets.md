---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Windows81CompliancePolicy();
$requestBody->set@odatatype('#microsoft.graph.windows81CompliancePolicy');

$requestBody->setDescription('Description value');

$requestBody->setDisplayName('Display Name value');

$requestBody->setVersion(7);

$requestBody->setPasswordRequired(true);

$requestBody->setPasswordBlockSimple(true);

$requestBody->setPasswordExpirationDays(6);

$requestBody->setPasswordMinimumLength(5);

$requestBody->setPasswordMinutesOfInactivityBeforeLock(5);

$requestBody->setPasswordMinimumCharacterSetCount(0);

$requestBody->setPasswordRequiredType(new RequiredPasswordType('alphanumeric'));

$requestBody->setPasswordPreviousPasswordBlockCount(2);

$requestBody->setOsMinimumVersion('Os Minimum Version value');

$requestBody->setOsMaximumVersion('Os Maximum Version value');

$requestBody->setStorageRequireEncryption(true);



$result = $graphServiceClient->deviceManagement()->deviceCompliancePolicies()->post($requestBody);


```