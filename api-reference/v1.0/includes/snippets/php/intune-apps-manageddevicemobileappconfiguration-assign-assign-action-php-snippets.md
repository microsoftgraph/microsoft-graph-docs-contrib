---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AssignPostRequestBody;
use Microsoft\Graph\Generated\Models\ManagedDeviceMobileAppConfigurationAssignment;
use Microsoft\Graph\Generated\Models\AllLicensedUsersAssignmentTarget;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AssignPostRequestBody();
$assignmentsManagedDeviceMobileAppConfigurationAssignment1 = new ManagedDeviceMobileAppConfigurationAssignment();
$assignmentsManagedDeviceMobileAppConfigurationAssignment1->setOdataType('#microsoft.graph.managedDeviceMobileAppConfigurationAssignment');
$assignmentsManagedDeviceMobileAppConfigurationAssignment1->setId('4df81c9c-1c9c-4df8-9c1c-f84d9c1cf84d');
$assignmentsManagedDeviceMobileAppConfigurationAssignment1Target = new AllLicensedUsersAssignmentTarget();
$assignmentsManagedDeviceMobileAppConfigurationAssignment1Target->setOdataType('microsoft.graph.allLicensedUsersAssignmentTarget');
$assignmentsManagedDeviceMobileAppConfigurationAssignment1->setTarget($assignmentsManagedDeviceMobileAppConfigurationAssignment1Target);
$assignmentsArray []= $assignmentsManagedDeviceMobileAppConfigurationAssignment1;
$requestBody->setAssignments($assignmentsArray);


$graphServiceClient->deviceAppManagement()->mobileAppConfigurations()->byManagedDeviceMobileAppConfigurationId('managedDeviceMobileAppConfiguration-id')->assign()->post($requestBody)->wait();

```