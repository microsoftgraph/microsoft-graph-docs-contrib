---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ManagedDeviceMobileAppConfigurationAssignment();
$requestBody->setOdataType('#microsoft.graph.managedDeviceMobileAppConfigurationAssignment');
$target = new AllLicensedUsersAssignmentTarget();
$target->setOdataType('microsoft.graph.allLicensedUsersAssignmentTarget');
$requestBody->setTarget($target);

$result = $graphServiceClient->deviceAppManagement()->mobileAppConfigurations()->byManagedDeviceMobileAppConfigurationId('managedDeviceMobileAppConfiguration-id')->assignments()->post($requestBody)->wait();

```