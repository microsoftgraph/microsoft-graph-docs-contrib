---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceManagement()->deviceEnrollmentConfigurations()->byDeviceEnrollmentConfigurationId('deviceEnrollmentConfiguration-id')->delete()->wait();

```