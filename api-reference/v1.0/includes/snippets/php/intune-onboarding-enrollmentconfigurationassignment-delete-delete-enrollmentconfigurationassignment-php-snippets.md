---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceManagement()->deviceEnrollmentConfigurations()->byDeviceEnrollmentConfigurationId('deviceEnrollmentConfiguration-id')->assignments()->byEnrollmentConfigurationAssignmentId('enrollmentConfigurationAssignment-id')->delete()->wait();

```