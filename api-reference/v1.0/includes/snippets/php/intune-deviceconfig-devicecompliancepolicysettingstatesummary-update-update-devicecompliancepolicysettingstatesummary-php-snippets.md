---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceCompliancePolicySettingStateSummary();
$requestBody->setOdataType('#microsoft.graph.deviceCompliancePolicySettingStateSummary');

$requestBody->setSetting('Setting value');

$requestBody->setSettingName('Setting Name value');

$requestBody->setPlatformType(new PolicyPlatformType('iOS'));

$requestBody->setUnknownDeviceCount(2);

$requestBody->setNotApplicableDeviceCount(8);

$requestBody->setCompliantDeviceCount(4);

$requestBody->setRemediatedDeviceCount(5);

$requestBody->setNonCompliantDeviceCount(7);

$requestBody->setErrorDeviceCount(0);

$requestBody->setConflictDeviceCount(3);



$result = $graphServiceClient->deviceManagement()->deviceCompliancePolicySettingStateSummaries()->byDeviceCompliancePolicySettingStateSummaryId('deviceCompliancePolicySettingStateSummary-id')->patch($requestBody);


```