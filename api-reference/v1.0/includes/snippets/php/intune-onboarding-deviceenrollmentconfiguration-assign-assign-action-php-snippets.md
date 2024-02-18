---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AssignPostRequestBody();
$enrollmentConfigurationAssignmentsEnrollmentConfigurationAssignment1 = new EnrollmentConfigurationAssignment();
$enrollmentConfigurationAssignmentsEnrollmentConfigurationAssignment1->setOdataType('#microsoft.graph.enrollmentConfigurationAssignment');
$enrollmentConfigurationAssignmentsEnrollmentConfigurationAssignment1->setId('705b021c-021c-705b-1c02-5b701c025b70');
$enrollmentConfigurationAssignmentsEnrollmentConfigurationAssignment1Target = new ConfigurationManagerCollectionAssignmentTarget();
$enrollmentConfigurationAssignmentsEnrollmentConfigurationAssignment1Target->setOdataType('microsoft.graph.configurationManagerCollectionAssignmentTarget');
$enrollmentConfigurationAssignmentsEnrollmentConfigurationAssignment1Target->setCollectionId('Collection Id value');
$enrollmentConfigurationAssignmentsEnrollmentConfigurationAssignment1->setTarget($enrollmentConfigurationAssignmentsEnrollmentConfigurationAssignment1Target);
$enrollmentConfigurationAssignmentsArray []= $enrollmentConfigurationAssignmentsEnrollmentConfigurationAssignment1;
$requestBody->setEnrollmentConfigurationAssignments($enrollmentConfigurationAssignmentsArray);


$graphServiceClient->deviceManagement()->deviceEnrollmentConfigurations()->byDeviceEnrollmentConfigurationId('deviceEnrollmentConfiguration-id')->assign()->post($requestBody)->wait();

```