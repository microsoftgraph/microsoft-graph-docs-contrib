---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AssignPostRequestBody;
use Microsoft\Graph\Generated\Models\DeviceConfigurationAssignment;
use Microsoft\Graph\Generated\Models\ConfigurationManagerCollectionAssignmentTarget;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AssignPostRequestBody();
$assignmentsDeviceConfigurationAssignment1 = new DeviceConfigurationAssignment();
$assignmentsDeviceConfigurationAssignment1->setOdataType('#microsoft.graph.deviceConfigurationAssignment');
$assignmentsDeviceConfigurationAssignment1->setId('d59b6342-6342-d59b-4263-9bd542639bd5');
$assignmentsDeviceConfigurationAssignment1Target = new ConfigurationManagerCollectionAssignmentTarget();
$assignmentsDeviceConfigurationAssignment1Target->setOdataType('microsoft.graph.configurationManagerCollectionAssignmentTarget');
$assignmentsDeviceConfigurationAssignment1Target->setCollectionId('Collection Id value');
$assignmentsDeviceConfigurationAssignment1->setTarget($assignmentsDeviceConfigurationAssignment1Target);
$assignmentsArray []= $assignmentsDeviceConfigurationAssignment1;
$requestBody->setAssignments($assignmentsArray);


$result = $graphServiceClient->deviceManagement()->deviceConfigurations()->byDeviceConfigurationId('deviceConfiguration-id')->assign()->post($requestBody)->wait();

```