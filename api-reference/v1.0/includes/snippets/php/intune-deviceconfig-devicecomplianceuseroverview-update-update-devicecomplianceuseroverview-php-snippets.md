---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\DeviceComplianceUserOverview;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceComplianceUserOverview();
$requestBody->setOdataType('#microsoft.graph.deviceComplianceUserOverview');
$requestBody->setPendingCount(12);
$requestBody->setNotApplicableCount(2);
$requestBody->setSuccessCount(12);
$requestBody->setErrorCount(10);
$requestBody->setFailedCount(11);
$requestBody->setLastUpdateDateTime(new \DateTime('2016-12-31T23:58:21.6459442-08:00'));
$requestBody->setConfigurationVersion(4);

$result = $graphServiceClient->deviceManagement()->deviceCompliancePolicies()->byDeviceCompliancePolicyId('deviceCompliancePolicy-id')->userStatusOverview()->patch($requestBody)->wait();

```