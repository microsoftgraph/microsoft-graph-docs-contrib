---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceComplianceDeviceOverview();
$requestBody->setOdataType('#microsoft.graph.deviceComplianceDeviceOverview');

$requestBody->setPendingCount(12);

$requestBody->setNotApplicableCount(2);

$requestBody->setSuccessCount(12);

$requestBody->setErrorCount(10);

$requestBody->setFailedCount(11);

$requestBody->setLastUpdateDateTime(new \DateTime('2016-12-31T23:58:21.6459442-08:00'));

$requestBody->setConfigurationVersion(4);



$result = $graphServiceClient->deviceManagement()->deviceCompliancePolicies()->byDeviceCompliancePolicyId('deviceCompliancePolicy-id')->deviceStatusOverview()->patch($requestBody);


```