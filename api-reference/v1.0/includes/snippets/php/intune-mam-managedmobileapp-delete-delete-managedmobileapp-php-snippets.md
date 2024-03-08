---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceAppManagement()->iosManagedAppProtections()->byIosManagedAppProtectionId('iosManagedAppProtection-id')->apps()->byManagedMobileAppId('managedMobileApp-id')->delete()->wait();

```