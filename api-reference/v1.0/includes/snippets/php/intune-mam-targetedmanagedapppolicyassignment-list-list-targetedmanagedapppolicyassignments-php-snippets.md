---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceAppManagement()->iosManagedAppProtections()->byIosManagedAppProtectionId('iosManagedAppProtection-id')->assignments()->get()->wait();

```