---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DeviceConfigurationUserStatus();
$requestBody->set@odatatype('#microsoft.graph.deviceConfigurationUserStatus');

$requestBody->setUserDisplayName('User Display Name value');

$requestBody->setDevicesCount(12);

$requestBody->setStatus(new ComplianceStatus('notapplicable'));

$requestBody->setLastReportedDateTime(new DateTime('2017-01-01T00:00:17.7769392-08:00'));

$requestBody->setUserPrincipalName('User Principal Name value');



$result = $graphServiceClient->deviceManagement()->deviceConfigurations()->byDeviceConfigurationId('deviceConfiguration-id')->userStatuses()->byUserStatuseId('deviceConfigurationUserStatus-id')->patch($requestBody);


```