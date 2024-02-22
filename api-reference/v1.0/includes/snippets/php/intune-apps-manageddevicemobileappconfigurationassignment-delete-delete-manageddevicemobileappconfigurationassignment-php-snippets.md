---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceAppManagement()->mobileAppConfigurations()->byManagedDeviceMobileAppConfigurationId('managedDeviceMobileAppConfiguration-id')->assignments()->byManagedDeviceMobileAppConfigurationAssignmentId('managedDeviceMobileAppConfigurationAssignment-id')->delete()->wait();

```