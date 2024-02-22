---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceAppManagement()->mobileAppConfigurations()->byManagedDeviceMobileAppConfigurationId('managedDeviceMobileAppConfiguration-id')->userStatuses()->byManagedDeviceMobileAppConfigurationUserStatusId('managedDeviceMobileAppConfigurationUserStatus-id')->delete()->wait();

```