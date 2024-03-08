---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceAppManagement()->mobileApps()->byMobileAppId('mobileApp-id')->assignments()->byMobileAppAssignmentId('mobileAppAssignment-id')->delete()->wait();

```