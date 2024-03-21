---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceAppManagement()->androidManagedAppProtections()->byAndroidManagedAppProtectionId('androidManagedAppProtection-id')->get()->wait();

```