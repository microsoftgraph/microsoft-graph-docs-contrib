---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EnrollmentConfigurationAssignment();
$requestBody->setOdataType('#microsoft.graph.enrollmentConfigurationAssignment');

$target = new ConfigurationManagerCollectionAssignmentTarget();
$target->setOdataType('microsoft.graph.configurationManagerCollectionAssignmentTarget');

$target->setCollectionId('Collection Id value');


$requestBody->setTarget($target);


$result = $graphServiceClient->deviceManagement()->deviceEnrollmentConfigurations()->byDeviceEnrollmentConfigurationId('deviceEnrollmentConfiguration-id')->assignments()->byEnrollmentConfigurationAssignmentId('enrollmentConfigurationAssignment-id')->patch($requestBody);


```