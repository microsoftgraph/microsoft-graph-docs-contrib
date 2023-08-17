---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DeviceComplianceSettingState();
$requestBody->set@odatatype('#microsoft.graph.deviceComplianceSettingState');

$requestBody->setSetting('Setting value');

$requestBody->setSettingName('Setting Name value');

$requestBody->setDeviceId('Device Id value');

$requestBody->setDeviceName('Device Name value');

$requestBody->setUserId('User Id value');

$requestBody->setUserEmail('User Email value');

$requestBody->setUserName('User Name value');

$requestBody->setUserPrincipalName('User Principal Name value');

$requestBody->setDeviceModel('Device Model value');

$requestBody->setState(new ComplianceStatus('notapplicable'));

$requestBody->setComplianceGracePeriodExpirationDateTime(new DateTime('2016-12-31T23:56:44.951111-08:00'));



$result = $graphServiceClient->deviceManagement()->deviceCompliancePolicySettingStateSummaries()->byDeviceCompliancePolicySettingStateSummarieId('deviceCompliancePolicySettingStateSummary-id')->deviceComplianceSettingStates()->byDeviceComplianceSettingStateId('deviceComplianceSettingState-id')->patch($requestBody);


```