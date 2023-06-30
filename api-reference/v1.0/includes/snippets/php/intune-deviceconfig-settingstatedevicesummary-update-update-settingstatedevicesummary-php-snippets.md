---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SettingStateDeviceSummary();
$requestBody->set@odatatype('#microsoft.graph.settingStateDeviceSummary');

$requestBody->setSettingName('Setting Name value');

$requestBody->setInstancePath('Instance Path value');

$requestBody->setUnknownDeviceCount(2);

$requestBody->setNotApplicableDeviceCount(8);

$requestBody->setCompliantDeviceCount(4);

$requestBody->setRemediatedDeviceCount(5);

$requestBody->setNonCompliantDeviceCount(7);

$requestBody->setErrorDeviceCount(0);

$requestBody->setConflictDeviceCount(3);



$result = $graphServiceClient->deviceManagement()->deviceConfigurations()->byDeviceConfigurationId('deviceConfiguration-id')->deviceSettingStateSummaries()->byDeviceSettingStateSummarieId('settingStateDeviceSummary-id')->patch($requestBody);


```